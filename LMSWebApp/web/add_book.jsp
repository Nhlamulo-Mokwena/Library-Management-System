<%-- 
    Document   : add_book
    Created on : Apr 26, 2025, 4:45:28 PM
    Author     : Munyadziwa Petrus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book Page</title>
    </head>
    <body>
        <h1>Add a Book:</h1>
        <h3>Fill the form below to add a book</h3>
        
        <form action="AddBookServlet" method="POST">
            <table>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Add a Book:</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Book Name: <input type="text" name="bookName" placeholder="Book Name" required></td>
                        </tr>
                        <tr>
                            <td>Book Category: <input type="text" name="bookCategory" placeholder="Book Category" required></td>
                        </tr>
                        <tr>
                            <td>Book Category: <input type="text" name="shelfID" placeholder="Shelf Number" required></td>
                        </tr>
                        <tr>
                            <td>Book Quantity: <input type="text" name="bookQuantity" placeholder="Book Quantity" required></td>
                        </tr>
                        <tr>
                            <td><input type="submit" name="submit" value="Add Book"></td>
                        </tr>
                    </tbody>
                </table>

            </table>
        </form>
    </body>
</html>
