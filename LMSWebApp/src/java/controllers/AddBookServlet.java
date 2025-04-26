/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Book;
import entities.BookShelf;
import entities.bl.BookShelfFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "AddBookServlet", urlPatterns = {"/AddBookServlet"})
public class AddBookServlet extends HttpServlet {

    
    @EJB
    private BookShelfFacadeLocal bookShelfFacadeLocal;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String bookName = request.getParameter("bookName");
        String bookCategory = request.getParameter("bookCategory");
        int bookQuantity = Integer.parseInt(request.getParameter("bookQuantity"));
        Long shelfID  = Long.parseLong(request.getParameter("shelfID"));
        
        
        Book book = new Book(bookName, bookCategory);
        BookShelf bookShelf = new BookShelf(shelfID, book, bookQuantity);
        bookShelfFacadeLocal.create(bookShelf);
        
        request.setAttribute("bookName", bookName);
        request.setAttribute("bookCategory", bookCategory);
        request.setAttribute("bookQuantity", bookQuantity);
        request.setAttribute("shelfID", shelfID);
        
        
        RequestDispatcher rd  = request.getRequestDispatcher("add_book_outcome.jsp");
        rd.forward(request, response);
        
    }

   

}
