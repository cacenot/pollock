<%-- 
    Document   : index
    Created on : 03/07/2016, 00:50:26
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href="/Pollock/Registro">Registro</a>
        <br>
        <form method="post" action="/Pollock/Login">
            <input name="email" type="text" placeholder="email">
            <br>
            <input type="submit">
        </form>
        <br>
        <p>${msgErro}</p>
        <br>
        <h1>${nome}</h1>
    </body>
</html>
