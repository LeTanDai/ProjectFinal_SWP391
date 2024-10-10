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
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Navbar Start -->
    <jsp:include page="menu.jsp"/>
    <!-- Navbar End -->

    <!-- Header Start -->
    <div class="container-fluid" style="margin-bottom: 90px;">
        <div class="container">
                <h3 class="display-4 text-dark text-uppercase">Đề thi</h3>
                <div class="d-inline-flex text-dark">
                    <p class="m-0 text-uppercase"><a class="text-dark" href="">Trang chủ</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Đề thi</p>
                </div>

        </div>
    </div>
    <!-- Header End -->


    <div class="container-fluid py-5">
        <div class="row">
            <div class="col-lg-9"
                style="margin-top: 50px; max-width: 1000px;
            margin-left: auto;">
                <iframe src="files/Tieng-Anh_-De-thi-chinh-thuc_K24_Ma-de-thi-402.pdf" type="application/docx" frameborder="1" width="100%" height="1000px"></iframe>
            </div>

            <div class="col-lg-3 mt-5 mt-lg-0">
                <!-- Category List -->
                <div class="mb-5" style="margin-top: 50px; ">
                    <h3 class="text-uppercase mb-4"
                        style="letter-spacing: 5px;">Môn Học</h3>
                    <ul class="list-group list-group-flush" style="margin-top: -20px;">
                        <li
                            class="list-group-item d-flex justify-content-between align-items-center px-0">
                            <a href
                                class="text-decoration-none h6 m-0">Toán Học</a>
                        </li>
                        <li
                            class="list-group-item d-flex justify-content-between align-items-center px-0">
                            <a href class="text-decoration-none h6 m-0">Vật
                                Lý</a>
                        </li>
                        <li
                            class="list-group-item d-flex justify-content-between align-items-center px-0">
                            <a href class="text-decoration-none h6 m-0">Hóa
                                Học</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <!-- Footer Start -->
    <jsp:include page="footer.jsp"/>  
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>