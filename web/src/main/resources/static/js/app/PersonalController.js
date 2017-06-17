'use strict';

angular.module('crudApp').controller('PersonalController',
    ['$scope', '$state',  function( $scope, $state) {

    	$scope.goPersonal = function() {
    		$state.go('personal');
    	}
    	
    	$scope.goFinal = function() {
    		$state.go('final');
    	}
    	
    	$scope.goBusiness = function() {
    		$state.go('business');
    	}
    }


    ]);