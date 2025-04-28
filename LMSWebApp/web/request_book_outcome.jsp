<%-- 
    Document   : request_book_outcome
    Created on : Apr 28, 2025, 6:25:31 PM
    Author     : Nhlamulo_M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Book Request Outcome Page</title>
    </head>
    <body>
        <h1>Student Book Request Outcome</h1>
        <%
            Long studNo = (Long)request.getAttribute("stud_no");
            String name = (String)request.getAttribute("name");
            String surname = (String)request.getAttribute("surname");
            String book1 = (String)request.getAttribute("book1");
            String book2 = (String)request.getAttribute("book2");
        %>
        <p>
            Student number: <b><%=studNo%></b><br>
            Name: <b><%=name%></b><br>
            Surname: <%=surname%><br>
            Book 1: <%=book1%><br>
            Book 2: <%=book2%>
        </p>
        <p>
            Your request was successful.
        </p>
        <p>
            Click <a href="menu.jsp">here</a> to logout
        </p>
    </body>
</html>
