<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Learning Website</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content name="keywords">
        <meta content name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet">
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

        <link href="css/style.css" rel="stylesheet">
        <style>

            .section-title {
                font-size: 2.5rem;
                font-weight: 700;
                color: #FF8C00;
                margin-bottom: 2rem;
                position: relative;
                padding-bottom: 10px;
                text-align: center;
            }

            .section-title::after {
                content: '';
                width: 80px;
                height: 4px;
                background-color: #FF8C00;
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
                border-radius: 2px;
            }

            .document-item {
                max-width: 575px;
                margin: 0 auto;
            }

            .card {
                border: none;
                border-radius: 15px;
                overflow: hidden;
                transition: all 0.4s ease;
                background-color: #ffffff;
                box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
            }

            .card:hover {
                transform: translateY(-10px);
                box-shadow: 0 12px 30px rgba(0, 0, 0, 0.2);
            }

            .card-body {
                padding: 20px;
            }

            .card-title {
                font-size: 1.5rem;
                font-weight: 700;
                color: #FF8C00;
                margin-bottom: 10px;
            }

            .card-text {
                font-size: 1rem;
                color: #666;
            }

            .btn-view {
                background-color: #FF8C00;
                color: white;
                font-weight: bold;
                padding: 0.5rem 1.5rem;
                border-radius: 30px;
                text-transform: uppercase;
                letter-spacing: 1px;
                transition: background-color 0.3s ease, transform 0.2s ease;
                display: inline-block;
                margin-top: 10px;
            }

            .btn-view:hover {
                background-color: #e67e22;
                transform: translateY(-2px);
                box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
            }

            .image-container {
                width: 100%;
                max-width: 150px;
                margin: 0 auto;
                padding: 5px;
                background-color: #fff;
                border: 2px solid #FF8C00;
                border-radius: 15px;
                box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
            }

            .image-container img {
                width: 100%;
                height: auto;
                display: block;
                border-radius: 10px;
            }

            .sidebar {
                border: 2px solid #fff;
                border-radius: 15px;
                padding: 20px;
                background-color: #fff;
                box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
                margin-bottom: 20px;
            }

            .sidebar-title {
                font-size: 2rem;
                font-weight: 700;
                color: black;
                margin-bottom: 2rem;
                text-align: center;
            }

            .sidebar-icon {
                font-size: 1.5rem;
                color: #FF8C00;
                margin-right: 10px;
            }

            .list-group-item {
                background-color: #ffffff;
                border: none;
                border-radius: 10px;
                margin-bottom: 10px;
                padding: 12px 20px;
                font-weight: 500;
                color: #444;
                transition: all 0.3s ease;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
            }

            .list-group-item:hover {
                background-color: #f9f9f9;
                cursor: pointer;
                transform: translateY(-5px);
                box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            }

            @media (max-width: 768px) {
                .section-title {
                    font-size: 2rem;
                }

                .btn-view {
                    width: 100%;
                    text-align: center;
                    margin-bottom: 15px;
                }

                .image-container {
                    max-width: 90%;
                }

                .col-lg-4 {
                    margin-top: 20px;
                }

                .sidebar-title {
                    font-size: 1.8rem;
                }
            }

        </style>
    </head>

    <body>
        <!--     Navbar start-->
        <jsp:include page="menu.jsp"/>
        <!--     Navbar End -->

        <div class="container-fluid page-header" style="margin-bottom: 90px;">
            <div class="container">
                <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                    <h3 class="display-4 text-white text-uppercase" style="text-align: center">Tài Liệu</h3>
                </div>
            </div>
        </div>
        <!--     Header End -->
        <!-- Main Content Section -->
        <div class="container">
            <div class="row">
                <!-- Left Content: Tài liệu Sách -->
                <div class="col-lg-8">

                    <!-- Document Item with Image -->
                    <div class="document-item card mb-4">
                        <div class="image-container">
                            <img src="https://bizweb.dktcdn.net/thumb/1024x1024/100/362/945/products/kythuatgiainhanhbaitoanhayvakh.jpg?v=1617001458097" alt="Ảnh đại diện của sách Toán 12">
                        </div>
                        <div class="card-body"><h5 class="card-title">Kĩ thuật giải Toán nhanh lớp 12</h5>
                            <p class="card-text">Môn: Toán lớp 12</p>
                            <a href="#" class="btn-view">Xem chi tiết</a>
                        </div>
                    </div>

                    <div class="document-item card mb-4">
                        <div class="image-container">
                            <img src="https://salt.tikicdn.com/cache/550x550/ts/product/a7/77/6c/32fd12553d9547fcb9aabb36ec14e737.png" alt="Ảnh đại diện của sách Toán 12">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Đột phá Tư Duy Toán 12</h5>
                            <p class="card-text">Môn: Toán lớp 12</p>
                            <a href="#" class="btn-view">Xem chi tiết</a>
                        </div>
                    </div>

                    <div class="document-item card mb-4">
                        <div class="image-container">
                            <img src="https://sachhoc.com/image/cache/catalog/LuyenThi/Lop10-12/Chuyen-de-van-dung-cao-mon-toan-500x554.jpg" alt="Ảnh đại diện của sách Toán 12">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Toán Nâng Cao 12</h5>
                            <p class="card-text">Môn: Toán lớp 12</p>
                            <a href="#" class="btn-view">Xem chi tiết</a>
                        </div>
                    </div>

                </div>

                <div class="col-lg-4">
                    <div class="sidebar">
                        <div class="sidebar-title">Danh mục đề thi</div>
                        <ul class="list-group">
                            <li class="list-group-item">
                                <i class="fas fa-pencil-alt sidebar-icon"></i>
                                <a href="documentDetail.jsp">Đề thi thử Toán lớp 12</a>
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-pencil-alt sidebar-icon"></i>
                                <a href="documentDetail.jsp">Đề thi thử Vật lý lớp 12</a>
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-pencil-alt sidebar-icon"></i>
                                <a href="documentDetail.jsp">Đề thi thử Hóa học lớp 12</a>
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-pencil-alt sidebar-icon"></i>
                                <a href="documentDetail.jsp">Đề thi thử Toán lớp 11</a>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>



        <!--         Footer Start -->
        <jsp:include page="footer.jsp"/>
        <!--     Footer End -->


        <!--     Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


        <!--     JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!--     Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!--     Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>
