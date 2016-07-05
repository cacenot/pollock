(function () {
    'use strict';
    angular.module('pollock', ['ngRoute'])
            .config(function ($routeProvider) {
                $routeProvider

                        .when('/', {
                            templateUrl: '/Pollock/app/core/views/inicio.html',
                            controller: 'inicioController'
                        })

                        .when('/avaliacoes', {
                            templateUrl: '/Pollock/app/core/views/avaliacoes.html',
                            controller: 'avaliacoesController'
                        })

                        .when('/alunos', {
                            templateUrl: '/Pollock/app/core/views/alunos.html',
                            controller: 'alunosController'
                        })

                        .when('/agenda', {
                            templateUrl: '/Pollock/app/core/views/agenda.html',
                            controller: 'agendaController'
                        })

                        .when('/recebimentos', {
                            templateUrl: '/Pollock/app/core/views/recebimentos.html',
                            controller: 'recebimentosController'
                        });

                
            });


})();