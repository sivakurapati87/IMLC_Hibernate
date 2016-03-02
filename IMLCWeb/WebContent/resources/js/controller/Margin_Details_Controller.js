'use strict';

App.controller('Margin_Details_Controller', ['$cookies','$http','$scope','$rootScope','$location','$timeout', function($cookies,$http,$scope,$rootScope,$location,$timeout) {
	
	$scope.quantity = 10;//limiting the displaying records in the popup
	//Disabling the back button
	$scope.$on('$locationChangeStart', function (event, next, current) {
		if($cookies.get('key')){
//		if($cookies.get('key')){
		event.preventDefault(); 
	}
	});
	
	//state of the page
	$scope.state_info_name = "margin_details";
//	$rootScope.transactionData = {};
//	$rootScope.transactionData = $rootScope.transactionData;
	//For loading symbol
	 	$scope.loader = {
		      loading: false,
		    };
	 
	    $scope.showloader = function(){
	        $scope.loader.loading = true ;
	    }
	    $scope.hideloader = function(){
	        $scope.loader.loading = false ;
	    }
	    
	  //Save the record     
        $scope.saveOrUpdate = function() {
        	if($rootScope.transactionData.strLatestShipmentDate){
        		$rootScope.transactionData.strLatestShipmentDate=$scope.formatteddate($rootScope.transactionData.strLatestShipmentDate);
      	  	}
        	if($rootScope.transactionData.strLatestShipmentDate){
        		$rootScope.transactionData.strLatestShipmentDate=$scope.formatteddate($rootScope.transactionData.strLatestShipmentDate);
      	  	}
        	if($rootScope.transactionData.deferredPaymentJson && $rootScope.transactionData.deferredPaymentJson.strDate){
        		$rootScope.transactionData.deferredPaymentJson.strDate = $scope.formatteddate($rootScope.transactionData.deferredPaymentJson.strDate);
        	}
        	$rootScope.transactionData.isFinalSubmit = true;
            $http.post(constants.localhost_port+"/"+constants.web_context+'/PrimaryDetailController/submit', $rootScope.transactionData).success(function(data) {
          	  if(data){
	            		$rootScope.transactionData={};
	            		$rootScope.isDisabled = false;
	        			$rootScope.isVerifyBlockDisplay = false;
	        			$rootScope.isApproveBlockDisplay = false;
	        			$rootScope.isDeletedBlockDisplay = false;
	        			$rootScope.isViewMode = false;
	            		$scope.$broadcast('angucomplete-alt:clearInput');
	            	 
          	  }else{
          		  //This is to display the error message
          		  $scope.error="Expiry Date should be greater than Issue Date";
          		  angular.element('#erroPopupId').trigger('click');
          	  }
            }).error(function() {
          	  console.error('Could not save or update pf');
            });
        };
        
        //This is the function to get the formatted date
        $scope.formatteddate = function(requiredDate){
      	  var expDate = new Date(requiredDate);
      	 var month = '' + (expDate.getMonth() + 1);
           var day = '' + expDate.getDate();
          var  year = expDate.getFullYear();
      	  if (month.length < 2) month = '0' + month;
      	    if (day.length < 2) day = '0' + day;
      	    return [year, month, day].join('-');
        };
        
      //This function is to submit status code
      	$scope.submitStatusCodeAction = function(statuscode){
      		if(statuscode == constants.Verify){
      			$rootScope.transactionData.statusId = constants.Verified;
      		}
      		if(statuscode == constants.Reject){
      			$rootScope.transactionData.statusId = constants.Rejected;
      		}
      		if(statuscode == constants.Approve){
      			$rootScope.transactionData.statusId = constants.Approved;
      		}
      		if(statuscode == constants.Delete){
      			$rootScope.transactionData.statusId = constants.Deleted;
      		}
      		if(statuscode == constants.Submit){
      			$rootScope.transactionData.statusId = constants.Confirmed;
      		}
      		
      		$scope.saveOrUpdate();
      	};
	}]);

