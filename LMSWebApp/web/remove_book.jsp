<%-- 
    Document   : remove_book
    Created on : Apr 27, 2025, 10:39:01 PM
    Author     : Munzhedzi Munyadziwa Petrus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Book Page</title>
    </head>
    <body>
        <h1>Remove Book!</h1>
        
        <form action="RemoveBookServlet" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th>Remove Book!</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" name="bookID" placeholder="Book Id" required=""></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="submit" value="Remove Book"></td>
                    </tr>
                </tbody>
            </table>


        </form>
    </body>
</html>
