(function () {
    'use strict';
    
    var inicioController = function ($scope) {
        $scope.message = "q isso hein";
    };
    
    angular.module('pollock')
        .controller('inicioController', ['$scope',inicioController]);    
})();