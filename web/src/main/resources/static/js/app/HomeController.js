'use strict';

angular.module('crudApp').controller('HomeController',
    [ '$scope', '$state', '$http', '$q', 'urls',  function(  $scope, $state, $http, $q, urls) {

    	$scope.goBusiness = function() {
    		$state.go('business');
    	}
    	
    	$scope.retrieveInformation = function() {
    		fetchData($scope.crawlUrl).then(function(response) {
    			console.log(response);
    		}, function(error) {
    			console.log(error);
    		});
    	}
    	
    	function fetchData(url) {
            var deferred = $q.defer();
            $http.post(urls.CRAWL_SERVICE_API, url)
                .then(
                    function (response) {
                        deferred.resolve(response.data);
                    },
                    function (errResponse) {
                       console.error('Error while creating User : '+errResponse.data.errorMessage);
                       deferred.reject(errResponse);
                    }
                );
            return deferred.promise;
        }
    }


    ]);