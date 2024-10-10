<%-- 
    Document   : paymentNotification
    Created on : Oct 10, 2024, 4:55:52 PM
    Author     : TanDai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Learning Website</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
            rel="stylesheet">

        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet">


        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css"
              rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <style>
            .success-container {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 60vh;
                text-align: center;
                background-color: #f8f9fa;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                margin: 50px auto;
                width: 80%;
                max-width: 600px;
            }

            .success-title {
                font-size: 2rem;
                color: #28a745;
                margin-bottom: 20px;
            }

            .success-message {
                font-size: 1.25rem;
                color: #555;
                margin-bottom: 30px;
            }

            .home-button {
                padding: 10px 20px;
                font-size: 1rem;
                color: #fff;
                background-color: #007bff;
                border: none;
                border-radius: 5px;
                text-decoration: none;
            }

            .home-button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"/>
        <div class="success-container">
            <h2 class="success-title">Payment Successful</h2>
            <p class="success-message">Your payment has been processed successfully!</p>
            <a href="index.jsp" class="home-button">Return to Homepage</a>
        </div>
        <jsp:include page="footer.jsp"/>
        
    </body>
</html>
