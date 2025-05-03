/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Book;
import entities.BookShelf;
import entities.bl.BookFacadeLocal;
import entities.bl.BookShelfFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Munzhedzi Munyadziwa Petrus
 */
@WebServlet(name = "RemoveBookServlet", urlPatterns = {"/RemoveBookServlet"})
public class RemoveBookServlet extends HttpServlet {

    

    @EJB
    private BookShelfFacadeLocal bookShelfFacadeLocal;
    @EJB
    private BookFacadeLocal bookFacadeLocal;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        Long bookId  = Long.parseLong(request.getParameter("bookID"));
        Book book = bookFacadeLocal.find(bookId);
        
        List<BookShelf> bookShelfs = bookShelfFacadeLocal.findAll();
        
        if (book != null) {
        // Get all bookshelves
        
        java.util.List<entities.BookShelf> shelves = bookShelfFacadeLocal.findAll();

        for (int i = 0; i < shelves.size(); i++) {
            entities.BookShelf shelf = shelves.get(i);

            if (shelf.getBook() != null && shelf.getBook().getId().equals(book.getId())) {
                
                bookShelfFacadeLocal.remove(shelf);  // Update shelf
                break;  // Exit the loop once found
            }
        }

        // Now safe to remove the book
        bookFacadeLocal.remove(book);

        // Forward to outcome page
        RequestDispatcher rd = request.getRequestDispatcher("remove_book_outcome.jsp");
        rd.forward(request, response);
        } else {
        // Optional: Book not found
        response.sendError(HttpServletResponse.SC_NOT_FOUND, "Book not found.");
         }
    }

   
}
