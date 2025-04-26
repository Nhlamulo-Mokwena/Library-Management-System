/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.BookShelf;
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
@WebServlet(name = "AdminViewAllBooks", urlPatterns = {"/AdminViewAllBooks"})
public class AdminViewAllBooks extends HttpServlet {

    

    @EJB
    private BookShelfFacadeLocal bookShelfFacadeLocal;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        List<BookShelf> bookShelfs = bookShelfFacadeLocal.findAll();
        
            request.setAttribute("bookShelfs", bookShelfs);
            RequestDispatcher rd;
            rd  = request.getRequestDispatcher("view_all_book_as_admin.jsp");
            rd.forward(request, response);
       
         
        
        
    }


}
