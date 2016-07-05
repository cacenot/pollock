
package br.com.pollock.controllers;

import br.com.pollock.models.Usuario;
import br.com.pollock.models.UsuarioFacade;
import br.com.pollock.util.Util;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fernando
 */
public class RegistroController extends HttpServlet {
    @EJB
    private UsuarioFacade usuarioFacade;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("registro.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("registro.jsp");
        boolean erro = true;
        
        
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        if(nome.equals("")){
            request.setAttribute("erro", erro);
            request.setAttribute("msgErro", "Nome Invalido!");
            dispatcher.forward(request, response);
            return;
        }
        if(senha.length() < 5){
            request.setAttribute("erro", erro);
            request.setAttribute("msgErro", "Senha invalida!");
            dispatcher.forward(request, response);
            return;
        }
        
        if(email.equals("")||!Util.isValidEmailAddress(email)){
            request.setAttribute("erro", erro);
            request.setAttribute("msgErro", "Email Invalido!");
            dispatcher.forward(request, response);
            return;
        }
        if(usuarioFacade.findEmailTest(email)){
            request.setAttribute("erro", erro);
            request.setAttribute("msgErro", "Este email ja esta cadastrado!");
            dispatcher.forward(request, response);
            return;
        }
        try {
            senha = Util.hashSenha(senha);
        } catch (NoSuchAlgorithmException ex) {
            String log = Logger.getLogger(RegistroController.class.getName()).toString();
            request.setAttribute("erro", erro);
            request.setAttribute("msgErro", log);
            dispatcher.forward(request, response);
            return;
        }
        nome = Util.maiuscula(nome);
        Date dataCadastro = new Date();
        Usuario usuario = new Usuario(nome, email, senha, dataCadastro);
        try {
            usuarioFacade.create(usuario);
            RequestDispatcher d = request.getRequestDispatcher("login.jsp");
            d.forward(request, response);
        } catch (EJBException ex) {
            request.setAttribute("erro", erro);
            request.setAttribute("msgErro", "Ocorreu um erro ao registrar.<br>"+ex.getMessage());
            dispatcher.forward(request, response);
        }
        
    }
}
