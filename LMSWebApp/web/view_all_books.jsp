<%-- 
    Document   : view_all_books
    Created on : Apr 26, 2025, 5:34:43 PM
    Author     : Munzhedzi Munyadziwa Petrus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Books Page</title>
    </head>
    <body>
        <h1>View All Books</h1>
        <form action="AdminViewAllBooks" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th>View All Books</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="submit" name="submit" value="View Books"></td>
                    </tr> 
                </tbody>
            </table>

        </form>
    </body>
</html>
