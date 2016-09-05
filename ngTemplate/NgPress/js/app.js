angular.module('NgPress', ['ngRoute', 'ngSanitize'])


.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider){
    
    $locationProvider.html5Mode(false);
    
    $routeProvider
    .when('/home', {
        templateUrl: 'wp-content/themes/NgPress/partials/home.html',
        controller: 'MainCtrl'
    })
    .when('/works', {
        templateUrl: 'wp-content/themes/NgPress/partials/works.html',
        controller: 'MainCtrl'
    })
    .when('/about', {
        templateUrl: 'wp-content/themes/NgPress/partials/about.html',
        controller: 'MainCtrl'
    })
    .when('/contact', {
        templateUrl: 'wp-content/themes/NgPress/partials/contact.html',
        controller: 'MainCtrl'
    })

    // -- DEBUG-Mod --//

    // .when('/debug', {
    //    templateUrl: 'wp-content/themes/NgPress/partials/debug.php',
    //    controller: 'MainCtrl'
    //})

    // --           --//
    
    .otherwise({
        redirectTo: '/home'
    })
    
    
}])


