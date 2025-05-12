<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Remove Book Outcome</title>

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
        .outcome-container {
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
            margin-bottom: 20px;
            color: #ffffff;
        }
        p {
            font-size: 1.1rem;
            margin-bottom: 20px;
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
        }
        .btn-custom:hover {
            background-color: #8e2de2;
            color: #ffffff;
            transform: scale(1.03);
        }
        .icon-success {
            font-size: 60px;
            margin-bottom: 20px;
            color: #ffffff;
            animation: bounce 2s ease-in-out infinite;
        }
        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-12px); }
        }
    </style>
</head>
<body>

    <div class="outcome-container">
        <i class="fas fa-check-circle icon-success"></i>
        <h1>Book Removed!</h1>
        <p>Book successfully removed from the system.</p>
        <a href="admin_home.jsp" class="btn-custom">
            <i class="fas fa-home"></i> Return Home
        </a>
    </div>
        <div style="margin-top: 20px;">
    <form action="remove_book.jsp" method="get">
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
