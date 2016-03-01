'use strict';

App.controller('Document_Controller', ['$cookies','$http','$scope','$rootScope','$location','$timeout', function($cookies,$http,$scope,$rootScope,$location,$timeout) {
	
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
	$scope.primary_Details_Obj = {};
//	$scope.primary_Details_Obj = $rootScope.transactionData;
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
          	  $scope.primary_Details_Obj.documentId = selected.title;
          	  $scope.getDocumentJsonById($scope.primary_Details_Obj.documentId);
          	$scope.primary_Details_Obj.documentName = $scope.tempDocumentJson.documentName;
          	$scope.primary_Details_Obj.documentDescription = $scope.tempDocumentJson.documentDescription;
            } else {
              console.log('cleared');
            }
          };
                
          //onSelect bank from the Document table in the popup
          $scope.onselectDocumentId = function(document) {
        	  $('#documentPopupId').modal('hide');
        		  $scope.primary_Details_Obj.documentId = document.documentId;
        		  $scope.document = document;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'documentId', $scope.document);
        			$scope.primary_Details_Obj.documentName = document.documentName;
                  	$scope.primary_Details_Obj.documentDescription = document.documentDescription;
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
          
          
	// getting the all banks          
	          $scope.getAllDocuments = function() {
	        	  $scope.showloader();
	              $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.DocumentController+'/getAllDocuments').success(function(data){
	            	  $scope.documentJsonList  = data;//getting all documents
	            	    $scope.hideloader();
	              });
	          };
	          
	      	
	          $scope.getAllDocuments();
			
	}]);

