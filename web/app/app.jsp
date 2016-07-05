<%-- 
    Document   : app
    Created on : 05/07/2016, 09:35:55
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <c:import url="../parts/styles.jsp"/>
        <link href="<%=request.getContextPath()%>/app/css/app.css" rel="stylesheet">
        <title>Pollock Personal</title>
    </head>
    <body>
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
                                <a class="active"  href="index.html" ><img src="<%=request.getContextPath()%>/images/icons/user-interface.svg" class="sidebar-icon">INICIO</a>
                            </li>
                            <li>
                                <a href="forms.html"><img src="<%=request.getContextPath()%>/images/icons/clipboard.svg" class="sidebar-icon">AVALIAÇÕES</a>
                            </li>
                            <li>
                                <a href="tables.html"><img src="<%=request.getContextPath()%>/images/icons/dude.svg" class="sidebar-icon">ALUNOS</a>
                            </li>
                            <li>
                                <a href="forms.html"><img src="<%=request.getContextPath()%>/images/icons/calendar.svg" class="sidebar-icon">AGENDA</a>
                            </li>
                            <li>
                                <a href="forms.html"><img src="<%=request.getContextPath()%>/images/icons/graph.svg" class="sidebar-icon">RECEBIMENTOS</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
            </nav>


        </div>
        <div id="page-wrapper">
            <div class="row">
                <div style="margin-left: 15px;" class="col-lg-12">
                    <h1 class="">inicio</h1>
                </div>
                <div class="col-lg-10 painel">
                    <form>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile">File input</label>
                            <input type="file" id="exampleInputFile">
                            <p class="help-block">Example block-level help text here.</p>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Check me out
                            </label>
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                </div>
            </div>
        </div>

        <c:import url="../parts/scripts.jsp"/>
        <script src="<%=request.getContextPath()%>/app/js/app.js"></script>
    </body>
</html>
