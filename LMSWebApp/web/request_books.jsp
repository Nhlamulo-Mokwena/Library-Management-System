<%-- 
    Document   : request_books
    Created on : Apr 28, 2025, 5:57:42 PM
    Author     : Nhlamulo_M
--%>

<%@page import="entities.BookShelf"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Books Page</title>
    </head>
    <body>
        <h1>Request Books</h1>
        <%
            List<BookShelf> list = (List<BookShelf>)request.getAttribute("list");
        %>
        
        
            <p>
                NB: you can only request a maximum of 2 books:
            </p>
            
            <form action="RequestBooksServlet" method="POST">
                <table>
                    <tr>
                        <td>Student number:</td>
                        <td><input type="text" name="stud_no"/></td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="name"/></td>
                    </tr>
                    <tr>
                        <td>Surname:</td>
                        <td><input type="text" name="surname"/></td>
                    </tr>
                    <tr>
                        <td>First Book: </td>
                        <td>
                            <select name="book1">
                                <%
                                    for(BookShelf bs : list){
                                        %>
                                         <option value="<%=bs.getId()%>"><%=bs.getBook().getName()%></option>
                                        <%
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Second Book: </td>
                        <td>
                            <select name="book2">
                                <%
                                    for(BookShelf bs : list){
                                        %>
                                         <option value="<%=bs.getId()%>"><%=bs.getBook().getName()%></option>
                                        <%
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="SUBMIT"/></td>
                    </tr>
                </table>
            </form>
    </body>
</html>
