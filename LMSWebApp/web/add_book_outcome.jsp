<%-- 
    Document   : add_book_outcome
    Created on : Apr 26, 2025, 5:09:49 PM
    Author     : Munzhedzi Munyadziwa Petrus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Added Successfully</title>

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
            text-align: center;
        }
        .outcome-container {
            background: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(12px);
            border-radius: 20px;
            padding: 40px 30px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.25);
            max-width: 700px;
            width: 90%;
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
        .icon-success {
            font-size: 60px;
            margin-bottom: 20px;
            animation: pop 1s ease forwards;
        }
        @keyframes pop {
            0% { transform: scale(0.5); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }
    </style>
</head>
<body>

    <div class="outcome-container">
        <i class="fas fa-check-circle icon-success"></i>
        <h1>Book Successfully Added!</h1>

        <%
            String bookName = (String) request.getAttribute("bookName");
            String bookCategory = (String) request.getAttribute("bookCategory");
            int bookQuantity = (Integer) request.getAttribute("bookQuantity");
            Long shelfId = (Long) request.getAttribute("shelfID");
        %>

        <table>
            <thead>
                <tr>
                    <th>Book Name</th>
                    <th>Book Category</th>
                    <th>Book Quantity</th>
                    <th>Shelf ID</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= bookName %></td>
                    <td><%= bookCategory %></td>
                    <td><%= bookQuantity %></td>
                    <td><%= shelfId %></td>
                </tr>
            </tbody>
        </table>

        <a href="admin_home.jsp" class="btn-custom">
            <i class="fas fa-home"></i> Back to Menu
        </a>
    </div>

    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
