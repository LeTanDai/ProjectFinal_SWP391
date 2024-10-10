<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
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

        <!-- Icon Font Stylesheet -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
            rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css"
              rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>

        <!-- Navbar start-->
        <jsp:include page="menu.jsp"/>
        <!-- Navbar End -->

        <div class="container-fluid py-5">
            <div class="row">
                <div class="col-lg-9" style="margin-top: 50px; max-width: 1000px; margin-left: auto;">
                    <div class="media search-media">
                        <div class="media-body">
                            <!-- Chapter Header -->
                            <div style="margin: 0 0 15px 0;">
                                <h4 class="media-heading text-primary">Chương 1.
                                    Ứng dụng đạo hàm để khảo sát và vẽ đồ thị
                                    hàm số</h4>
                            </div>

                            <!-- Lesson Links -->
                            <div style="margin-bottom: 10px;">
                                <a href="video.jsp">
                                    <h6 style="margin: 10px 0;"><b>Bài
                                            1. Tính đơn điệu và cực trị của hàm
                                            số</b></h6>
                                </a>
                                <a href="video.jsp">
                                    <h6 style="margin: 10px 0;"><b>Bài
                                            2. Giá trị lớn nhất và giá trị nhỏ
                                            nhất của hàm số</b></h6>
                                </a>
                                <a href="video.jsp">
                                    <h6 style="margin: 10px 0;"><b>Bài
                                            3. Đường tiệm cận của đồ thị hàm
                                            số</b></h6>
                                </a>
                                <a href="video.jsp">
                                    <h6 style="margin: 10px 0;"><b>Bài
                                            4. Khảo sát sự biến thiên và vẽ đồ
                                            thị của hàm số</b></h6>
                                </a>
                                <a href="video.jsp">
                                    <h6 style="margin: 10px 0;"><b>Bài
                                            5. Ứng dụng đạo hàm để giải quyết
                                            một số vấn đề liên quan đến thực
                                            tiễn</b></h6>
                                </a>

                                <!-- Flashcard Link -->
                                <a href="payment.jsp">
                                    <h6 style="margin: 10px 0;">
                                        <b>Bài tập cuối chương 1</b> 
                                        <i class="fa fa-lock"></i>
                                    </h6>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="media search-media">
                        <div class="media-body">
                            <div style="margin: 0 0 15px 0;">
                                <h4 class="media-heading text-primary">Chương 1.
                                    Ứng dụng đạo hàm để khảo sát và vẽ đồ thị
                                    hàm số</h4>
                            </div>
                            <div style="margin-bottom: 10px;">
                                <a href="video.jsp">
                                    <h6 style="margin: 10px 0;"><b>Bài
                                            1. Tính đơn điệu và cực trị của hàm
                                            số</b></h6>
                                </a>
                                <a href="video.jsp">
                                    <h6 style="margin: 10px 0;"><b>Bài
                                            2. Giá trị lớn nhất và giá trị nhỏ
                                            nhất của hàm số</b></h6>
                                </a>
                                <a href="video.jsp">
                                    <h6 style="margin: 10px 0;"><b>Bài
                                            3. Đường tiệm cận của đồ thị hàm
                                            số</b></h6>
                                </a>
                                <a href="video.jsp">
                                    <h6 style="margin: 10px 0;"><b>Bài
                                            4. Khảo sát sự biến thiên và vẽ đồ
                                            thị của hàm số</b></h6>
                                </a>
                                <a href="video.jsp">
                                    <h6 style="margin: 10px 0;"><b>Bài
                                            5. Ứng dụng đạo hàm để giải quyết
                                            một số vấn đề liên quan đến thực
                                            tiễn</b></h6>
                                </a>
                                <a href="payment.jsp">
                                    <h6 style="margin: 10px 0;">
                                        <b>Bài tập cuối chương 1</b> 
                                        <i class="fa fa-lock"></i>
                                    </h6>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- More chapters can be added here following the same structure -->
                </div>


                <div class="col-lg-3 mt-5 mt-lg-0">
                    <!-- Category List -->
                    <div class="mb-5" style="margin-top: 50px; ">
                        <h3 class="text-uppercase mb-4"
                            style="letter-spacing: 5px;">Môn học</h3>
                        <ul class="list-group list-group-flush" style="margin-top: -20px;">
                            <li
                                class="list-group-item d-flex justify-content-between align-items-center px-0">
                                <a href
                                   class="text-decoration-none h6 m-0">Toán Học</a>
                            </li>
                            <li
                                class="list-group-item d-flex justify-content-between align-items-center px-0">
                                <a href class="text-decoration-none h6 m-0">Vật Lý</a>
                            </li>
                            <li
                                class="list-group-item d-flex justify-content-between align-items-center px-0">
                                <a href class="text-decoration-none h6 m-0">Hóa Học</a>
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
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
                class="fa fa-angle-double-up"></i></a>
                
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