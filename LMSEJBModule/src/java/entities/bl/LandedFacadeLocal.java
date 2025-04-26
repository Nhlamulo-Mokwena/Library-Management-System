/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities.bl;

import entities.Landed;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Nhlamulo_M
 */
@Local
public interface LandedFacadeLocal {

    void create(Landed landed);

    void edit(Landed landed);

    void remove(Landed landed);

    Landed find(Object id);

    List<Landed> findAll();

    List<Landed> findRange(int[] range);

    int count();
    
}
