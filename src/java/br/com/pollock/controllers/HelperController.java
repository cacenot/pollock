/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pollock.controllers;

import br.com.pollock.models.UsuarioFacade;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fernando
 */
public class HelperController extends HttpServlet {

    @EJB
    private UsuarioFacade usuarioFacade;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        JsonObject json = new JsonObject();
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");
        response.setContentType("application/json");
        if (request.getParameter("email") != null) {
            String email = request.getParameter("email");
            try {
                if (usuarioFacade.findEmailTest(email)) {
                    json.addProperty("valid", Boolean.FALSE);
                    JsonArray ar = new JsonArray();
                    ar.add(json);
                    out.println(ar);
                    return;
                } else {
                    json.addProperty("valid", Boolean.TRUE);
                    out.println(json);
                    return;
                }
            } catch (EJBException ex) {
                json.addProperty("error", Boolean.TRUE);
                out.println(json);
                return;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
