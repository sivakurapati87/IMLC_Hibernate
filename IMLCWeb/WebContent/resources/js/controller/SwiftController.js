'use strict';

App.controller('SwiftController', ['$scope','$http','$cookies','$rootScope','$timeout','Excel', function($scope,$http,$cookies,$rootScope,$timeout,Excel) {
	//Disabling the back button
//	$scope.$on('$locationChangeStart', function (event, next, current) {
//	if($cookies.get('key')){
//		event.preventDefault(); 
//	}
//	});
	$scope.loader = {
		      loading: false,
		    };
	 
	    $scope.showloader = function(){
	        $scope.loader.loading = true ;
	    }
	    $scope.hideloader = function(){
	        $scope.loader.loading = false ;
	    }
	$scope.init = function(){
		 $scope.showloader();
		 if($rootScope.transactionData && $rootScope.transactionData.transaction_Ref_number){
		 $http.get(constants.localhost_port+"/"+constants.service_context+'/SwiftController/getAllSwiftByTransactionType?transaction_Type='+'Approved&transaction_Ref_number='+$rootScope.transactionData.transaction_Ref_number).success(function(data){
       	  $scope.swiftList  = data;//getting all lookups
       	    $scope.hideloader();
         });
		 } else{
			 if(!$scope.primaryDataList){ // if primary Data list is empty
				  $http.get(constants.localhost_port+"/"+constants.service_context+'/PrimaryDetailController/getAllPrimaryDetails').success(function(data){
	            	  if(data){
	            		  $scope.primaryDataList = data;
	            	  }
	              });}
				  angular.element('#transactionPopup').trigger('click');
			 }
	};
	
	//This is to get the selected Transaction Info
	$scope.onselectTransactionNumber = function(transaction){
		 $('#transactionPopupId').modal('hide');
		 $rootScope.transactionData = transaction;
		 $scope.init();
		$scope.hideloader();
	};
	
	//Export the data to Excel
	$scope.exportToExcel=function(tableId){ // ex: '#my-table'
        $scope.exportHref=Excel.tableToExcel(tableId,'sheet name');
        $timeout(function(){location.href=$scope.exportHref;},100); // trigger download
    }
	$scope.init();
}]);
