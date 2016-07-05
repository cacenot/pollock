(function () {
    'use strict';
    
    var agendaController = function ($scope) {
        $scope.message = "q isso hein";
    };
    
    angular.module('pollock')
        .controller('agendaController', ['$scope',agendaController]);    
})();