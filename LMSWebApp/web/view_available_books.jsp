<%@page import="java.util.List"%>
<%@page import="entities.BookShelf"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View All Books Page</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            background: linear-gradient(135deg, #8e2de2 0%, #ff6a00 100%);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Poppins', sans-serif;
            overflow: auto;
            padding: 20px;
        }
        .card {
            background: rgba(255, 255, 255, 0.3);
            border: none;
            border-radius: 20px;
            backdrop-filter: blur(12px);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.25);
            padding: 30px;
            width: 100%;
            max-width: 900px;
            text-align: center;
        }
        .card-title {
            font-size: 2rem;
            font-weight: bold;
            color: #ffffff;
            margin-bottom: 30px;
        }
        .table {
            color: #ffffff;
            text-align: center;
        }
        .table thead th {
            background-color: rgba(255, 255, 255, 0.2);
            color: #ffffff;
            font-weight: bold;
        }
        .table tbody td, .table tbody th {
            background-color: rgba(255, 255, 255, 0.1);
        }
        .btn-custom {
            background-color: #ffffff;
            color: #8e2de2;
            border-radius: 30px;
            padding: 10px 20px;
            font-weight: bold;
            text-transform: uppercase;
            transition: all 0.3s ease;
            margin-top: 20px;
            display: inline-block;
        }
        .btn-custom:hover {
            background-color: #8e2de2;
            color: #ffffff;
            transform: scale(1.05);
        }
        .icon {
            font-size: 50px;
            color: #ffffff;
            margin-bottom: 20px;
            animation: bounce 2s infinite;
            display: block;
            text-align: center;
        }
        @keyframes bounce {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="card shadow-lg">
            <i class="fas fa-book-open icon"></i>
            <h1 class="card-title">View All Available Books</h1>

            <div class="table-responsive">
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>ISBN</th>
                            <th>Book Name</th>
                            <th>Category</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<BookShelf> list = (List<BookShelf>) request.getAttribute("list");
                            if (list != null && !list.isEmpty()) {
                                for (BookShelf bs : list) {
                        %>
                        <tr>
                            <td><%= bs.getBook().getId() %></td>
                            <td><%= bs.getBook().getName() %></td>
                            <td><%= bs.getBook().getCategory() %></td>
                            <td><%= bs.getQuantity() %></td>
                        </tr>
                        <%
                                }
                            } else {
                        %>
                        <tr>
                            <td colspan="4">No books available.</td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>

            <a href="RequestBooksServlet" class="btn btn-custom">
                <i class="fas fa-book-reader"></i> Request Books
            </a>

        </div>
    </div>

    <!-- Bootstrap JS Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
