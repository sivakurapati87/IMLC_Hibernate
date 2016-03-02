'use strict';

App.controller('Document_Controller', ['$cookies','$http','$scope','$rootScope','$location','$timeout','$state', function($cookies,$http,$scope,$rootScope,$location,$timeout,$state) {
	
	$scope.quantity = 10;//limiting the displaying records in the popup
	//Disabling the back button
	$scope.$on('$locationChangeStart', function (event, next, current) {
		if($cookies.get('key')){
//		if($cookies.get('key')){
		event.preventDefault(); 
	}
	});
	
	//state of the page
	$scope.state_info_name = "document";
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
	    
	    //This function is to get the selected document from auto population
        $scope.selectedDocumentIdAction = function(selected) {
            if (selected && selected.title) {
          	  $rootScope.transactionData.documentId = selected.title;
          	  $scope.getDocumentJsonById($rootScope.transactionData.documentId);
          	$rootScope.transactionData.documentName = $scope.tempDocumentJson.documentName;
          	$rootScope.transactionData.documentDescription = $scope.tempDocumentJson.documentDescription;
            } else {
              console.log('cleared');
            }
          };
                
          //onSelect bank from the Document table in the popup
          $scope.onselectDocumentId = function(document) {
        	  $('#documentPopupId').modal('hide');
        		  $rootScope.transactionData.documentId = document.documentId;
        		  $scope.document = document;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'documentId', $scope.document);
        			$rootScope.transactionData.documentName = document.documentName;
                  	$rootScope.transactionData.documentDescription = document.documentDescription;
          };
          
          //This is to get the document details
          $scope.getDocumentJsonById = function(id) {
        		  angular.forEach($scope.documentJsonList, function(obj, key)
        				  {
		           	   		if(obj.documentId == id)
		           	   			{
		           	   			$scope.tempDocumentJson = obj;
		           	   			}
		           	     });
          };
          
          //Save the record     
          $scope.saveOrUpdate = function() {
        	  $state.go('shipment_details');
          };
          
          // getting the all documents          
	          $scope.init = function() {
	        	  $scope.showloader();
	              $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.DocumentController+'/getAllDocuments').success(function(data){
	            	  $scope.documentJsonList  = data;//getting all documents
	            	  if($rootScope.transactionData.documentId){
	            		  $scope.getDocumentJsonById($rootScope.transactionData.documentId);
	            		  $scope.$broadcast('angucomplete-alt:changeInput', 'documentId', $scope.tempDocumentJson);
	            	  }
	            	    $scope.hideloader();
	              });
	          };
	          
	      	
	          $scope.init();
			
	}]);

