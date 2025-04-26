/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities.bl;

import entities.BookShelf;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Nhlamulo_M
 */
@Local
public interface BookShelfFacadeLocal {

    void create(BookShelf bookShelf);

    void edit(BookShelf bookShelf);

    void remove(BookShelf bookShelf);

    BookShelf find(Object id);

    List<BookShelf> findAll();

    List<BookShelf> findRange(int[] range);

    int count();
    
}
