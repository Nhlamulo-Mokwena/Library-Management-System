/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities.bl;

import entities.BookShelf;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Nhlamulo_M
 */
@Stateless
public class BookShelfFacade extends AbstractFacade<BookShelf> implements BookShelfFacadeLocal {

    @PersistenceContext(unitName = "LMSEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BookShelfFacade() {
        super(BookShelf.class);
    }
    
}
