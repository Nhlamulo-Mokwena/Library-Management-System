<%-- 
    Document   : view_all_books
    Created on : Apr 26, 2025, 5:34:43 PM
    Author     : Munzhedzi Munyadziwa Petrus
--%>

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
            max-width: 500px;
            width: 100%;
        }
        form {
            margin-top: 20px;
        }
        table {
            width: 100%;
            border: none;
        }
        th {
            font-size: 20px;
            color: #ffffff;
            padding-bottom: 20px;
            text-transform: uppercase;
            background: transparent;
            border: none;
        }
        td {
            border: none;
            background: transparent;
        }
        input[type="submit"] {
            background-color: #ffffff;
            color: #8e2de2;
            border: none;
            padding: 12px 30px;
            border-radius: 30px;
            font-weight: bold;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
        }
        input[type="submit"]:hover {
            background-color: #8e2de2;
            color: #ffffff;
            transform: scale(1.05);
        }
        .icon-view {
            font-size: 50px;
            margin-bottom: 20px;
            animation: bounce 2s infinite;
        }
        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-12px); }
        }
    </style>
</head>
<body>

    <div class="view-container">
        <i class="fas fa-book-reader icon-view"></i>
        <h1>View All Books</h1>

        <form action="AdminViewAllBooks" method="POST">
            <table>
                <thead>
                    <tr>
                        <th>Click below to view all available books</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <input type="submit" name="submit" value="View Books">
                        </td>
                    </tr> 
                </tbody>
            </table>
        </form>
    </div>
        <div style="margin-top: 20px;">
    <form action="menu.jsp" method="get">
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
