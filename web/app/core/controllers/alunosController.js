(function () {
    'use strict';
    
    var alunosController = function ($scope) {
        $scope.message = "q isso hein";
    };
    
    angular.module('pollock')
        .controller('alunosController', ['$scope',alunosController]);    
})();