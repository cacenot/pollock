<%-- 
    Document   : login
    Created on : 03/07/2016, 18:23:03
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Pollock - Login</title>
        <c:import url="parts/styles.jsp"/>
        <style>
            body{
                background-color: #1abc9c;
            }
            .painel-registro{
                margin-top: 5%;
                border-radius: 3px;
                background-color: #edeff1;
                box-shadow: 0 3px 4px 0 rgba(0,0,0,.4);
                padding: 15px;

            }


        </style>
    </head>
    <body>
        <div class="dialog">
            <h1><b>Pol</b>lock</h1>
        </div>
        <div class="row row-centered">
            <div class="painel-registro col-lg-3 col-md-5 col-sm-6 col-centered">
                <p class="lead text-center">Login</p>
                <c:if test="${erro}">
                    <div class="alert alert-error">
                        <button class="close fui-cross"></button>
                        <h4>Erro!</h4>
                        <p>${msgErro}</p>
                    </div>
                </c:if>
                <form method="post" action="/Pollock/Login" id="register-form">
                    <div id="ipt-email" class="form-group">
                        <input id="email" name="email" type="text" class="form-control" placeholder="Email">

                    </div>
                    <div id="ipt-senha" class="form-group">
                        <input id="senha" name="senha" type="password" class="form-control" placeholder="Senha">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Entrar</button>
                    <p class="text-center small-text">Ainda não tem conta? <a href="/Pollock/Registro" class="lead small-text">REGISTRAR</a></p>
                    <a class="btn btn-block btn-social-facebook"><span class="fui-facebook"></span>  Entrar com Facebook</a>
                    <a class="btn btn-block btn-social-pinterest"><span class="fui-googleplus"></span>  Entrar com Google</a>
                    <p class="small-text text-center">Conheça nossos <a href="#">Termos de uso</a>.</p>
                </form>
            </div>
        </div>
        <c:import url="parts/scripts.jsp"/>
        <script>
            (function ($, W, D)
            {
                var JQUERY4U = {};
                JQUERY4U.UTIL =
                        {
                            setupFormValidation: function ()
                            {
                                //form validation rules
                                $("#register-form").validate({
                                rules: {
                                nome: "required",
                                        email: {
                                        required: true,
                                                email: true,
                                                remote: {
                                                url: 'fithub/Registro/checkEmail',
                                                        dataType: 'post',
                                                        data: {
                                                        'email': $('#email').val()
                                                        },
                                                        success: function (data) {
                                                            if (data.emailExiste)
                                                            {
                                                                message: {
                                                                    email: 'Esse email ja esta em uso!'
                                                                }
                                                            }else{
                                                                
                                                            }
                                                        }
                                                },
                                                senha: {
                                                required: true,
                                                }
                                        },
                                        messages: {
                                        senha: {
                                        required: "Por favor insira sua senha",
                                                minlength: "Sua senha deve ser maior que 5 caracteres"
                                        },
                                                email: "Por favor insira um email valido"
                                        },
                                        submitHandler: function (form) {
                                            form.submit();
                                            }
                                });
                            }
                        }
                        //when the dom has loaded setup form validation rules
                        $(D).ready(function ($) {
                            $("#email").blur(function () {
                                var iptEmail = $("#email").val().toString();
                                var emailFilter = /^.+@.+\..{2,}$/;
                                var illegalChars = /[\(\)\<\>\,\;\:\\\/\"\[\]]/;
                                if (!(emailFilter.test(iptEmail)) || iptEmail.match(illegalChars) || iptEmail == "") {
                                    $("#ipt-email").attr("class", "form-group has-error");
                                }
                                if ((emailFilter.test(iptEmail)) && !(iptEmail.match(illegalChars)) && iptEmail != "") {
                                    $("#ipt-email").attr("class", "form-group has-success");
                                }
                            });
                            $("#senha").blur(function () {
                                if ($("#senha").val().length < 5) {
                                    $("#ipt-senha").attr("class", "form-group has-error");
                                }
                                if ($("#senha").val().length >= 5) {
                                    $("#ipt-senha").attr("class", "form-group has-success");
                                }
                            });

                            JQUERY4U.UTIL.setupFormValidation();
                        });

                    })(jQuery, window, document)


                            < /script
                            < /body>
                            < /body>
                            < /html>
