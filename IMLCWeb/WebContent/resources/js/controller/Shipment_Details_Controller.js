'use strict';

App.controller('Shipment_Details_Controller', ['$cookies','$http','$scope','$rootScope','$location','$timeout', function($cookies,$http,$scope,$rootScope,$location,$timeout) {
	
	$scope.quantity = 10;//limiting the displaying records in the popup
	//Disabling the back button
	$scope.$on('$locationChangeStart', function (event, next, current) {
		if($cookies.get('key')){
//		if($cookies.get('key')){
		event.preventDefault(); 
	}
	});
	
	//state of the page
	$scope.state_info_name = "shipment_details";
//	$scope.primary_Details_Obj = {};
	$scope.primary_Details_Obj = $rootScope.transactionData;
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
	    
	    //This function is to get the selected advising bank from auto population
        $scope.selectedAdvisingIdAction = function(selected) {
            if (selected && selected.title) {
          	  $scope.primary_Details_Obj.advisingBankId = selected.title;
          	  $scope.getBankJsonById($scope.primary_Details_Obj.advisingBankId);
          	$scope.primary_Details_Obj.advisingBankName = $scope.tempBankJson.bankName;
          	$scope.primary_Details_Obj.advisingBankAddress = $scope.tempBankJson.bankAddress;
            } else {
              console.log('cleared');
            }
          };
          
          //This function is to get the selected advising Through bank from auto population
          $scope.selectedAdvisingThroughIdAction = function(selected) {
              if (selected && selected.title) {
            	  $scope.primary_Details_Obj.adviseThroughBankID = selected.title;
            	  $scope.getBankJsonById($scope.primary_Details_Obj.adviseThroughBankID);
            	$scope.primary_Details_Obj.adviseThroughBankName = $scope.tempBankJson.bankName;
            	$scope.primary_Details_Obj.adviseThroughBankAddress = $scope.tempBankJson.bankAddress;
              } else {
                console.log('cleared');
              }
            };
            
            //This function is to get the selected Reimbursement bank from auto population
            $scope.selectedReimbursementBankIdAction = function(selected) {
                if (selected && selected.title) {
              	  $scope.primary_Details_Obj.reimbursementBankID = selected.title;
              	  $scope.getBankJsonById($scope.primary_Details_Obj.reimbursementBankID);
              	$scope.primary_Details_Obj.remibursementBankName = $scope.tempBankJson.bankName;
              	$scope.primary_Details_Obj.remibursementBankAddress = $scope.tempBankJson.bankAddress;
                } else {
                  console.log('cleared');
                }
              };
              //This function is to get the selected Reimbursement bank from auto population
              $scope.selectedConfirmingBankIdAction = function(selected) {
                  if (selected && selected.title) {
                	  $scope.primary_Details_Obj.confirmingBankdID = selected.title;
                	  $scope.getBankJsonById($scope.primary_Details_Obj.confirmingBankdID);
                	$scope.primary_Details_Obj.confirmingBankName = $scope.tempBankJson.bankName;
                  } else {
                    console.log('cleared');
                  }
                };
                
	    $scope.openAdvisingBankPopup = function(popupName){
	    	$scope.popupName = popupName;//To know the type of popup
	    	  angular.element('#bankListPopup').trigger('click');
	    };
                
          //onSelect bank from the bank table in the popup
          $scope.onselectBankId = function(bank) {
        	  $('#bankListPopupId').modal('hide');
        	  if($scope.popupName == constants.Advising){
        		  $scope.primary_Details_Obj.advisingBankId = bank.bankId;
        		  $scope.advisingBank = bank;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'advisingBankId', $scope.advisingBank);
        			$scope.primary_Details_Obj.advisingBankName = bank.bankName;
                  	$scope.primary_Details_Obj.advisingBankAddress = bank.bankAddress;
        	  }
        	  if($scope.popupName == constants.AdvisingThrough){
        		  $scope.primary_Details_Obj.adviseThroughBankID = bank.bankId;
        		  $scope.advisingThroughBank = bank;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'adviseThroughBankID', $scope.advisingThroughBank);
        			$scope.primary_Details_Obj.adviseThroughBankName = bank.bankName;
                  	$scope.primary_Details_Obj.adviseThroughBankAddress = bank.bankAddress;
        	  }
        	  if($scope.popupName == constants.Reimbursement){
        		  $scope.primary_Details_Obj.reimbursementBankID = bank.bankId;
        		  $scope.reimbursementBank = bank;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'reimbursementBankId', $scope.reimbursementBank);
        			$scope.primary_Details_Obj.remibursementBankName = bank.bankName;
                  	$scope.primary_Details_Obj.remibursementBankAddress = bank.bankAddress;
        	  }
        	  if($scope.popupName == constants.confirming){
        		  $scope.primary_Details_Obj.confirmingBankdID = bank.bankId;
        		  $scope.confirmingBank = bank;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'confirmingBankID', $scope.confirmingBank);
        			$scope.primary_Details_Obj.confirmingBankName = bank.bankName;
        	  }
            	  
          };
          
          //This is to get the bank details
          $scope.getBankJsonById = function(id) {
        		  angular.forEach($scope.bankJsonList, function(obj, key)
        				  {
		           	   		if(obj.bankId == id)
		           	   			{
		           	   			$scope.tempBankJson = obj;
		           	   			}
		           	     });
          };
          
          
	// getting the all lookup       
	          $scope.getAllLookup = function() {
	        	  $scope.showloader();
	              $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.IncotermsController+'/getAllIncoterms').success(function(data){
	            	  $scope.incotermJsonList  = data;//getting all lookups
	            	  $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.IncotermsController+'/getAllIncoterms').success(function(result){
		            	  $scope.commodityJsonList  = result;//getting all lookups
		            	    $scope.hideloader();
		              });
	              });
	          };
	          
	      	
	          $scope.getAllLookup();
			
	}]);

