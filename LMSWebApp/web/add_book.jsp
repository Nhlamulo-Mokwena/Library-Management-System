<%-- 
    Document   : add_book
    Created on : Apr 26, 2025, 4:45:28 PM
    Author     : Munyadziwa Petrus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book Page</title>

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
        }
        .form-container {
            background: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(12px);
            border-radius: 20px;
            padding: 40px 30px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.25);
            width: 100%;
            max-width: 500px;
            text-align: center;
        }
        h1, h3 {
            color: #ffffff;
            margin-bottom: 20px;
        }
        .form-control {
            border-radius: 30px;
            padding: 10px 20px;
            margin-bottom: 15px;
            border: none;
            outline: none;
        }
        .form-control::placeholder {
            color: #8e2de2;
            font-weight: 500;
        }
        .btn-custom {
            background-color: #ffffff;
            color: #8e2de2;
            border-radius: 30px;
            padding: 10px 20px;
            font-weight: bold;
            width: 100%;
            transition: all 0.3s ease;
            text-transform: uppercase;
        }
        .btn-custom:hover {
            background-color: #8e2de2;
            color: #ffffff;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h1><i class="fas fa-book-medical"></i> Add a Book</h1>
        <h3>Fill the form below to add a new book</h3>

        <form action="AddBookServlet" method="POST">
            <div class="mb-3">
                <input type="text" name="bookName" class="form-control" placeholder="Book Name" required>
            </div>
            <div class="mb-3">
                <input type="text" name="bookCategory" class="form-control" placeholder="Book Category" required>
            </div>
            <div class="mb-3">
                <input type="text" name="shelfID" class="form-control" placeholder="Shelf Number" required>
            </div>
            <div class="mb-3">
                <input type="number" name="bookQuantity" class="form-control" placeholder="Book Quantity" required>
            </div>
            <div class="mb-3">
                <button type="submit" class="btn btn-custom">
                    <i class="fas fa-plus"></i> Add Book
                </button>
            </div>
        </form>
    </div>

    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
