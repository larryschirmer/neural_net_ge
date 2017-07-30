var app = angular.module('myModule', ['ngRoute']);

app.config(function($routeProvider){
    $routeProvider

    .when('/home', {
      templateUrl: "views/home.html",
      controller: "homeController"
    })
    .when('/attn', {
      templateUrl: "views/attn.html",
    })
    .when('/status', {
      templateUrl: "views/status.html",
    })

    .otherwise({
      redirectTo: "/home"
    })

}) // closes app.config
