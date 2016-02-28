'use strict';

App.controller('Global_Parameter_Controller', ['$cookies','$http','$scope','$rootScope','Global_Parameter_Service','$stateParams', function($cookies,$http,$scope,$rootScope,Global_Parameter_Service,$stateParams) {

	//Disabling the back button
	$scope.$on('$locationChangeStart', function (event, next, current) {
		if($cookies.get('key')){
		event.preventDefault(); 
	}
	});
	
	 $scope.loader = {
		      loading: false,
		    };
	 
	    $scope.showloader = function(){
	        $scope.loader.loading = true ;
	    }
	    $scope.hideloader = function(){
	        $scope.loader.loading = false ;
	    }
	$scope.contingentLiabilityChange = function(){
		$scope.importLCObject.contingent_Reversal_Account_Entries = null;
		$scope.importLCObject.contingent_Entries_for_Bills = null;
		$scope.importLCObject.contingent_Currency = null;
	}
	
	//The main object of the screen
			$scope.importLCObject={};
			
	// getting the lookup values from web bean          
	          $scope.getlookupInfo = function() {
	        	  $scope.showloader();
	              $http.get(constants.localhost_port+"/"+constants.web_context+'/ImportLCGlobalParameterDeclarationController/init').success(function(data){
	            	  $scope.lookupbean  = data;//getting all 
	            	  $scope.importLCObject.strEffective_From = data.strEffectiveFrom;
	            	    $scope.hideloader();
	              });
	          };
	         
	         //submit action
	          $scope.submit = function(){
	        	  angular.element('#openTemplatePopupId').trigger('click');
	          };
	          
	          //This function is invoked at the time of ok clicked in the template popup
	          $scope.onclickOkAction = function() {
	              $http.get(constants.localhost_port+"/"+constants.service_context+'/ImportLCGlobalParameterDeclarationController/findGlobalParameterByProductId_TemplateType?productId='+$scope.importLCObject.productId+"&template="+$scope.importLCObject.type_Of_LC).success(function(data){
	            	  if(data){
	            		  $scope.tempImportLCObj=data;
	            		  angular.element('#openPopupId').trigger('click');
	            	  }else{
	            		  $scope.saveOrUpdate();
	            	  }
	              });
	          };
	          
	          //If the user wants to click override the values
	          $scope.overrideValues = function(){
	        	  $scope.importLCObject.global_ParameterId = $scope.tempImportLCObj.global_ParameterId;
	          };
	          
	          //Save or Update
	          $scope.saveOrUpdate = function() {
	              $http.post(constants.localhost_port+"/"+constants.web_context+'/ImportLCGlobalParameterDeclarationController/submit', $scope.importLCObject).success(function() {
	            	  $scope.importLCObject={};
	            	  angular.element('#successBlockId').trigger('click');
	              }).error(function() {
	            	  console.error('Could not save or update pf');
	              });
	          };
	          
	          //Reset action
	          $scope.resetAction = function(){
	        		$scope.importLCObject={};
	          }
	          //initial function
	          $scope.getlookupInfo();
			
	}]);

