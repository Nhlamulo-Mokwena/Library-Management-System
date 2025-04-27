<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Remove Book</title>

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
        .remove-container {
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
        .form-control {
            border-radius: 30px;
            padding: 10px 20px;
            border: none;
            margin-bottom: 20px;
            font-size: 16px;
        }
        .btn-custom {
            background-color: #ffffff;
            color: #8e2de2;
            border-radius: 30px;
            padding: 10px 20px;
            font-weight: bold;
            font-size: 16px;
            transition: all 0.3s ease;
            text-transform: uppercase;
            text-decoration: none;
            display: inline-block;
            margin-top: 10px;
        }
        .btn-custom:hover {
            background-color: #8e2de2;
            color: #ffffff;
            transform: scale(1.03);
        }
        .icon-remove {
            font-size: 60px;
            margin-bottom: 20px;
            animation: bounce 2s ease-in-out infinite;
            color: #ffffff;
        }
        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-12px); }
        }
    </style>
</head>
<body>

    <div class="remove-container">
        <i class="fas fa-book-dead icon-remove"></i>
        <h1>Remove Book</h1>
        
        <form action="RemoveBookServlet" method="POST">
            <input type="text" name="bookID" class="form-control" placeholder="Enter Book ID" required>
            <button type="submit" class="btn-custom">
                <i class="fas fa-trash"></i> Remove Book
            </button>
        </form>
    </div>

    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
