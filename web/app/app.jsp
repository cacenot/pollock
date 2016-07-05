<%-- 
    Document   : app
    Created on : 05/07/2016, 09:35:55
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html ng-app="pollock">
    <head>
        <c:import url="../parts/styles.jsp"/>
        <link href="<%=request.getContextPath()%>/app/css/app.css" rel="stylesheet">
        <title>Pollock Personal</title>
    </head>
    <body ng-controller="mainController">
        <div id="wrapper">
            <nav class="navbar navbar-inverse navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Pollock</a>
                </div>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#fakelink">O<span class="navbar-unread">1</span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Messages <b class="caret"></b></a>
                        <span class="dropdown-arrow"></span>
                        <ul class="dropdown-menu">
                            <li><a href="#"> Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </li>
                </ul>

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li >
                                <a class="active"  href="#" ><img src="<%=request.getContextPath()%>/images/icons/user-interface.svg" class="sidebar-icon">INICIO</a>
                            </li>
                            <li>
                                <a href="#avaliacoes"><img src="<%=request.getContextPath()%>/images/icons/clipboard.svg" class="sidebar-icon">AVALIAÇÕES</a>
                            </li>
                            <li>
                                <a href="#alunos"><img src="<%=request.getContextPath()%>/images/icons/dude.svg" class="sidebar-icon">ALUNOS</a>
                            </li>
                            <li>
                                <a href="#agenda"><img src="<%=request.getContextPath()%>/images/icons/calendar.svg" class="sidebar-icon">AGENDA</a>
                            </li>
                            <li>
                                <a href="#recebimentos"><img src="<%=request.getContextPath()%>/images/icons/graph.svg" class="sidebar-icon">RECEBIMENTOS</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
            </nav>
        </div>
        <div id="page-wrapper">
            <div ng-view>
                
            </div>
        </div>
        <script src="<%=request.getContextPath()%>/app/js/lib/angular.min.js"></script>
        <script src="<%=request.getContextPath()%>/app/js/lib/angular-route.min.js"></script>
        <c:import url="../parts/scripts.jsp"/>
        <script src="<%=request.getContextPath()%>/app/js/app.js"></script>
        <script src="<%=request.getContextPath()%>/app/core/pollockApp.js"></script>
        <script src="<%=request.getContextPath()%>/app/core/controllers/mainController.js"></script>
        <script src="<%=request.getContextPath()%>/app/core/controllers/inicioController.js"></script>
        <script src="<%=request.getContextPath()%>/app/core/controllers/agendaController.js"></script>
        <script src="<%=request.getContextPath()%>/app/core/controllers/alunosController.js"></script>
        <script src="<%=request.getContextPath()%>/app/core/controllers/avaliacoesController.js"></script>
        <script src="<%=request.getContextPath()%>/app/core/controllers/recebimentosController.js"></script>
    </body>
</html>
