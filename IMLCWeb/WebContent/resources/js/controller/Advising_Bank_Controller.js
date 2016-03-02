'use strict';

App.controller('Advising_Bank_Controller', ['$cookies','$http','$scope','$rootScope','$location','$timeout','$state', function($cookies,$http,$scope,$rootScope,$location,$timeout,$state) {
	
	$scope.quantity = 10;//limiting the displaying records in the popup
	//Disabling the back button
	$scope.$on('$locationChangeStart', function (event, next, current) {
		if($cookies.get('key')){
//		if($cookies.get('key')){
		event.preventDefault(); 
	}
	});
	
	//state of the page
	$scope.state_info_name = "advising_bank";
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
	    
	    //This function is to get the selected advising bank from auto population
        $scope.selectedAdvisingIdAction = function(selected) {
            if (selected && selected.title) {
          	  $rootScope.transactionData.advisingBankId = selected.title;
          	  $scope.getBankJsonById($rootScope.transactionData.advisingBankId);
          	$rootScope.transactionData.advisingBankName = $scope.tempBankJson.bankName;
          	$rootScope.transactionData.advisingBankAddress = $scope.tempBankJson.bankAddress;
            } else {
              console.log('cleared');
            }
          };
          
          //This function is to get the selected advising Through bank from auto population
          $scope.selectedAdvisingThroughIdAction = function(selected) {
              if (selected && selected.title) {
            	  $rootScope.transactionData.adviseThroughBankID = selected.title;
            	  $scope.getBankJsonById($rootScope.transactionData.adviseThroughBankID);
            	$rootScope.transactionData.adviseThroughBankName = $scope.tempBankJson.bankName;
            	$rootScope.transactionData.adviseThroughBankAddress = $scope.tempBankJson.bankAddress;
              } else {
                console.log('cleared');
              }
            };
            
            //This function is to get the selected Reimbursement bank from auto population
            $scope.selectedReimbursementBankIdAction = function(selected) {
                if (selected && selected.title) {
              	  $rootScope.transactionData.reimbursementBankID = selected.title;
              	  $scope.getBankJsonById($rootScope.transactionData.reimbursementBankID);
              	$rootScope.transactionData.remibursementBankName = $scope.tempBankJson.bankName;
              	$rootScope.transactionData.remibursementBankAddress = $scope.tempBankJson.bankAddress;
                } else {
                  console.log('cleared');
                }
              };
              //This function is to get the selected Reimbursement bank from auto population
              $scope.selectedConfirmingBankIdAction = function(selected) {
                  if (selected && selected.title) {
                	  $rootScope.transactionData.confirmingBankdID = selected.title;
                	  $scope.getBankJsonById($rootScope.transactionData.confirmingBankdID);
                	$rootScope.transactionData.confirmingBankName = $scope.tempBankJson.bankName;
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
        		  $rootScope.transactionData.advisingBankId = bank.bankId;
        		  $scope.advisingBank = bank;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'advisingBankId', $scope.advisingBank);
        			$rootScope.transactionData.advisingBankName = bank.bankName;
                  	$rootScope.transactionData.advisingBankAddress = bank.bankAddress;
        	  }
        	  if($scope.popupName == constants.AdvisingThrough){
        		  $rootScope.transactionData.adviseThroughBankID = bank.bankId;
        		  $scope.advisingThroughBank = bank;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'adviseThroughBankID', $scope.advisingThroughBank);
        			$rootScope.transactionData.adviseThroughBankName = bank.bankName;
                  	$rootScope.transactionData.adviseThroughBankAddress = bank.bankAddress;
        	  }
        	  if($scope.popupName == constants.Reimbursement){
        		  $rootScope.transactionData.reimbursementBankID = bank.bankId;
        		  $scope.reimbursementBank = bank;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'reimbursementBankID', $scope.reimbursementBank);
        			$rootScope.transactionData.remibursementBankName = bank.bankName;
                  	$rootScope.transactionData.remibursementBankAddress = bank.bankAddress;
        	  }
        	  if($scope.popupName == constants.confirming){
        		  $rootScope.transactionData.confirmingBankdID = bank.bankId;
        		  $scope.confirmingBank = bank;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'confirmingBankID', $scope.confirmingBank);
        			$rootScope.transactionData.confirmingBankName = bank.bankName;
        	  }
            	  
          };
          
          //This is to get the bank details
          $scope.getBankJsonById = function(id) {
        		  angular.forEach($rootScope.bankJsonList, function(obj, key)
        				  {
		           	   		if(obj.bankId == id)
		           	   			{
		           	   			$scope.tempBankJson = obj;
		           	   			}
		           	     });
          };
          
          //Save the record     
          $scope.saveOrUpdate = function() {
        	  $state.go('document');
          };
          
	// getting the all banks          
	          $scope.init = function() {
	        	  $scope.showloader();
	              $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.BankController+'/getAllBanks').success(function(data){
	            	  $rootScope.bankJsonList  = data;//getting all lookups
	            	  if($rootScope.transactionData.importLCIssueId){
	            		  if($rootScope.transactionData.advisingBankId){
	            			  $scope.getBankJsonById($rootScope.transactionData.advisingBankId);
	            		  $scope.$broadcast('angucomplete-alt:changeInput', 'advisingBankId', $scope.tempBankJson);
	            		  }
	            		  if($rootScope.transactionData.adviseThroughBankID){
	            			  $scope.getBankJsonById($rootScope.transactionData.adviseThroughBankID);
	            		  $scope.$broadcast('angucomplete-alt:changeInput', 'adviseThroughBankID', $scope.tempBankJson);
	            		  }
	            		  if($rootScope.transactionData.reimbursementBankID){
	            			  $scope.getBankJsonById($rootScope.transactionData.reimbursementBankID);
	            		  $scope.$broadcast('angucomplete-alt:changeInput', 'reimbursementBankID', $scope.tempBankJson);
	            		  }
	            		  if($rootScope.transactionData.confirmingBankdID){
	            			  $scope.getBankJsonById($rootScope.transactionData.confirmingBankdID);
	            		  $scope.$broadcast('angucomplete-alt:changeInput', 'confirmingBankID', $scope.tempBankJson);
	            		  }
	            	  }
	            	    $scope.hideloader();
	              });
	          };
	          
	      	
	          $scope.init();
			
	}]);

