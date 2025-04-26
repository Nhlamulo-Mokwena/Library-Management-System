<%-- 
    Document   : admin_home
    Created on : 26 Apr 2025, 3:38:39 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>

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
            padding: 20px;
        }
        .admin-container {
            background: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(12px);
            border-radius: 20px;
            padding: 50px 40px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.25);
            max-width: 500px;
            width: 100%;
        }
        h1 {
            font-size: 2.5rem;
            margin-bottom: 30px;
            color: #ffffff;
        }
        ol {
            list-style: none;
            padding: 0;
        }
        li {
            margin: 20px 0;
        }
        a {
            text-decoration: none;
            background-color: #ffffff;
            color: #8e2de2;
            padding: 12px 25px;
            border-radius: 30px;
            font-weight: bold;
            font-size: 18px;
            display: inline-block;
            transition: all 0.3s ease;
            text-transform: uppercase;
        }
        a:hover {
            background-color: #8e2de2;
            color: #ffffff;
            transform: scale(1.05);
        }
        .admin-icon {
            font-size: 60px;
            margin-bottom: 20px;
            animation: bounce 2s infinite;
            color: #ffffff;
        }
        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-12px); }
        }
    </style>
</head>
<body>

    <div class="admin-container">
        <i class="fas fa-user-shield admin-icon"></i>
        <h1>Welcome Admin </h1>
        <ol>
            <li><a href="add_book.jsp"><i class="fas fa-plus"></i> Add Books</a></li>
            <li><a href="remove_book.jsp"><i class="fas fa-trash"></i> Remove A Book</a></li>
            <li><a href="view_all_books.jsp"><i class="fas fa-eye"></i> View All Books</a></li>
        </ol>
    </div>

    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
