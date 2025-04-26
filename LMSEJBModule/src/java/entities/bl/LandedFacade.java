/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities.bl;

import entities.Landed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Nhlamulo_M
 */
@Stateless
public class LandedFacade extends AbstractFacade<Landed> implements LandedFacadeLocal {

    @PersistenceContext(unitName = "LMSEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public LandedFacade() {
        super(Landed.class);
    }
    
}
