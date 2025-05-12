<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Book Request Outcome</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            background: linear-gradient(135deg, #00c6ff 0%, #0072ff 100%);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Poppins', sans-serif;
            padding: 20px;
            overflow: auto;
        }
        .card {
            background: rgba(255, 255, 255, 0.25);
            border: none;
            border-radius: 20px;
            backdrop-filter: blur(15px);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.25);
            padding: 30px;
            width: 100%;
            max-width: 600px;
            text-align: center;
            color: #ffffff;
        }
        .card-title {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .details {
            text-align: left;
            font-size: 1.1rem;
            margin-bottom: 20px;
        }
        .btn-custom {
            background-color: #ffffff;
            color: #0072ff;
            border-radius: 30px;
            padding: 10px 30px;
            font-weight: bold;
            text-transform: uppercase;
            transition: all 0.3s ease;
        }
        .btn-custom:hover {
            background-color: #0072ff;
            color: #ffffff;
            transform: scale(1.05);
        }
        .icon {
            font-size: 60px;
            color: #ffffff;
            margin-bottom: 20px;
            animation: bounce 2s infinite;
        }
        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="card shadow-lg">
            <i class="fas fa-check-circle icon"></i>
            <h1 class="card-title">Request Successful!</h1>

            <%
                Long studNo = (Long)request.getAttribute("stud_no");
                String name = (String)request.getAttribute("name");
                String surname = (String)request.getAttribute("surname");
                String book1 = (String)request.getAttribute("book1");
                String book2 = (String)request.getAttribute("book2");
            %>

            <div class="details">
                <p><strong>Student Number:</strong> <%=studNo%></p>
                <p><strong>Name:</strong> <%=name%></p>
                <p><strong>Surname:</strong> <%=surname%></p>
                <p><strong>Book 1:</strong> <%=book1%></p>
                <p><strong>Book 2:</strong> <%=book2%></p>
            </div>

            <a href="menu.jsp" class="btn btn-custom">
                <i class="fas fa-sign-out-alt"></i> Logout
            </a>
        </div>
    </div>
                <div style="margin-top: 20px;">
    <form action="request_books.jsp" method="get">
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

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
