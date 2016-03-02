'use strict';

App.controller('Draft_Details_Controller', ['$cookies','$http','$scope','$rootScope','$location','$timeout','$state', function($cookies,$http,$scope,$rootScope,$location,$timeout,$state) {
	
	$scope.quantity = 10;//limiting the displaying records in the popup
	//Disabling the back button
	$scope.$on('$locationChangeStart', function (event, next, current) {
		if($cookies.get('key')){
//		if($cookies.get('key')){
		event.preventDefault(); 
	}
	});
	
	//state of the page
	$scope.state_info_name = "draft_details";
//	$rootScope.transactionData = {};
	$rootScope.transactionData.interestRate = $rootScope.tempImportLCObj.overdue_Intereset;
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
	    
          
          //This function is to get the selected available bank from auto population
          $scope.selectedAvailableBankIdAction = function(selected) {
              if (selected && selected.title) {
            	  $rootScope.transactionData.availableWithBankID = selected.title;
            	  $scope.getAvailableBankDetails(selected.title);
            	  $rootScope.transactionData.availableWithBankName = $scope.tempBankJson.bankName;
            	$rootScope.transactionData.availableWithBankAddress = $scope.tempBankJson.bankAddress;
              } else {
                console.log('cleared');
              }
            };
            
          //This is to get the Bank details
            $scope.getAvailableBankDetails = function(id) {
            	angular.forEach($rootScope.bankJsonList, function(obj, key)
      				  {
		           	   		if(obj.bankId == id)
		           	   			{
		           	   			$scope.tempBankJson = obj;
		           	   			}
		           	     });
            };
                
          //onSelect bank from the bank table in the popup
          $scope.onselectAvailableBankId = function(bank) {
        	  $('#bankListPopupId').modal('hide');
        		  $rootScope.transactionData.availableWithBankID = bank.bankId;
        		  $scope.availableBank = bank;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'availableBankId', $scope.availableBank);
        			$rootScope.transactionData.availableWithBankName = bank.bankName;
                  	$rootScope.transactionData.availableWithBankAddress = bank.bankAddress;
          };
          
          //onchange tenor type value
          $scope.onChangeTenorType = function(){
        	  if($rootScope.transactionData.tenorType == constants.Deferred){
        		  angular.element('#deferredPopupBtnId').trigger('click');
        	  }
          };
			
          //Save the record     
          $scope.saveOrUpdate = function() {
        	  $state.go('margin_details');
          };
          
          //init function to populate the auto populated things
          $scope.init = function(){
        	  if($rootScope.transactionData.availableWithBankID){
        		  $scope.getAvailableBankDetails($rootScope.transactionData.availableWithBankID);
        		  $scope.availableBank = $scope.tempBankJson;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'availableBankId', $scope.tempBankJson);
        	  }
          };
          
          $scope.init();
	}]);

