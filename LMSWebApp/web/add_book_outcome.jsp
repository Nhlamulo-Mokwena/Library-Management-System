<%-- 
    Document   : add_book_outcome
    Created on : Apr 26, 2025, 5:09:49 PM
    Author     : Munzhedzi Munyadziwa Petrus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book Page</title>
    </head>
    <body>
        <h1>Book Successfully Added :</h1>
        <%
            String bookName = (String) request.getAttribute("bookName");
            String bookCategory = (String) request.getAttribute("bookCategory");
            int bookQuantity = (Integer) request.getAttribute("bookQuantity");
            Long shelfId = (Long) request.getAttribute("shelfID");
        %>
        
        <table>
            <tr>
                <th>Book Name</th>
                <th>Book Category</th>
                <th>Book Quantity</th>
                <th>Shelf ID</th>
            </tr>
            <tr>
                <td><%=bookName%></td>
                <td><%=bookCategory%></td>
                <td><%=bookQuantity%></td>
                <td><%=shelfId%></td>
            </tr>
        </table>
            
            <p>Click <a href="admin_home.jsp">here</a> to go back to your menu</p>
    </body>
</html>
