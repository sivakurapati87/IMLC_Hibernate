'use strict';

App.controller('Home_Header_Controller', ['$http','$scope','$location','LoginService','$rootScope','$cookies', function($http,$scope,$location,LoginService,$rootScope,$cookies) {
	$scope.importIssue=false;
	 $scope.getlookupInfo = function() {
         $http.get(constants.localhost_port+"/"+constants.service_context+'/ImportLCGlobalParameterDeclarationController/checkTheExistenceOfRecords').success(function(data){
       	 if(!data){
       		$scope.importIssue=true;
       	 }
         });
     }; 
     //This method is to signout
     $scope.signout = function(){
    	 $rootScope.user = null;
    	 $rootScope.transactionData=null;
    	 $cookies.remove('key');
    	 $location.path('/signout');
     };
//     $scope.getlookupInfo();
}]);
