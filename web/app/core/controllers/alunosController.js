(function () {
    'use strict';
    
    var alunosController = function ($scope) {
        $scope.message = "q isso hein";
        
         $(".nav-tabs a").on('click', function (e) {
      e.preventDefault();
      $(this).tab("show");
    })
    };
    
    angular.module('pollock')
        .controller('alunosController', ['$scope',alunosController]);    
})();