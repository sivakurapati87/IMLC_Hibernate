'use strict';
//var localhost_port= 'http://122.175.45.182:8090';
App.factory('LoginService', ['$http', '$q', function($http, $q){
var selectedCompany={};
	return {
		
//			contriesList:function(){
//				return $http.get(constants.localhost_port+'/CorpMediaService/CompanyController/findAllCompanies')
//				.then(
//				function(response){
//					return response.data;
//						}, 
//				function(errResponse){
//					console.error('Error while find all companies Action');
//					return $q.reject(errResponse);
//						}
//					);
//			},
//			insertSelectedCompany:function(cmp){
//				return $http.get(constants.localhost_port+'/CorpMedia/CompanyInfoController/setSelectedCompany/'+cmp)
//				.then(
//				function(response){
//					return response.data;
//						}, 
//				function(errResponse){
//					console.error('Error while insertSelectedCompany into the bean');
//					return $q.reject(errResponse);
//						}
//					);
//			}
	};

}]);
