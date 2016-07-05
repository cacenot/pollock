(function () {
    'use strict';
    
    var recebimentosController = function ($scope) {
        $scope.message = "q isso hein";
    };
    
    angular.module('pollock')
        .controller('recebimentosController', ['$scope',recebimentosController]);    
})();