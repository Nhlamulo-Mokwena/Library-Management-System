<%-- 
    Document   : view_all_book_as_admin
    Created on : Apr 26, 2025, 5:45:57 PM
    Author     : Munzhedzi Munyadziwa Petrus
--%>

<%@page import="entities.BookShelf"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Books Page</title>
    </head>
    <body>
        <h1>View All Books</h1>
        <%
            List<BookShelf> bookShelfs = (List<BookShelf>) request.getAttribute("bookShelfs");

        %>

        <table border="1">
            <thead>
                <tr>
                    <th>Book Name</th>
                    <th>Book Category</th>
                    <th>Book Quantity</th>
                </tr>
            </thead>
            <tbody>
                <%                    for (int i = 0; i < bookShelfs.size(); i++) {
                %>
                <tr>
                    <td><%=bookShelfs.get(i).getBook().getName()%></td>
                    <td><%=bookShelfs.get(i).getBook().getCategory()%></td>
                    <td><%=bookShelfs.get(i).getQuantity()%></td>
                </tr>
                <%
                    }
                %>
            </tbody>

        </table>

        <p>Click <a href="admin_home.jsp">here</a> to go back to your menu</p>
    </body>
</html>
