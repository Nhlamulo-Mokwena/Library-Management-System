/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Book;
import entities.BookShelf;
import entities.Landed;
import entities.Student;
import entities.bl.BookShelfFacadeLocal;
import entities.bl.LandedFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nhlamulo_M
 */
public class RequestBooksServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @EJB private BookShelfFacadeLocal bsfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List<BookShelf> list = bsfl.findAll();
        
        request.setAttribute("list", list);
        
        RequestDispatcher disp =  request.getRequestDispatcher("request_books.jsp");
        disp.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @EJB private LandedFacadeLocal lfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        Long studNo = Long.parseLong(request.getParameter("stud_no"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        Long book1Shelf = Long.parseLong(request.getParameter("book1"));
        Long book2Shelf = Long.parseLong(request.getParameter("book2"));
        
        BookShelf book1 = bsfl.find(book1Shelf);
        BookShelf book2 = bsfl.find(book2Shelf);
        
        if(book1.getQuantity() != 0 && book2.getQuantity() != 0){
            int book1Quan = book1.getQuantity();
            int book2Quan = book2.getQuantity();
            
            book1Quan = book1Quan - 1;
            book2Quan = book2Quan - 1;
            
            book1.setQuantity(book1Quan);
            book2.setQuantity(book2Quan);
            
            Landed landed = new Landed(studNo, name, surname,book1.getBook().getId(),
                    book2.getBook().getId());
            
            lfl.create(landed);
            
            bsfl.edit(book1);
            bsfl.edit(book2);
            
            request.setAttribute("stud_no", studNo);
            request.setAttribute("name", name);
            request.setAttribute("surname", surname);
            request.setAttribute("book1", book1.getBook().getName());
            request.setAttribute("book2", book2.getBook().getName());
            
            RequestDispatcher disp = request.getRequestDispatcher("request_book_outcome.jsp");
            disp.forward(request, response);
            
        }
        else{
           
            String message = "";
            if(book1.getQuantity() == 0)
                message += book1.getBook().getName() + "\n" ;
            if(book2.getQuantity() == 0)
                message += book2.getBook().getName();
            
            request.setAttribute("message", message);
            
            RequestDispatcher disp = request.getRequestDispatcher("book_quntity_err.jsp");
            disp.forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
