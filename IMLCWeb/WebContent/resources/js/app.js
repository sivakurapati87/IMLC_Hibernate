'use strict';

var App = angular.module('myApp', [ 'ui.router', 'ui.bootstrap',
		"angucomplete-alt",'ngCookies', ]);

App.directive('fileModel', ['$parse', function ($parse) {
    return {
        restrict: 'A',
        link: function(scope, element, attrs) {
            var model = $parse(attrs.fileModel);
            var modelSetter = model.assign;

            element.bind('change', function(){
                scope.$apply(function(){
                    modelSetter(scope, element[0].files[0]);
                });
            });
        }
    };
}]);

App.directive('headerTab', function() {
	  return {
	      restrict: 'E',
	      templateUrl: 'header_tab'
	    };
	});


App.directive('validNumber', function() {
	return {
		require : '?ngModel',
		link : function(scope, element, attrs, ngModelCtrl) {
			if (!ngModelCtrl) {
				return;
			}

			ngModelCtrl.$parsers.push(function(val) {
				if (angular.isUndefined(val)) {
					var val = '';
				}
				var clean = val.replace(/[^0-9]+/g, '');
				if (val !== clean) {
					ngModelCtrl.$setViewValue(clean);
					ngModelCtrl.$render();
				}
				return clean;
			});

			element.bind('keypress', function(event) {
				if (event.keyCode === 32) {
					event.preventDefault();
				}
			});
		}
	};
});
App.directive('validAlphabet', function() {
	return {
		require : '?ngModel',
		link : function(scope, element, attrs, ngModelCtrl) {
			if (!ngModelCtrl) {
				return;
			}

			ngModelCtrl.$parsers.push(function(val) {
				if (angular.isUndefined(val)) {
					var val = '';
				}
				var clean = val.replace(/[^a-zA-Z]+/g, '');
				if (val !== clean) {
					ngModelCtrl.$setViewValue(clean);
					ngModelCtrl.$render();
				}
				return clean;
			});

			element.bind('keypress', function(event) {
				if (event.keyCode === 32) {
					event.preventDefault();
				}
			});
		}
	};
});
//This is for authentication
/*App.run(['$rootScope', '$location','$cookies','$window', function ($rootScope, $location,$cookies,$window) {
    $rootScope.$on('$stateChangeStart', function (event) {
        if (!$rootScope.user) {
            console.log('DENY');
            if($cookies.get('key')){
            	window.open('','_self');
                window.close();
            }
            $location.path('/signout');
        }
    });
}]);*/

App.config([ '$stateProvider', '$urlRouterProvider',
		function($stateProvider, $urlRouterProvider) {

			$urlRouterProvider.otherwise("/login")

			$stateProvider.state('login', {
				url : "/login",
				views : {
					'content' : {
						templateUrl : 'login',
						controller : "LoginController"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			}).state('home', {
				url : "/home",
				views : {
					'header' : {
						templateUrl : 'home_header',
						controller : "Home_Header_Controller"
					},
					'content' : {
						templateUrl : 'home',
						controller : "HomeController"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			}).state('global_parameters', {
				url : "/global_parameters",
				views : {
					'header' : {
						templateUrl : 'home_header',
						controller : "Home_Header_Controller"
					},
					'content' : {
						templateUrl : 'global_parameters',
						controller : "Global_Parameter_Controller"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			})
			.state('primary_details', {
				url : "/primary_details",
				views : {
					'header' : {
						templateUrl : 'home_header',
						controller : "Home_Header_Controller"
					},
					'content' : {
						templateUrl : 'primary_details',
						controller : "Primary_Detail_Controller"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			}).state('jasper_Text_Report', {
				url : "/jasper_Text_Report",
				views : {
					'header' : {
						templateUrl : 'home_header',
						controller : "Home_Header_Controller"
					},
					'content' : {
						templateUrl : 'jasper_Text_Report',
						controller : "JasperTextReportController"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			}).state('swift_Message', {
				url : "/swift_Message",
				views : {
					'header' : {
						templateUrl : 'home_header',
						controller : "Home_Header_Controller"
					},
					'content' : {
						templateUrl : 'swift_Message',
						controller : "SwiftController"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			}).state('advising_bank', {
				url : "/advising_bank",
				views : {
					'header' : {
						templateUrl : 'home_header',
						controller : "Home_Header_Controller"
					},
					'content' : {
						templateUrl : 'advising_bank',
						controller : "Advising_Bank_Controller"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			}).state('document', {
				url : "/document",
				views : {
					'header' : {
						templateUrl : 'home_header',
						controller : "Home_Header_Controller"
					},
					'content' : {
						templateUrl : 'document',
						controller : "Document_Controller"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			}).state('shipment_details', {
				url : "/shipment_details",
				views : {
					'header' : {
						templateUrl : 'home_header',
						controller : "Home_Header_Controller"
					},
					'content' : {
						templateUrl : 'shipment_details',
						controller : "Shipment_Details_Controller"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			}).state('draft_details', {
				url : "/draft_details",
				views : {
					'header' : {
						templateUrl : 'home_header',
						controller : "Home_Header_Controller"
					},
					'content' : {
						templateUrl : 'draft_details',
						controller : "Draft_Details_Controller"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			}).state('margin_details', {
				url : "/margin_details",
				views : {
					'header' : {
						templateUrl : 'home_header',
						controller : "Home_Header_Controller"
					},
					'content' : {
						templateUrl : 'margin_details',
						controller : "Margin_Details_Controller"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			}).state('signout', {
				url : "/signout",
				views : {
					'content' : {
						templateUrl : 'login',
						controller : "LoginController"
					},
					'footer' : {
						templateUrl : 'footer'
					}
				}
			})
			

		} ]);
