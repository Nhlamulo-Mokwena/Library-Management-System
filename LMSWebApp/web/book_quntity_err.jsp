<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Quantity Error Page</title>

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
            overflow: hidden;
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
            max-width: 600px;
            text-align: center;
        }
        .card-title {
            font-size: 2rem;
            font-weight: bold;
            color: #ffffff;
            margin-bottom: 20px;
        }
        .card-text {
            font-size: 18px;
            color: #f0f0f0;
            margin-bottom: 25px;
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
            <i class="fas fa-exclamation-triangle icon"></i>
            <h1 class="card-title">Book Quantity Error</h1>

            <%
                String msg = (String) request.getAttribute("message");
            %>

            <p class="card-text">
                <%= msg %> The quantity of the book is zero (0).<br>
                Please check the list of all available books.
            </p>

            <a href="StudentViewBooks" class="btn btn-custom">
                <i class="fas fa-book"></i> View List
            </a>

        </div>
    </div>
                    <div style="margin-top: 20px;">
    <form action="add_book.jsp" method="get">
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

    <!-- Bootstrap JS Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
