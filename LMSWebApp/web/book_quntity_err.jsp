<%-- 
    Document   : book_quntity_err
    Created on : Apr 28, 2025, 6:21:29 PM
    Author     : Nhlamulo_M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Quantity Error Page</title>
    </head>
    <body>
        <h1>Book Quantity</h1>
        <%
            String msg = (String)request.getAttribute("message");
        %>
        <p>
            <%=msg%> the quantity of the book is zero(0) <br>
            please check the list of all books to see available books
        </p>
        <p>
            <a href="StudentViewBooks">View List</a>
        </p>
    </body>
</html>
