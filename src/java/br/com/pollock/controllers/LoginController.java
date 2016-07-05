/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pollock.controllers;

import br.com.pollock.models.UsuarioFacade;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author fernando
 */
public class LoginController extends HttpServlet {

    @EJB
    private UsuarioFacade usuarioFacade;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        if (!email.equals(null) && !senha.equals(null)) {
            boolean success = usuarioFacade.autenticarUsuario(email, senha);
            if (success) {
                if (!request.getParameter("lembrar").equals(null)) {
                    String lembrar = request.getParameter("lembrar");
                    Cookie cEmail = new Cookie("cookemail", email.trim());
                    Cookie cSenha = new Cookie("cooksenha", senha.trim());
                    Cookie cLembrar = new Cookie("cooklembrar", lembrar.trim());
                    cEmail.setMaxAge(60 * 60 * 24 * 15);//15 days
                    cSenha.setMaxAge(60 * 60 * 24 * 15);
                    cLembrar.setMaxAge(60 * 60 * 24 * 15);
                    response.addCookie(cEmail);
                    response.addCookie(cSenha);
                    response.addCookie(cLembrar);
                }
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("email", email.trim());
                response.sendRedirect(request.getContextPath() + "/App");
            } else {
                request.setAttribute("msgErro", "Email ou senha não encontrados");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
                requestDispatcher.forward(request, response);
            }
        } else {
            request.setAttribute("msgErro", "Favor preencha os campos");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
            requestDispatcher.forward(request, response);
        }
    }

}
