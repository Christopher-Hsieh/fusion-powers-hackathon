'use strict';

angular.module('crudApp').controller('BusinessController',
    [ '$scope', '$state',  function( $scope, $state) {

    	$scope.goPersonal = function() {
    		$state.go('personal');
    	}
    	
    	$scope.goFinal = function() {
    		$state.go('final');
    	}
    	
    	$scope.goHome = function() {
    		$state.go('home');
    	}
    }


    ]);