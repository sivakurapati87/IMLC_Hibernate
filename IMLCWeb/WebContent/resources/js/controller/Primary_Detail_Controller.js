'use strict';

App.controller('Primary_Detail_Controller', ['$cookies','$http','$scope','$rootScope','Global_Parameter_Service','$location','$timeout','$state', function($cookies,$http,$scope,$rootScope,Global_Parameter_Service,$location,$timeout,$state) {
	
	$scope.quantity = 10;//limiting the displaying records in the popup
	//Disabling the back button
	$scope.$on('$locationChangeStart', function (event, next, current) {
		if($cookies.get('key')){
//		if($cookies.get('key')){
		event.preventDefault(); 
	}
	});
	
	
	//state of the page
	$scope.state_info_name = "primary_details";
	//Mode of Transaction
	$scope.selectedTypeOfMode = null;
	
	//transaction Reference Number
	$scope.transactionRefNumber = null;
	//verify or reject block display
	$scope.isVerifyBlockDisplay = false;
	//approve or reject block display
	$scope.isApproveBlockDisplay = false;
	//deleted block display
	$scope.isDeletedBlockDisplay = false;
	//view block display
	$scope.isViewMode = false;
	
	//OnSelect Radio button
	$scope.onclickSelectedTypeOfMode = function(){
		// If selected radio button is create new
		if($scope.selectedTypeOfMode == constants.Create_New){
			$scope.isDisabled = false;
			$scope.isVerifyBlockDisplay = false;
			$scope.isApproveBlockDisplay = false;
			$scope.isDeletedBlockDisplay = false;
			 $http.get(constants.localhost_port+"/"+constants.web_context+'/'+constants.PrimaryDetailController+'/init_ImportLCIssueJson').success(function(data){
				 $scope.primary_Details_Obj  = data;//getting all 
           	$scope.$broadcast('angucomplete-alt:clearInput');//To clear the angu complete values
             });
		}
		// If selected radio button is cloning
		if($scope.selectedTypeOfMode == constants.Create_from_an_existing){
			$scope.isDisabled = false;
			$scope.isVerifyBlockDisplay = false;
			$scope.isApproveBlockDisplay = false;
			$scope.isDeletedBlockDisplay = false;
			$scope.transactionPickMode = null;
			angular.element('#cloneTransactionModePopupId').trigger('click');
		}
		// If selected radio button is verify
		if($scope.selectedTypeOfMode == constants.Verify){
			$scope.isDisabled = true;
			$scope.isVerifyBlockDisplay = true;
			$scope.isApproveBlockDisplay = false;
			$scope.isDeletedBlockDisplay = false;
			 $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.PrimaryDetailController+'/getAllPrimaryDetailsByStatusId/'+constants.Confirmed).success(function(data){
				 if(data){
	           		 $scope.primaryDataList  = data;//getting all primary Data
	              	  angular.element('#transactionPopup').trigger('click');
	           	 }else{
	       		  $scope.error="No Records to Verify";
	       		  angular.element('#erroPopupId').trigger('click');
	           	 }
             });
		}
		// If selected radio button is edit
		if($scope.selectedTypeOfMode == constants.Edit){
			$scope.isDisabled = false;
			$scope.isVerifyBlockDisplay = false;
			$scope.isApproveBlockDisplay = false;
			$scope.isDeletedBlockDisplay = false;
			 $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.PrimaryDetailController+'/getAllPrimaryDetailsByStatusId/'+constants.Rejected).success(function(data){
				 if(data){
	           		 $scope.primaryDataList  = data;//getting all primary Data
	              	  angular.element('#transactionPopup').trigger('click');
	           	 }else{
	       		  $scope.error="No Records to Edit";
	       		  angular.element('#erroPopupId').trigger('click');
	           	 }
             });
		}
		// If selected radio button is approve
		if($scope.selectedTypeOfMode == constants.Approve){
			$scope.isDisabled = true;
			$scope.isVerifyBlockDisplay = false;
			$scope.isApproveBlockDisplay = true;
			$scope.isDeletedBlockDisplay = false;
			 $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.PrimaryDetailController+'/getAllPrimaryDetailsByStatusId/'+constants.Verified).success(function(data){
				 if(data){
	           		 $scope.primaryDataList  = data;//getting all primary Data
	              	  angular.element('#transactionPopup').trigger('click');
	           	 }else{
	       		  $scope.error="No Records to Approve";
	       		  angular.element('#erroPopupId').trigger('click');
	           	 }
             });
		}
		// If selected radio button is delete
		if($scope.selectedTypeOfMode == constants.Delete){
			$scope.isDisabled = true;
			$scope.isVerifyBlockDisplay = false;
			$scope.isApproveBlockDisplay = false;
			$scope.isDeletedBlockDisplay = true;
			 $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.PrimaryDetailController+'/getAllPrimaryDetailsByCustomerOrBenificiaryId?customerId='+0+'&benificiaryId='+null+'&statusId='+0).success(function(data){
           	 if(data){
           		 $scope.primaryDataList  = data;//getting all primary Data
              	  angular.element('#transactionPopup').trigger('click');
           	 }else{
       		  $scope.error="No Records to delete";
       		  angular.element('#erroPopupId').trigger('click');
           	 }
           	  
             });
		}
		// If selected radio button is view
		if($scope.selectedTypeOfMode == constants.View){
			$scope.isDisabled = true;
			$scope.isVerifyBlockDisplay = false;
			$scope.isApproveBlockDisplay = false;
			$scope.isDeletedBlockDisplay = false;
			$scope.isViewMode = true;
			 $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.PrimaryDetailController+'/getAllPrimaryDetailsByCustomerOrBenificiaryId?customerId='+0+'&benificiaryId='+null+'&statusId='+0).success(function(data){
           	 if(data){
           		 $scope.primaryDataList  = data;//getting all primary Data
              	  angular.element('#transactionPopup').trigger('click');
           	 }else{
       		  $scope.error="No Records to view";
       		  angular.element('#erroPopupId').trigger('click');
           	 }
           	  
             });
		}
	};
	
	//This function is to get the popup based on cloning transaction number mode
	$scope.onSelectTransactionPickupMode = function(){
		if($scope.transactionPickMode){
			//if mode is transaction
			if($scope.transactionPickMode == 27){
				 $('#cloneTransactionModePopup').modal('hide');
				angular.element('#pickTransactionPopupId').trigger('click');
			}
			//if mode is customerId
			if($scope.transactionPickMode == 28){
				$scope.isCustomerIdBlockDisplay = true;
				$scope.isBenificiaryIdBlockDisplay = false;
			}
			//if mode is benificiaryId
			if($scope.transactionPickMode == 29){
				$scope.isBenificiaryIdBlockDisplay = true;
				$scope.isCustomerIdBlockDisplay = false;
			}
		}
	};
	
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
	    
	    
	// getting the lookup values from web bean          
	          $scope.getlookupInfo = function() {
	        	  $scope.showloader();
	              $http.get(constants.localhost_port+"/"+constants.web_context+'/PrimaryDetailController/init').success(function(data){
	            	  $rootScope.lookupbean  = data;//getting all lookups
	            	    $scope.hideloader();
	              });
	          };
	          
	          //This is to display the transaction popup based on selected cloning customerId
	          $scope.onselectClone_CustomerRadioId = function(customerId){
	        	  $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.PrimaryDetailController+'/getAllPrimaryDetailsByCustomerOrBenificiaryId?customerId='+customerId+'&benificiaryId='+null+'&statusId='+constants.Confirmed).success(function(data){
	        		  $('#cloneTransactionModePopup').modal('hide');
	        		  if(data){
	            		  $scope.primaryDataList  = data;//getting all primary Data
		            	  angular.element('#transactionPopup').trigger('click');
	            	  }else{
	            		  $scope.error="No Record found with this customerId";
	            		  angular.element('#erroPopupId').trigger('click');
	            	  }
	              });
	          };
	          
	        //This is to display the transaction popup based on selected cloning benificiaryId
	          $scope.onselectClone_BenificiaryRadioId = function(benificiaryId){
	        	  $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.PrimaryDetailController+'/getAllPrimaryDetailsByCustomerOrBenificiaryId?customerId='+0+'&benificiaryId='+benificiaryId+'&statusId='+constants.Confirmed).success(function(data){
	        		  $('#cloneTransactionModePopup').modal('hide');
	        		  if(data){
	            		  $scope.primaryDataList  = data;//getting all primary Data
		            	  angular.element('#transactionPopup').trigger('click');
	            	  }else{
	            		  $scope.error="No Record found with this benificiaryId";
	            		  angular.element('#erroPopupId').trigger('click');
	            	  }
	              });
	          };
	          
	          //This is to get the list of templates of a product
	          $scope.onchangeProductId = function() {
	        	  if($scope.primary_Details_Obj.productID){
	              $http.get(constants.localhost_port+"/"+constants.service_context+'/ImportLCGlobalParameterDeclarationController/findTemplateTypesByProductId/'+$scope.primary_Details_Obj.productID).success(function(data){
	            	  if(data){
	            		  $scope.lookupbean.typeOfLCList = data;
	            		  $('#productIdsListId').modal('hide');
	            	  }else{
	            		  $scope.lookupbean.typeOfLCList = {};
	            		  angular.element('#productIdErrorPopupId').trigger('click');
	            	  }
	              });}
	          };
	          
	          
	          //onSelect ProductId from the productIds table
	          $scope.onselectProductId = function(productId) {
	        		  $scope.primary_Details_Obj.productID = productId;
	        		  $scope.onchangeProductId();
	          };
	          
	          
	          //This function is to get the Global Parameter Info
	          $scope.getGlobalParameterInfo = function() {
	        	  if($scope.primary_Details_Obj.productID && $scope.primary_Details_Obj.type_of_LC){
	              $http.get(constants.localhost_port+"/"+constants.service_context+'/ImportLCGlobalParameterDeclarationController/findGlobalParameterByProductId_TemplateType?productId='+$scope.primary_Details_Obj.productID+"&template="+$scope.primary_Details_Obj.type_of_LC).success(function(data){
	            	  if(data){
	            		  $scope.tempImportLCObj=data;
	            		  $scope.primary_Details_Obj.tolerance_Min = data.tolerance_Min;
	            		  $scope.primary_Details_Obj.tolerance_Max = data.tolerance_Max;
	            		  $scope.tolerance_Max = data.tolerance_Max;
	            		  $scope.findRiskAmount();
	            	  }else{
	            		  $scope.tempImportLCObj={}; 
	            	  }
	              });}
	          };
	          
	          
	          //This is to get the customer details
	          $scope.getCustomerInfoById = function() {
	        	  if($scope.primary_Details_Obj.customerId){
	              $http.get(constants.localhost_port+"/"+constants.service_context+'/CustomerController/getCustomerInfoByCustomerId/'+$scope.primary_Details_Obj.customerId).success(function(data){
	            	 if(data){
	            	  $scope.customer= data;
	            	  $scope.$broadcast('angucomplete-alt:changeInput', 'customerId', $scope.customer);
	            	  $scope.primary_Details_Obj.customerName= $scope.customer.customerName;
	            	  $scope.primary_Details_Obj.customerAddress= $scope.customer.customerAddress;
	            	  if($scope.tempImportLCObj.contingent_Liability == constants.Yes){
	            		  $scope.primary_Details_Obj.liabilityAccountsImportLC =   $scope.customer.liabilityAccountsImportLC;
	            	  }
	            	  }else{
	            		  angular.element('#customerPopupId').trigger('click');
	            	  }
	              });}
	          };
	          
	          
	          //This function is to get the selected customerId from auto population
	          $scope.selectedCustomerIdAction = function(selected) {
	              if (selected && selected.title) {
	            	  $scope.primary_Details_Obj.customerId = selected.title;
	            	  $scope.getCustomerInfoById();
	              } else {
	                console.log('cleared');
	              }
	            };
	          
	        //onSelect customer from the Customer table
	          $scope.onselectCustomerId = function(customer) {
	        		  $scope.primary_Details_Obj.customerId = customer.customerId;
	        		  $scope.customer= customer;
	        		  $scope.$broadcast('angucomplete-alt:changeInput', 'customerId', $scope.customer);
	            	  $scope.primary_Details_Obj.customerName= $scope.customer.customerName;
	            	  $scope.primary_Details_Obj.customerAddress= $scope.customer.customerAddress;
	            	  $('#customersListId').modal('hide');
	            	  if($scope.tempImportLCObj.contingent_Liability == constants.Yes){
	            		  $scope.primary_Details_Obj.liabilityAccountsImportLC =   $scope.customer.liabilityAccountsImportLC;
	            	  }
	          };
	          
	          
	          //findout the risk amount
	          $scope.findRiskAmount=function(){
	        	  if( $scope.primary_Details_Obj.tolerance_Max){
	        		  $scope.primary_Details_Obj.risk_Amount= parseInt($scope.primary_Details_Obj.lCAmount) + parseInt(($scope.primary_Details_Obj.tolerance_Max/100) *  $scope.primary_Details_Obj.lCAmount);
	        	  }else{
	        		  $scope.primary_Details_Obj.risk_Amount = $scope.primary_Details_Obj.max_Credit_Amount;
	        	  }
	        	  $scope.findForexRates();
	          }
	          
	          //check the lc amount value with limit available for utilization
	          $scope.checkLCAmount_With_LimitAvailableForUtil=function(){
	        	  $scope.findRiskAmount();
	        	  if($scope.primary_Details_Obj.lcAmountCurrency && $scope.primary_Details_Obj.lcAmountCurrency == constants.INR){
	        		  if($scope.primary_Details_Obj.lCAmount){//checking with the lc amount
	        			  if(parseInt($scope.primary_Details_Obj.lCAmount) > parseInt($scope.primary_Details_Obj.limitAvailable_For_Utilization)){
	        				  $scope.error= "LC Amount should be less than Limit Available for Utilization";
	                		  angular.element('#erroPopupId').trigger('click');
	        			  }
	        		  }
	        	  }else{
	        		  if($scope.primary_Details_Obj.lCAmount_Domestic_Currency){//checking with the lc amount in domestic currency
	        			  if(parseInt($scope.primary_Details_Obj.lCAmount_Domestic_Currency) > parseInt($scope.primary_Details_Obj.limitAvailable_For_Utilization)){
	        				  $scope.error= "LC Amount should be less than Limit Available for Utilization";
	                		  angular.element('#erroPopupId').trigger('click');
	        			  }
	        		  }
	        	  }
	          };
	          
	          //In cloning, if tolerance max is greater than cloning tolerance max
	          $scope.isGreaterThanPrevious = function(){
	        	  $scope.findRiskAmount();
	        	  if(($scope.primary_Details_Obj.tolerance_Max && $scope.tolerance_Max)){
	        		 if(parseInt($scope.primary_Details_Obj.tolerance_Max)>parseInt($scope.tolerance_Max)) {
	           		  $scope.error="Tolerance % higher than what is mentioned at Instrument Level";
            		  angular.element('#erroPopupId').trigger('click');
	        		 }
//	        		 else if(parseInt($scope.primary_Details_Obj.tolerance_Min)>parseInt($scope.tolerance_Min)) {
//		           		  $scope.error="Tolerance % higher than what is mentioned at Instrument Level";
//	            		  angular.element('#erroPopupId').trigger('click');
//		        		 }
	        	  }
	          };
	          
	          //Get the forex rates based on the selected currency code
	          $scope.findForexRates = function(){
	        	  angular.forEach($scope.lookupbean.lcAmountList, function(obj, key){
		           	   if(obj.currencyCode == $scope.primary_Details_Obj.lcAmountCurrency)
		           		   {
		           		$scope.primary_Details_Obj.lCAmount_Domestic_Currency = parseInt(obj.forexRate)*$scope.primary_Details_Obj.lCAmount;
		           		$scope.primary_Details_Obj.exchange_Rate = obj.forexRate;
		           		}
		           	     });
	          }
	          
	          //Getting Benificiery Info
	          $scope.getBenificieryInfo = function() {
	        	  if($scope.primary_Details_Obj.counterpartyId){
	              $http.get(constants.localhost_port+"/"+constants.service_context+'/CounterPartyController/getCounterPartyByCounterPartyId/'+$scope.primary_Details_Obj.counterpartyId).success(function(data){
	            	  if(data){
	            	  $scope.counterParty= data;
            		  $scope.$broadcast('angucomplete-alt:changeInput', 'counterpartyId', $scope.counterParty);
	            	  $scope.primary_Details_Obj.counterpartyName= $scope.counterParty.counterpartyName;
	            	  $scope.primary_Details_Obj.counterpartyAddress= $scope.counterParty.counterpartyAddress;
	            	  }else{
	            		  angular.element('#benificieryPopupId').trigger('click');
	            	  }
	              });}
	          };
	          
	          //This function is to get the selected beneficiery from auto population
	          $scope.selectedBenificieryIdAction = function(selected) {
	        	  if (selected && selected.title) {
	            	  $scope.primary_Details_Obj.counterpartyId = selected.title;
	            	  $scope.getBenificieryInfo();
	              } else {
	                console.log('cleared');
	              }
	            };
	          
	          //onSelect counterparty from the Benificiery table
	          $scope.onselectBenificieryId = function(counterparty) {
	        	  //putting the selected counterparty to the bean
	        	  $scope.counterParty= counterparty;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'counterpartyId', $scope.counterParty);
	        	  $scope.primary_Details_Obj.counterpartyId = counterparty.counterpartyId;
            	  $scope.primary_Details_Obj.counterpartyName= $scope.counterParty.counterpartyName;
            	  $scope.primary_Details_Obj.counterpartyAddress= $scope.counterParty.counterpartyAddress;
            	  $('#counterpartyListId').modal('hide');
	          };
	          
	          //This is the function to get the formatted date
	          $scope.formatteddate = function(){
	        	  var expDate = new Date($scope.primary_Details_Obj.strExpiry_Date);
	        	 var month = '' + (expDate.getMonth() + 1);
	             var day = '' + expDate.getDate();
	            var  year = expDate.getFullYear();
	        	  if (month.length < 2) month = '0' + month;
	        	    if (day.length < 2) day = '0' + day;
	        	    $scope.primary_Details_Obj.strExpiry_Date =  [year, month, day].join('-');
	          };
	          
	     //Save the record     
	          $scope.saveOrUpdate = function() {
	        	  $scope.formatteddate();
	        	  if($scope.selectedTypeOfMode == constants.Edit || $scope.selectedTypeOfMode == constants.Create_New){
	        		  $scope.primary_Details_Obj.statusId = constants.Confirmed;
	        	  }
	              $http.post(constants.localhost_port+"/"+constants.web_context+'/PrimaryDetailController/submit', $scope.primary_Details_Obj).success(function(data) {
	            	  if(data){
	            		  $rootScope.transactionData = $scope.primary_Details_Obj;
	            		  $scope.getlookupInfo();
		            		$scope.selectedTypeOfMode = null;
		            		$scope.transactionRefNumber = null;
		            		$scope.primary_Details_Obj={};
		            		$scope.tolerance_Max = null;
		            		$scope.isDisabled = false;
		        			$scope.isVerifyBlockDisplay = false;
		        			$scope.isApproveBlockDisplay = false;
		        			$scope.isDeletedBlockDisplay = false;
		        			$scope.isViewMode = false;
		            		$scope.$broadcast('angucomplete-alt:clearInput');
		            	  angular.element('#successBlockId').trigger('click');
		            	 
	            	  }else{
	            		  //This is to display the error message
	            		  $scope.error="Expiry Date should be greater than Issue Date";
	            		  angular.element('#erroPopupId').trigger('click');
	            	  }
	              }).error(function() {
	            	  console.error('Could not save or update pf');
	              });
	          };
	          
	          //This function is to navigate to another page after transaction has done
	          $scope.onClickSuccessOkAction = function(){
	        	  $('#productIdsListId').modal('hide');
	        	  $('.modal-backdrop').remove();
	        	  $timeout(function() {//wait for some time to redirect to another page
//	        		  $location.path("/jasper_Text_Report");
//	        		  $state.go('jasper_Text_Report');
	        		}, 200);
	        	
	          }
	          
	          //Reset Action
	          $scope.resetAction = function(){
	        	  $scope.getlookupInfo();
          		$scope.selectedTypeOfMode = null;
          		$scope.transactionRefNumber = null;
          		$scope.primary_Details_Obj={};
          		$scope.isDisabled = false;
    			$scope.isVerifyBlockDisplay = false;
    			$scope.isApproveBlockDisplay = false;
    			$scope.isDeletedBlockDisplay = false;
    			$scope.isViewMode = false;
          		$scope.$broadcast('angucomplete-alt:clearInput');//To clear the angu complete values
	          };
	          
	          
	          // This will display a popup for the transaction
	          $scope.onClickTransactionPopup = function(){
	        	  $http.get(constants.localhost_port+"/"+constants.service_context+'/PrimaryDetailController/getPrimaryDetailsByTransactionId/'+$scope.transactionRefNumber).success(function(data){
	        		  if(data){
	        			  $scope.setTransactionInfo(data);
	            	  }else{
	            		  $scope.error="No Record found with this Transaction number";
	            		  angular.element('#erroPopupId').trigger('click');
	            	  }
	              });
	          };
	          
	          //This is a function for common purpose to set the transaction info
	          $scope.setTransactionInfo = function(data){
	        	  $scope.transactionPickMode = null;
    			  $scope.isCustomerIdBlockDisplay = false;
    			  $scope.isBenificiaryIdBlockDisplay = false;
        		  $scope.primary_Details_Obj  = data;
        		  $scope.customer = data.customerJson;
        		  $scope.counterParty = data.counterpartyJson;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'customerId', $scope.customer);//injecting customer value
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'counterpartyId', $scope.counterParty);//injecting counterparty value
        		  $scope.tolerance_Max = data.tolerance_Max;//This is the temp variable to hold the tolerance values
        		  $scope.onchangeProductId();
        		  if($scope.selectedTypeOfMode == constants.Create_New || $scope.selectedTypeOfMode == constants.Create_from_an_existing){//If remarks block is false
            		  $http.get(constants.localhost_port+"/"+constants.web_context+'/PrimaryDetailController/init_ImportLCIssueJson').success(function(result){
            			  $scope.primary_Details_Obj.transaction_Ref_number  = result.transaction_Ref_number;//putting the new trans_ref_number
            			  if(!$scope.primary_Details_Obj.limitAvailable_For_Utilization){
            				  $scope.primary_Details_Obj.limitAvailable_For_Utilization = result.limitAvailable_For_Utilization;
            			  }
                         });
        		  }
	          };
	          
	        //This is to get the selected Transaction Info by clicking radio button in the transaction popup
	      	$scope.onselectTransactionNumber = function(transaction){
	      		 $('#transactionPopupId').modal('hide');
	      		$scope.transactionRefNumber = transaction.transaction_Ref_number;
	      		 $scope.setTransactionInfo(transaction);
	      	};
	      	
	      	//This function is to submit status code
	      	$scope.submitStatusCodeAction = function(statuscode){
	      		if(statuscode == constants.Verify){
	      			$scope.primary_Details_Obj.statusId = constants.Verified;
	      		}
	      		if(statuscode == constants.Reject){
	      			$scope.primary_Details_Obj.statusId = constants.Rejected;
	      		}
	      		if(statuscode == constants.Approve){
	      			$scope.primary_Details_Obj.statusId = constants.Approved;
	      		}
	      		if(statuscode == constants.Delete){
	      			$scope.primary_Details_Obj.statusId = constants.Deleted;
	      		}
	      		$scope.saveOrUpdate();
	      	};
	      	
	          $scope.getlookupInfo();
			
	}]);

