<%-- 
    Document   : view_available_books.jsp
    Created on : Apr 28, 2025, 5:30:30 PM
    Author     : Nhlamulo_M
--%>

<%@page import="java.util.List"%>
<%@page import="entities.BookShelf"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Books Page</title>
    </head>
    <body>
        <h1>View All Available Books</h1>
        <%
            List<BookShelf> list = (List<BookShelf>)request.getAttribute("list");
        %>
        <table border="1">
            <tr>
                <th>ISBN</th>
                <th>BOOK NAME</th>
                <th>CATEGORY</th>
                <th>QUANTITY</th>
                <%
                    for(BookShelf bs : list){
                        %>
                            <tr>
                                <td><%=bs.getBook().getId()%></td>
                                <td><%=bs.getBook().getName()%></td>
                                <td><%=bs.getBook().getCategory()%></td>
                                <th><%=bs.getQuantity()%></th>
                            </tr>
                        <%
                    }
                %>
            </tr>
        </table>
        <p>
            <a href="RequestBooksServlet">Request Books</a>
        </p>
    </body>
</html>
