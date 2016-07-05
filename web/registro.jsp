<%-- 
    Document   : index
    Created on : 02/07/2016, 13:13:39
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Pollock - Registro</title>
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
            <h1>Pollock</h1>
        </div>
        <div class="row row-centered">
            <div class="painel-registro col-lg-3 col-md-5 col-sm-6 col-centered">
                <p class="lead text-center">Crie uma conta gratuita!</p>
                <c:if test="${erro}">
                <div class="alert alert-error">
                    <button class="close fui-cross"></button>
                    <h4>Erro!</h4>
                    <p>${msgErro}</p>
                </div>
                </c:if>
                <form method="post" action="/Pollock/Registro" id="register-form" class="form-control-static">
                    <div id="ipt-nome" class="form-group">
                        <input id="nome" name="nome" type="text" class="form-control" placeholder="Nome completo" >
                        <span id="ipt-i-nome" class="input-icon "></span>
                    </div>
                    <div id="ipt-email" class="form-group">
                        <input id="email" name="email" type="text" class="form-control" placeholder="Email">
                    </div>
                    <div id="ipt-senha" class="form-group">
                        <input id="senha" name="senha" type="password" class="form-control" placeholder="Senha">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Criar minha conta</button>
                    <p class="text-center small-text">Ja tem conta? <a href="/Pollock/Login" class="lead small-text"> LOGIN </a><br>Ou crie usando:</p>
                    <a class="btn btn-block btn-social-facebook"><span class="fui-facebook"></span>  Facebook</a>
                    <a class="btn btn-block btn-social-pinterest"><span class="fui-googleplus"></span>  Google</a>
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
                                                
                                                url: '/Pollock/Helper',
                                                dataType: 'get'
                                                }
                                        },
                                        senha: {
                                            required: true,
                                            minlength: 5
                                        }
                                    },
                                    messages: {
                                        nome: "Por favor insira seu nome",
                                        senha: {
                                            required: "Por favor insira sua senha",
                                            minlength: "Sua senha deve ser maior que 5 caracteres"
                                        },
                                        email: {
                                            email: "Por favor insira um email valido",
                                            required: "Por favor insira um email valido",
                                            remote: "Este email ja esta em uso"
                                        }
                                    },
                                    submitHandler: function (form) {
                                        form.submit();
                                    }
                                });
                            }
                        }
                //when the dom has loaded setup form validation rules
                $(D).ready(function ($) {
                    
                    $("#nome").blur(function () {
                        if ($("#nome").val().length < 3) {
                            $("#ipt-nome").attr("class", "form-group has-error");
                            $("#ipt-i-nome").attr("class", "input-icon fui-cross-inverted");
                        }
                        if ($("#nome").val().length >= 3) {
                            $("#ipt-nome").attr("class", "form-group has-success");
                            $("#ipt-i-nome").attr("class", "input-icon fui-check-inverted");
                        }
                    });
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


        </script
    </body>
</html>
