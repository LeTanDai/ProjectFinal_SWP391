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
            body {
                background-color: #f4f4f4;
            }

            .filter-container {
                border-radius: 8px;
                padding: 20px;
                background-color: #fff;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }

            .filter-header {
                font-weight: bold;
                font-size: 1.5em;
                color: #333;
                margin-bottom: 20px;
                text-align: center;
            }

            .filter-section label {
                margin-bottom: 10px;
                cursor: pointer;
            }

            .filter-section input[type="checkbox"] {
                margin-right: 10px;
            }

            .content-container {
                background-color: #fff;
                border-radius: 8px;
                padding: 20px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }

            .lesson-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
                gap: 20px;
                grid-auto-rows: 1fr;
            }

            .lesson {
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                align-items: center;
                padding: 15px;
                border: 1px solid #ddd;
                border-radius: 8px;
                background-color: #f9f9f9;
                text-align: center;
                transition: background-color 0.3s, transform 0.3s;
                cursor: pointer;
                height: 100%;
            }


            .lesson:hover {
                background-color: #e7f3fe;
                transform: translateY(-2px);
            }

            .lesson-title {
                font-weight: bold;
                color: #007bff;
                font-size: 1.2em;
                margin-bottom: 10px;
                min-height: 50px;
                /* Chiều cao tối thiểu */
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .lesson a {
                color: inherit;
                text-decoration: none;
            }

            .lesson-description {
                color: #555;
                font-size: 0.9em;
                min-height: 60px;
                display: flex;
                align-items: center;
                justify-content: center;
                text-align: center;
            }
        </style>


</head>
<body>
    <jsp:include page="menu.jsp"/>
    <div class="container-fluid page-header" style="margin-bottom: 90px;">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase">Ôn tập</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Trang chủ</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Tài liệu</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid py-5" style="padding-left: 15%;">
        <div class="container pt-5 pb-3">
            <div class="row">
                <div class="col-lg-3 col-md-6 mb-4">
                    <div class="cat-item position-relative overflow-hidden rounded mb-2">
                        <img class="img-fluid-cat" src="img/phuong-phap-hoc-toan-hieu-qua-thumb.jpeg" alt="">
                        <a class="cat-overlay text-white text-decoration-none" href="courselist.jsp">
                            <h3 class="text-white font-weight-medium">Toán Học</h3>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-4">
                    <div class="cat-item position-relative overflow-hidden rounded mb-2">
                        <img class="img-fluid-cat" src="img/Phuong-phap-hoc-tot-mon-Vat-Ly.jpg" alt="">
                        <a class="cat-overlay text-white text-decoration-none" href="courselist.jsp">
                            <h3 class="text-white font-weight-medium">Vật Lý</h3>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-4">
                    <div class="cat-item position-relative overflow-hidden rounded mb-2">
                        <img class="img-fluid-cat" src="img/TU-VUNG-TIENG-ANH-CHUYEN-NGANH-HOA-HOC.jpg" alt="">
                        <a class="cat-overlay text-white text-decoration-none" href="courselist.jsp">
                            <h3 class="text-white font-weight-medium">Hóa Học</h3>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="filter-container">
                    <div class="filter-header">BỘ LỌC TÌM KIẾM</div>

                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Tìm kiếm..." aria-label="Tìm kiếm">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-search"></i></span>
                        </div>
                    </div>

                    <div class="filter-section">
                        <span class="font-weight-bold">Theo Lớp</span>
                        <label class="d-block"><input type="checkbox" class="class-filter" value="10"> Lớp 10</label>
                        <label class="d-block"><input type="checkbox" class="class-filter" value="11"> Lớp 11</label>
                        <label class="d-block"><input type="checkbox" class="class-filter" value="12"> Lớp 12</label>
                    </div>

                    <div class="filter-section">
                        <span class="font-weight-bold">Theo Môn</span>
                        <label class="d-block"><input type="checkbox" class="subject-filter" value="Toán"> Toán</label>
                        <label class="d-block"><input type="checkbox" class="subject-filter" value="Lý"> Lý</label>
                        <label class="d-block"><input type="checkbox" class="subject-filter" value="Hóa"> Hóa</label>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <div class="content-container">
                    <div class="lesson-grid">
                        <div class="lesson" data-class="10" data-subject="Toán">
                            <a href="flashcard.html">
                                <div class="lesson-title">Chương 1</div>
                                <div class="lesson-description">Ôn tập tất cả kiến thức, lý thuyết liên quan đến đạo hàm</div>
                            </a>
                        </div>
                        <div class="lesson" data-class="11" data-subject="Hóa">
                            <a href="flashcard.html">
                                <div class="lesson-title">Chương 1</div>
                                <div class="lesson-description">Tìm hiểu về các định lý cơ bản trong hóa học.
                                </div>
                            </a>
                        </div>
                        <div class="lesson" data-class="12" data-subject="Lý">
                            <a href="flashcard.html">
                                <div class="lesson-title">Chương 1</div>
                                <div class="lesson-description">Khám phá các nguyên lý cơ bản trong vật lý</div>
                            </a>
                        </div>
                        <div class="lesson" data-class="10" data-subject="Hóa">
                            <a href="flashcard.html">
                                <div class="lesson-title">Chương 2</div>
                                <div class="lesson-description">Các kiến thức cần biết cho lớp 10 về hóa học
                                </div>
                            </a>
                        </div>
                        <div class="lesson" data-class="11" data-subject="Toán">
                            <a href="flashcard.html">
                                <div class="lesson-title">Chương 2</div>
                                <div class="lesson-description">Học về định lý Pythagore và ứng dụng của nó
                                </div>
                            </a>
                        </div>
                        <div class="lesson" data-class="12" data-subject="Hóa">
                            <a href="flashcard.html">
                                <div class="lesson-title">Chương 2</div>
                                <div class="lesson-description">Tìm hiểu về các loại phản ứng hóa học</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
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
    <script>
        $(document).ready(function () {
            // Filtering functionality (as in your previous code)
            function filterLessons() {
                const selectedClasses = [];
                const selectedSubjects = [];

                $('.class-filter:checked').each(function () {
                    selectedClasses.push($(this).val());
                });

                $('.subject-filter:checked').each(function () {
                    selectedSubjects.push($(this).val());
                });

                if (selectedClasses.length === 0 && selectedSubjects.length === 0) {
                    $('.lesson').show();
                } else {
                    $('.lesson').each(function () {
                        const lessonClass = $(this).data('class');
                        const lessonSubject = $(this).data('subject');

                        const showClass = selectedClasses.length === 0 || selectedClasses.includes(lessonClass.toString());
                        const showSubject = selectedSubjects.length === 0 || selectedSubjects.includes(lessonSubject);

                        if (showClass && showSubject) {
                            $(this).show();
                        } else {
                            $(this).hide();
                        }
                    });
                }
            }

            $('.class-filter, .subject-filter').change(function () {
                filterLessons();
            });

            filterLessons();
        });
    </script>

</body>
</html>
