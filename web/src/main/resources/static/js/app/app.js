var app = angular.module('crudApp',['ui.router','ngStorage']);

app.constant('urls', {
    BASE: 'http://localhost:8080/SpringBootCRUDApp',
    USER_SERVICE_API : 'http://localhost:8080/SpringBootCRUDApp/api/user/',
    CRAWL_SERVICE_API : 'https://zt-fusion-powers-heroku.herokuapp.com/fusionpower/crawl'
});

app.config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {

        $stateProvider
            .state('home', {
                url: '/home',
                templateUrl: 'partials/home',
                controller:'HomeController'
            })
            .state('business', {
                url: '/business',
                templateUrl: 'partials/business',
                controller:'BusinessController'
            })
            .state('personal', {
                url: '/personal',
                templateUrl: 'partials/personal',
                controller:'PersonalController'
            })
        $urlRouterProvider.otherwise('/home');
    }]);

