/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pollock.models;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

/**
 *
 * @author fernando
 */
@Stateless
public class UsuarioFacade extends AbstractFacade<Usuario> {
    @PersistenceContext(unitName = "PollockPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }
    
    public boolean findEmailTest(String email){
        boolean exist = false;
        try {
            findByEmail(email);
            exist = true;
        } catch (NoResultException e) {
            exist = false;
        }        
        return exist;
    }
    
    public Usuario findByEmail(String email) {
        return this.em
        .createNamedQuery("Usuario.buscaPorEmail", Usuario.class)
        .setParameter("email", email)
        .getSingleResult();
    }
}
