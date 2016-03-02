'use strict';

App.controller('LoginController', ['$http','$scope','$location','LoginService','$rootScope','$cookies','$window','$sce', function($http,$scope,$location,LoginService,$rootScope,$cookies,$window,$sce) {
	$scope.user = null;
//	//Disabling the back button
	$scope.$on('$locationChangeStart', function (event, next, current) {
	if(!$rootScope.user){
		event.preventDefault(); 
	}
	});
	
	
	
	 $scope.login = function() {
		 
		 $http.post(constants.localhost_port+"/"+constants.web_context+'/LoginController/login', $scope.user).success(function(data) {
			 if(data){
				 $location.path('/home');
				 $rootScope.user = $scope.user;
//				  $window.sessionStorage.setItem('key', 'user logged in');
				 $cookies.put('key','logged in');
			 }else{
				  angular.element('#loginErrorId').trigger('click');
			 }
		 }).error(function() {
	       	  console.error('Could not save or update pf');
	         });
       };
//
       $scope.files = [];
       $scope.getFileDetails = function (e) {

          
           $scope.$apply(function () {

               // STORE THE FILE OBJECT IN AN ARRAY.
               for (var i = 0; i < e.files.length; i++) {
                   $scope.files.push(e.files[i])
               }
alert($scope.files);
           });
       };

       $scope.uploadFile = function(){
           alert("hi");
           console.log("hello");
           console.log('file is');
           var uploadUrl = constants.localhost_port+"/"+constants.web_context+'/LoginController/upload';
           $scope.uploadFileToUrl(uploadUrl);
       };
       $scope.uploadFileToUrl = function(uploadUrl){
           var fd = new FormData();
//           fd.append('file', file);
           for (var i in $scope.files) {
        	   fd.append("uploadedFile", $scope.files[i]);
           }
           $http.post(uploadUrl, fd, {
               withCredentials : false,
               transformRequest: angular.identity,
               headers: {'Content-Type': undefined}
           })
           .success(function(data){
               console.log("success 1");
           })
           .error(function(){
               console.log("error");
           });
       };
       
//       $scope.uploadFile = function(){
//           alert("hi");
//           console.log("hello");
//           var file = $scope.myFile;
//           console.log('file is');
//           console.dir(file);
//           var uploadUrl = constants.localhost_port+"/"+constants.web_context+'/LoginController/upload';
//           $scope.uploadFileToUrl(file, uploadUrl);
//       };
//       $scope.uploadFileToUrl = function(file, uploadUrl){
//           var fd = new FormData();
//           fd.append('file', file);
//           $http.post(uploadUrl, fd, {
//               withCredentials : false,
//               transformRequest: angular.identity,
//               headers: {'Content-Type': undefined}
//           })
//           .success(function(data){
//               console.log("success 1");
//           })
//           .error(function(){
//               console.log("error");
//           });
//       };
       $scope.download = function() {
    	   $window.location =constants.localhost_port+"/"+constants.web_context+'/LoginController/download';
       };
       
       $scope.preview = function(){
    	   $http.get(constants.localhost_port+"/"+constants.web_context+'/LoginController/previewPDF',     
    			   {responseType:'arraybuffer'})
    			     .success(function (response) {
    			        var file = new Blob([(response)], {type: 'application/pdf'});
    			        $scope.content = URL.createObjectURL(file);
//    			        $scope.content = $sce.trustAsResourceUrl(fileURL);
    			   });
       };
//       $scope.preview();
}]);
