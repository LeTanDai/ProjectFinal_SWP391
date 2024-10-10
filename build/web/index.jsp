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


    </head>

    <body>
        <!-- Navbar start-->
        <jsp:include page="menu.jsp"/>
        <!-- Navbar end-->

        <div class="container-fluid p-0 pb-5 mb-5">
            <div id="header-carousel" class="carousel slide carousel-fade" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#header-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#header-carousel" data-slide-to="1"></li>
                    <li data-target="#header-carousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active" style="height: 100vh;">
                        <img class="position-relative w-100" src="img/pikaso_embed.jpeg" style="height: 100vh; object-fit: cover;">
                        <div class="carousel-caption d-flex align-items-center justify-content-center">
                            <div class="p-5" style="width: 100%; max-width: 900px;">
                                <h5 class="text-white text-uppercase mb-md-3">Best Online Courses</h5>
                                <h1 class="display-3 text-white mb-md-4">Học,học nữa,học mãi</h1>
                                <a href="signup.jsp" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="width: 140px;">Đăng Ký</a>
                                <a href="login.jsp" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="margin-left: 15px; width: 140px;">Đăng Nhập</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item" style="height: 100vh;">
                        <img class="position-relative w-100" src="img/2.jpg" style="height: 100vh; object-fit: cover;">
                        <div class="carousel-caption d-flex align-items-center justify-content-center">
                            <div class="p-5" style="width: 100%; max-width: 900px;">
                                <h5 class="text-white text-uppercase mb-md-3">Best Online Courses</h5>
                                <h1 class="display-3 text-white mb-md-4">Học,học nữa,học mãi</h1>
                                <a href="signup.html" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="width: 140px;">Đăng Ký</a>
                                <a href="login.html" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="margin-left: 15px; width: 140px;">Đăng Nhập</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item" style="height: 100vh;">
                        <img class="position-relative w-100" src="img/banner-3.jpg" style="height: 100vh; object-fit: cover;">
                        <div class="carousel-caption d-flex align-items-center justify-content-center">
                            <div class="p-5" style="width: 100%; max-width: 900px;">
                                <h5 class="text-white text-uppercase mb-md-3">Best Online Courses</h5>
                                <h1 class="display-3 text-white mb-md-4">Học,học nữa,học mãi</h1>
                                <a href="signup.html" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="width: 140px;">Đăng Ký</a>
                                <a href="login.html" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="margin-left: 15px; width: 140px;">Đăng Nhập</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid py-5">
            <div class="container py-5">
                <h1 class="text-center mb-5">CÁC TÍNH NĂNG NỔI BẬT</h1>
                <div class="row">
                    <div class="col-lg-4 text-center">
                        <div class="feature-box bg-warning text-white py-4 rounded">
                            <i class="fas fa-brain fa-8x mb-3"></i>
                            <h4>Học với quiz</h4>
                        </div>
                    </div>
                    <div class="col-lg-4 text-center">
                        <div class="feature-box bg-info text-white py-4 rounded">
                            <i class="fas fa-book-open fa-8x mb-3"></i>
                            <h4>Học với flashcard</h4>
                        </div>
                    </div>
                    <div class="col-lg-4 text-center">
                        <div class="feature-box bg-danger text-white py-4 rounded">
                            <i class="fas fa-play-circle fa-8x mb-3"></i>
                            <h4>Học với video</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid py-5">
            <div class="container py-5">
                <div class="row align-items-center">
                    <div class="col-lg-5">
                        <img class="img-fluid rounded mb-4 mb-lg-0" src="img/about.jpg" alt>
                    </div>
                    <div class="col-lg-7">
                        <div class="text-left mb-4">
                            <h1>Tại sao học online lại cần thiết</h1>
                        </div>
                        <p style="text-align: justify;">
                            Trong thời đại công nghệ số ngày nay, học online đang trở thành xu hướng phổ biến và được nhiều người lựa chọn. Việc học online 
                            không chỉ tiết kiệm thời gian và chi phí, mà còn giúp cho chúng ta có thể học bất cứ lúc nào và ở bất cứ đâu mà không bị gián đoạn bởi 
                            những rào cản địa lý hay thời gian. Ngoài ra, học online còn cung cấp cho chúng ta một phạm vi kiến thức đa dạng và phong phú từ nhiều nguồn 
                            tài liệu khác nhau, giúp cho chúng ta có thể học tập hiệu quả hơn và nâng cao kiến thức của mình. Do đó, học online đang là lựa chọn thông minh
                            và đáng để các bạn học sinh, sinh viên và những người muốn nâng cao trình độ của mình lựa chọn.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid py-5 bg-light">
            <div class="container py-5">
                <div class="row">
                    <div class="col-lg-12 text-center mb-4">
                        <h1 class="display-5">Liên hệ với chúng tôi</h1>
                    </div>

                    <!-- Contact Information Cards -->
                    <div class="col-lg-4 mb-4">
                        <div class="card h-100 text-center">
                            <div class="card-body">
                                <i class="fas fa-map-marker-alt fa-2x mb-3 text-primary"></i>
                                <h4 class="card-title">Địa chỉ</h4>
                                <p class="card-text">FPT University</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 mb-4">
                        <div class="card h-100 text-center">
                            <div class="card-body">
                                <i class="fas fa-phone-alt fa-2x mb-3 text-primary"></i>
                                <h4 class="card-title">Điện thoại</h4>
                                <p class="card-text"><a href="tel:+84901234567" class="text-dark">+84 342740625</a></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 mb-4">
                        <div class="card h-100 text-center">
                            <div class="card-body">
                                <i class="fas fa-envelope fa-2x mb-3 text-primary"></i>
                                <h4 class="card-title">Email</h4>
                                <p class="card-text"><a href="mailto:info@example.com" class="text-dark">FPTEducation@gmail.com</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mt-5">
                    <div class="col-lg-12">
                        <div class="embed-responsive embed-responsive-16by9 shadow-lg" style="max-width: 850px; max-height: 500px; margin: 0 auto;">
                            <iframe class="embed-responsive-item" 
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.041103512562!2d106.69297931458808!3d10.762622992330758!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f35f0af147d%3A0x4d35ad2f362b5c0e!2zQ2FybmVnaWUgSG90ZWwgU2FpZ29u!5e0!3m2!1sen!2s!4v1644342378885!5m2!1sen!2s" 
                                    width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        </div>
                    </div>
                </div>

            </div>
        </div>


        <!--Footer Start -->
        <jsp:include page="footer.jsp"/>
        <!-- Footer End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
                class="fa fa-angle-double-up"></i></a>

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