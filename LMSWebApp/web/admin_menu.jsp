<%-- 
    Document   : admin_menu
    Created on : 26 Apr 2025, 3:25:25 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
    </head>
    <body>
        <h1>Admin Log In</h1>
        <h4>
            Enter the following details:
        </h4>
        <form action="AdminLoginServlet" method="POST">
            <table>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" required=""/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="LOG IN"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
