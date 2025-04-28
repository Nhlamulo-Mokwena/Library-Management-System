<%@page import="entities.BookShelf"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Request Books Page</title>

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
            padding: 20px;
            overflow: auto;
        }
        .card {
            background: rgba(255, 255, 255, 0.3);
            border: none;
            border-radius: 20px;
            backdrop-filter: blur(12px);
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.25);
            padding: 30px;
            width: 100%;
            max-width: 700px;
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
        .form-control, .form-select {
            border-radius: 30px;
            padding: 10px 20px;
            margin-bottom: 15px;
        }
        .btn-custom {
            background-color: #ffffff;
            color: #8e2de2;
            border-radius: 30px;
            padding: 10px 30px;
            font-weight: bold;
            text-transform: uppercase;
            transition: all 0.3s ease;
            margin-top: 10px;
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
            <i class="fas fa-book-open icon"></i>
            <h1 class="card-title">Request Books</h1>

            <%
                List<BookShelf> list = (List<BookShelf>) request.getAttribute("list");
            %>

            <p class="card-text">
                NB: You can only request a maximum of 2 books.
            </p>

            <form action="RequestBooksServlet" method="POST" class="text-start">
                <div class="mb-3">
                    <label class="form-label text-white">Student Number:</label>
                    <input type="text" name="stud_no" class="form-control" required/>
                </div>

                <div class="mb-3">
                    <label class="form-label text-white">Name:</label>
                    <input type="text" name="name" class="form-control" required/>
                </div>

                <div class="mb-3">
                    <label class="form-label text-white">Surname:</label>
                    <input type="text" name="surname" class="form-control" required/>
                </div>

                <div class="mb-3">
                    <label class="form-label text-white">First Book:</label>
                    <select name="book1" class="form-select" required>
                        <%
                            for(BookShelf bs : list){
                        %>
                        <option value="<%=bs.getId()%>"><%=bs.getBook().getName()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label text-white">Second Book:</label>
                    <select name="book2" class="form-select" required>
                        <%
                            for(BookShelf bs : list){
                        %>
                        <option value="<%=bs.getId()%>"><%=bs.getBook().getName()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-custom">
                        <i class="fas fa-paper-plane"></i> Submit
                    </button>
                </div>
            </form>

        </div>
    </div>

    <!-- Bootstrap JS Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
