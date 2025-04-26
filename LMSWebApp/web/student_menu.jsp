<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Login Page</title>

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
        }
        .card {
            background: rgba(255, 255, 255, 0.3);
            border: none;
            border-radius: 20px;
            backdrop-filter: blur(12px);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.25);
            padding: 40px 30px;
            text-align: center;
            width: 100%;
            max-width: 400px;
        }
        .card-title {
            font-size: 2rem;
            font-weight: bold;
            color: #ffffff;
        }
        .card-text {
            font-size: 18px;
            color: #f0f0f0;
            margin-top: 10px;
            margin-bottom: 25px;
        }
        .form-control {
            background: rgba(255, 255, 255, 0.7);
            border-radius: 30px;
            border: none;
            padding: 10px 15px;
            margin-bottom: 20px;
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
            <i class="fas fa-user-graduate icon"></i>
            <h1 class="card-title">Student Login</h1>
            <p class="card-text">Enter the following details:</p>

            <form action="StudentsLoginServlet" method="POST">
                <input type="text" name="username" class="form-control" placeholder="Username" required>
                <input type="password" name="password" class="form-control" placeholder="Password" required>
                <button type="submit" class="btn btn-custom">
                    <i class="fas fa-sign-in-alt"></i> Log In
                </button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
