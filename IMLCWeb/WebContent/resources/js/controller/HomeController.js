'use strict';

App.controller('HomeController', ['$scope','$cookies', function($scope,$cookies) {
	//Disabling the back button
	$scope.$on('$locationChangeStart', function (event, next, current) {
	if($cookies.get('key')){
		event.preventDefault(); 
	}
	});
}]);
