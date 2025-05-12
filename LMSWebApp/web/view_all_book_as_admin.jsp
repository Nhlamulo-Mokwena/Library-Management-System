<%-- 
    Document   : view_all_book_as_admin
    Created on : Apr 26, 2025, 5:45:57 PM
    Author     : Munzhedzi Munyadziwa Petrus
--%>

<%@page import="entities.BookShelf"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Books</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            background: linear-gradient(135deg, #8e2de2 0%, #ff6a00 100%);
            height: 100vh;
            margin: 0;
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }
        .view-container {
            background: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(12px);
            border-radius: 20px;
            padding: 40px 30px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.25);
            max-width: 900px;
            width: 100%;
            overflow-x: auto;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            overflow: hidden;
        }
        th, td {
            padding: 15px;
            color: #ffffff;
            text-align: center;
            border-bottom: 1px solid rgba(255, 255, 255, 0.3);
        }
        th {
            background-color: rgba(255, 255, 255, 0.2);
            font-size: 18px;
            text-transform: uppercase;
        }
        tr:hover {
            background-color: rgba(255, 255, 255, 0.1);
            transition: background-color 0.3s ease;
        }
        a.btn-custom {
            margin-top: 20px;
            display: inline-block;
            background-color: #ffffff;
            color: #8e2de2;
            border-radius: 30px;
            padding: 10px 25px;
            font-weight: bold;
            text-decoration: none;
            transition: all 0.3s ease;
            text-transform: uppercase;
        }
        a.btn-custom:hover {
            background-color: #8e2de2;
            color: #ffffff;
            transform: scale(1.05);
        }
        .icon-view {
            font-size: 50px;
            margin-bottom: 20px;
            animation: fadeIn 1s ease forwards;
        }
        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(-20px); }
            100% { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>

    <div class="view-container">
        <i class="fas fa-book icon-view"></i>
        <h1>All Available Books</h1>

        <%
            List<BookShelf> bookShelfs = (List<BookShelf>) request.getAttribute("bookShelfs");
        %>

        <table>
            <thead>
                <tr>
                    <th>Book Name</th>
                    <th>Book Category</th>
                    <th>Book Quantity</th>
                </tr>
            </thead>
            <tbody>
                <% for (int i = 0; i < bookShelfs.size(); i++) { %>
                <tr>
                    <td><%= bookShelfs.get(i).getBook().getName() %></td>
                    <td><%= bookShelfs.get(i).getBook().getCategory() %></td>
                    <td><%= bookShelfs.get(i).getQuantity() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>

        <a href="admin_home.jsp" class="btn-custom">
            <i class="fas fa-arrow-left"></i> Back to Menu
        </a>
    </div>
                <div style="margin-top: 20px;">
    <form action="admin_menu.jsp" method="get">
        <button type="submit" style="
            background-color: #2c3e50;
            color: white;
            padding: 8px 16px;
            border-radius: 4px;
            border: none;
            font-size: 14px;
            cursor: pointer;">
            ← Back
        </button>
    </form>
</div>

    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
