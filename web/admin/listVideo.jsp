<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Learning Website</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">
        <!-- Favicon -->
        <link href="../img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="../css/style.css" rel="stylesheet">
        <style>
            .next-button {
                margin-top: 20px;
                padding: 10px 20px;
                background-color: orange;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
            .video-section {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                text-align: center;
                margin-top: 20px;
            }

            iframe {
                width: 80%;
                height: 600px;
                max-width: 100%;
                border-radius: 10px;
            }

            .video-links {
                margin-top: 20px;
                font-size: 1.2em;
                text-align: left;
                width: 80%;
            }

            .video-links a {
                display: block;
                margin-bottom: 10px;
                color: orange;
                text-decoration: none;
            }

            .video-links a:hover {
                text-decoration: underline;
            }
        </style>
    </head>

    <body>
        <jsp:include page="../menu.jsp"></jsp:include>
        <main>
            <div class="video-section">
                <h4 class="media-heading text-primary" id="video-title">${videotitle}</h4>           
                <iframe id="video-frame" src="${videourl}" frameborder="0" allowfullscreen></iframe>

            </div>
            <p style="margin:10px;">${content}</p>
        </main>
        <jsp:include page="../footer.jsp"></jsp:include>
    </body>

</html>
