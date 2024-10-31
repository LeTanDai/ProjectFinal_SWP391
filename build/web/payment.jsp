<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

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
            .button-payment {
                background-color: #ff6600;
                color: white;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .button-payment:hover {
                background-color: #e06f12;
            }

            .disabled-button {
                background-color: #ffcc99; 
                cursor: not-allowed;
                opacity: 0.7; 
            }
        </style>
    </head>

    <body>
        <!-- Navbar start-->
        <jsp:include page="menu.jsp"/>
        <!-- Navbar End -->


        <!-- Payment Section Start -->
        <div class="container-payment">
            <div class="row-payment">
                <!-- Card 2 -->
                <div class="card-payment">
                    <div class="header-payment">
                        <span class="title-payment" style="color: #ff6600">Premium</span>
                        <span class="price-payment">30.000VND/tháng</span>
                    </div>
                    <p class="desc-payment">Truy cập không giới hạn khóa học nâng cao.</p>
                    <ul class="lists">
                        <li class="list">✔ Truy cập không giới hạn các bài học VIP</li>
                        <li class="list">✔ Ôn tập bằng các bài test</li>
                        <li class="list">✔ Đọc và tải các tài liệu Premium</li>
                    </ul>
                    <c:if test="${sessionScope.account.isPremium == false}">
                        <a href="/FinalProject_SWP391/checkout" class="btn-container">
                            <button type="button" class="button-payment"style="background-color: #ff6600">Nâng cấp</button>
                        </a>
                    </c:if>

                    <c:if test="${sessionScope.account == null}">
                        <a href="/FinalProject_SWP391/checkout" class="btn-container">
                            <button type="button" class="button-payment"style="background-color: #ff6600">Nâng cấp</button>
                        </a>
                    </c:if>

                    <c:if test="${sessionScope.account != null && sessionScope.account.isPremium == true}">
                        <a class="btn-container">
                            <button type="button" class="button-payment disabled-button" disabled>Nâng cấp</button>
                        </a>
                    </c:if>
                </div>
            </div>
        </div>



        <!-- Footer Start -->
        <jsp:include page="footer.jsp"/>
        <!-- Footer End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
                class="fa fa-angle-double-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>