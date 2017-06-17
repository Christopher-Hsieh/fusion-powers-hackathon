'use strict';

angular.module('crudApp').controller('PersonalController',
    ['$scope', '$state',  function( $scope, $state) {

    	$scope.goPersonal = function() {
    		$state.go('personal');
    	}
    }


    ]);