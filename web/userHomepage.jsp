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
        <!-- Navbar End -->

        <!-- Blog Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <div class="row">
                    <div class="col-lg-8">
                        <h3 class="text-uppercase mb-4"
                            style="text-align: center;">Tài liệu đã xem gần đây</h3>
                        <div class="row pb-3"
                            style="display: flex; justify-content: flex-start;">
                            <div class="col-lg-6 mb-4">
                                <div class="rounded overflow-hidden mb-2">
                                    <img class="img-fluid"
                                        src="img/PNG/image.png" alt>
                                    <div class="bg-secondary p-4">
                                        <a class="h5"
                                            href="documentDetail.jsp">Đề thi
                                            tốt nghiệp THPT 2024 môn tiếng
                                            Anh</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="rounded overflow-hidden mb-2">
                                    <img class="img-fluid"
                                        src="img/PNG/image.png" alt>
                                    <div class="bg-secondary p-4">
                                        <a class="h5"
                                            href="documentDetail.jsp">Đề thi
                                            tốt nghiệp THPT 2024 môn tiếng
                                            Anh</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="rounded overflow-hidden mb-2">
                                    <img class="img-fluid"
                                        src="img/PNG/image.png" alt>
                                    <div class="bg-secondary p-4">
                                        <a class="h5"
                                            href="documentDetail.jsp">Đề thi
                                            tốt nghiệp THPT 2024 môn tiếng
                                            Anh</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="rounded overflow-hidden mb-2">
                                    <img class="img-fluid"
                                        src="img/PNG/image.png" alt>
                                    <div class="bg-secondary p-4">
                                        <a class="h5"
                                            href="documentDetail.jsp">Đề thi
                                            tốt nghiệp THPT 2024 môn tiếng
                                            Anh</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="rounded overflow-hidden mb-2">
                                    <img class="img-fluid"
                                        src="img/PNG/image.png" alt>
                                    <div class="bg-secondary p-4">
                                        <a class="h5"
                                            href="documentDetail.jsp">Đề thi
                                            tốt nghiệp THPT 2024 môn tiếng
                                            Anh</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <nav aria-label="Page navigation">
                                    <ul
                                        class="pagination pagination-lg justify-content-center mb-0">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#"
                                                aria-label="Previous">
                                                <span
                                                    aria-hidden="true">&laquo;</span>
                                                <span
                                                    class="sr-only">Previous</span>
                                            </a>
                                        </li>
                                        <li class="page-item active"><a
                                                class="page-link"
                                                href="#">1</a></li>
                                        <li class="page-item"><a
                                                class="page-link"
                                                href="#">2</a></li>
                                        <li class="page-item"><a
                                                class="page-link"
                                                href="#">3</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#"
                                                aria-label="Next">
                                                <span
                                                    aria-hidden="true">&raquo;</span>
                                                <span
                                                    class="sr-only">Next</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 mt-5 mt-lg-0">

                        <!-- Author Bio -->
                        <div class="text-center rounded mb-5 py-5 px-4"
                            style="display: flex; flex-direction: column; align-items: center; margin: auto; gap: 15px; border: 2px solid #ff6600; border-radius: 30px !important; margin-top: 55px;">
                            <img
                                src="https://static.vecteezy.com/system/resources/thumbnails/037/336/395/small/user-profile-flat-illustration-avatar-person-icon-gender-neutral-silhouette-profile-picture-free-vector.jpg"
                                class="img-fluid rounded-circle"
                                style="width: 50%;">
                            <h3 class style="color: #44425a;">Tên</h3>
                            <a class="btn btn-primary"
                                href="userProfile.jsp">Hồ Sơ</a>
                        </div>

                        <!-- Recent Lesson -->
                        <div class="mb-5">
                            <h3 class="text-uppercase mb-4"
                                style="">Các bài học vừa xem</h3>
                            <a href="flashcard.jsp"><h6 class="text-primary"
                                    style="margin: 10px 0 10px 0;"><b>Bài
                                        1. Tính đơn điệu và cực trị của hàm
                                        số</b></h6></a>
                            <a href="flashcard.jsp"><h6 class="text-primary"
                                    style="margin: 10px 0 10px 0;"><b>Bài
                                        2. Giá trị lớn nhất và giá trị nhỏ
                                        nhất của hàm số</b></h6></a>
                            <a href="flashcard.jsp"><h6 class="text-primary"
                                    style="margin: 10px 0 10px 0;"><b>Bài
                                        3. Đường tiệm cận của đồ thị hàm
                                        số</b></h6></a>
                        </div>

                        <!-- Recent Course -->
                        <div class="mb-5">
                            <h3 class="text-uppercase mb-4"
                                style="">Các bài ôn tập vừa xem</h3>
                            <a
                                class="d-flex align-items-center text-decoration-none mb-3"
                                href
                                style="background-color: #f2f1f8; border-radius: 10px; padding: 10px;">
                                <div class="pl-3">
                                    <h6 class="m-1">Diam lorem dolore justo
                                        eirmod lorem dolore</h6>
                                </div>
                            </a>
                            <a
                                class="d-flex align-items-center text-decoration-none mb-3"
                                href
                                style="background-color: #f2f1f8; border-radius: 10px; padding: 10px;">
                                <div class="pl-3">
                                    <h6 class="m-1">Diam lorem dolore justo
                                        eirmod lorem dolore</h6>
                                </div>
                            </a>
                            <a
                                class="d-flex align-items-center text-decoration-none mb-3"
                                href
                                style="background-color: #f2f1f8; border-radius: 10px; padding: 10px;">
                                <div class="pl-3">
                                    <h6 class="m-1">Diam lorem dolore justo
                                        eirmod lorem dolore</h6>
                                </div>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Blog End -->


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