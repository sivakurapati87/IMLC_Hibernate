'use strict';

App.controller('Shipment_Details_Controller', ['$cookies','$http','$scope','$rootScope','$location','$timeout','$state', function($cookies,$http,$scope,$rootScope,$location,$timeout,$state) {
	
	$scope.quantity = 10;//limiting the displaying records in the popup
	//Disabling the back button
	$scope.$on('$locationChangeStart', function (event, next, current) {
		if($cookies.get('key')){
//		if($cookies.get('key')){
		event.preventDefault(); 
	}
	});
	
	//state of the page
	$scope.state_info_name = "shipment_details";
//	$rootScope.transactionData = {};
	$rootScope.transactionData.periodOfPresentation = $rootScope.tempImportLCObj.period_Of_Presentation;
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
	    
	    //This function is to get the selected incoterm from auto population
        $scope.selectedIncotermIdAction = function(selected) {
            if (selected && selected.title) {
            	  $rootScope.transactionData.incoterms = selected.title;
            } else {
              console.log('cleared');
            }
          };
          
          //This function is to get the selected Commodity Code from auto population
          $scope.selectedCommodityCodeAction = function(selected) {
              if (selected && selected.title) {
            	  $scope.getCommodity(selected.title);
              	$rootScope.transactionData.goodsCode = $scope.commodity.commodityCode;
      		  $rootScope.transactionData.goodsDescription = $scope.commodity.commodityDescription;
              } else {
                console.log('cleared');
              }
            };
                
          //onSelect incoterm from the incoterm table in the popup
          $scope.onselectIncotermId = function(incoterm) {
        	  $('#IncotermListPopupId').modal('hide');
        		  $rootScope.transactionData.incoterms = incoterm.incotermsId;
//        		  $scope.incoterm = incoterm;
        		  $scope.getIncoterm(incoterm.incotermsId);
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'incotermsId', $scope.incoterm);
          };
          
          //onSelect commodity/goods from the commodity/goods table in the popup
          $scope.onselectCommodityId = function(commodity) {
        	  $('#CommodityListPopupId').modal('hide');
        		  $rootScope.transactionData.goodsCode = commodity.commodityCode;
        		  $rootScope.transactionData.goodsDescription = commodity.commodityDescription;
        		  $scope.commodity = commodity;
        		  $scope.$broadcast('angucomplete-alt:changeInput', 'commodityCodeId', $scope.commodity);
          };
          
          //This is to get the Commodity details
          $scope.getCommodity = function(id) {
        		angular.forEach($scope.commodityJsonList, function(obj, key)
        				  {
  		           	   		if(obj.commodityCode == id)
  		           	   			{
  		           	   			$scope.commodity = obj;
  		           	   			}
  		           	     });
          };
          
          //This is to get the Incoterm details
          $scope.getIncoterm = function(id) {
        		angular.forEach($scope.incotermJsonList, function(obj, key)
        				  {
  		           	   		if(obj.incotermsId == id)
  		           	   			{
  		           	   			$scope.incoterm = obj;
  		           	   			}
  		           	     });
          };
          
          
          //Save the record     
          $scope.saveOrUpdate = function() {
        	  $state.go('draft_details');
          };
          
	// getting the all incoterms and commodities       
	          $scope.init = function() {
	        	  $scope.showloader();
	              $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.IncotermsController+'/getAllIncoterms').success(function(data){
	            	  $scope.incotermJsonList  = data;//getting all incoterms
	            	  $http.get(constants.localhost_port+"/"+constants.service_context+'/'+constants.CommodityController+'/getAllCommodities').success(function(result){
		            	  $scope.commodityJsonList  = result;//getting all commodities
		            	  if($rootScope.transactionData.incoterms){
		            		  $scope.getIncoterm($rootScope.transactionData.incoterms);
		            		  $scope.$broadcast('angucomplete-alt:changeInput', 'incotermsId', $scope.incoterm);
		            	  }
		            	  if($rootScope.transactionData.goodsCode){
		            		  $scope.getCommodity($rootScope.transactionData.goodsCode);
		            		  $scope.$broadcast('angucomplete-alt:changeInput', 'commodityCodeId', $scope.commodity);
		            	  }
		            	    $scope.hideloader();
		              });
	              });
	          };
	          
	      	
	          $scope.init();
			
	}]);

