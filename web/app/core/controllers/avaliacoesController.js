(function () {
    'use strict';
    
    var avaliacoesController = function ($scope) {
        $scope.message = "q isso hein";
    };
    
    angular.module('pollock')
        .controller('avaliacoesController', ['$scope',avaliacoesController]);    
})();