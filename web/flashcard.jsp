<%-- 
    Document   : newjsp1
    Created on : Oct 11, 2024, 12:50:56 AM
    Author     : lethe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
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
            .user-dropdown {
                position: absolute;
                top: 50px;
                right: 0;
                background-color: white;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                width: 250px;
                border-radius: 8px;
                z-index: 999;
            }

            .user-dropdown .dropdown-content {
                padding: 15px;
            }

            .user-dropdown .user-profile {
                display: flex;
                align-items: center;
                padding-bottom: 10px;
                border-bottom: 1px solid #e0e0e0;
            }

            .user-dropdown .user-profile .user-avatar {
                width: 40px;
                height: 40px;
                border-radius: 50%;
                margin-right: 10px;
            }

            .user-dropdown a {
                display: block;
                padding: 10px 0;
                color: black;
                text-decoration: none;
            }

            .user-dropdown a:hover {
                background-color: #f1f1f1;
            }

            .flashcard-container {
                perspective: 1000px;
                text-align: center;
                width: 57%;
                margin: 50px auto;
            }
            .flashcard {
                width: 100%;
                height: 300px;
                background-color: white;
                border: 2px solid #ff6600;
                border-radius: 15px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;
                transition: transform 0.6s;
                transform-style: preserve-3d;
                position: relative;
                cursor: pointer;
            }
            .flashcard.is-flipped {
                transform: rotateY(180deg);
            }
            .flashcard-content {
                position: absolute;
                backface-visibility: hidden;
                padding: 20px;
            }
            .flashcard-back {
                transform: rotateY(180deg);
            }
            .arrow {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                font-size: 24px;
                cursor: pointer;
                user-select: none;
                color: #ff6600;
                background-color: white;
            }
            .arrow-left {
                left: -40px;
            }
            .arrow-right {
                right: -40px;
            }
            .card-counter {
                margin-top: 15px;
                font-size: 18px;
                color: #333;
            }
            .card-title {
                font-size: 24px;
                font-weight: bold;
                margin-bottom: 10px;
            }
        </style>
    </head>

    <body>
        <!-- Navbar start-->
        <nav class="container-fluid sticky-top bg-white">
            <div class="row border-top-logo px-xl-5">
                <div class="col-lg-3-logo">
                    <a href="index.jsp">
                        <img class="img-fluid-cat" src="img/Logo.png" alt="ECOURSES Logo" style="width: 20%; height: auto;">
                    </a>
                </div>
                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg navbar-light navbar-link bg-light navbar-light py-3 py-lg-0 px-0">
                        <a href class="text-decoration-none d-block d-lg-none">
                            <h1 class="m-0"><span class="text-primary">E</span>COURSES</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav py-0">
                                <a href="index.jsp" class="nav-item nav-link active">Trang Chủ</a>
                                <div class="nav-item dropdown">
                                    <a href="course.jsp" class="nav-link dropdown-toggle" data-toggle="dropdown">Môn Học</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="course.jsp" class="dropdown-item">Lớp 10</a>
                                        <a href="course.jsp" class="dropdown-item">Lớp 11</a>
                                        <a href="course.jsp" class="dropdown-item">Lớp 12</a>
                                    </div>
                                </div>
                                <a href="document.jsp" class="nav-item nav-link">Tài Liệu</a>
                                <a href="flashcardList.jsp" class="nav-item nav-link">Ôn tập</a>
                                <a href="payment.jsp" class="nav-item nav-link ">Nâng cấp</a>
                            </div>

                            <div class="group-search">
                                <svg viewBox="0 0 24 24" aria-hidden="true" class="search-icon">
                                <g>
                                <path d="M21.53 20.47l-3.66-3.66C19.195 15.24 20 13.214 20 11c0-4.97-4.03-9-9-9s-9 4.03-9 9 4.03 9 9 9c2.215 0 4.24-.804 5.808-2.13l3.66 3.66c.147.146.34.22.53.22s.385-.073.53-.22c.295-.293.295-.767.002-1.06zM3.5 11c0-4.135 3.365-7.5 7.5-7.5s7.5 3.365 7.5 7.5-3.365 7.5-7.5 7.5-7.5-3.365-7.5-7.5z"></path>
                                </g>
                                </svg>
                                <input id="query" class="input-search" type="search" placeholder="Search..." name="searchbar" />
                            </div>

                            <!-- Icon User -->
                            <a href="userProfile.jsp" id="userProfile" class="nav-item nav-link">
                                <img src="https://www.phanmemninja.com/wp-content/uploads/2023/06/avatar-facebook-nam-vo-danh.jpeg" alt="User Avatar" class="img-fluid" style="width: 40px; height: 40px; border-radius: 50%;">
                            </a>
                            <div id="userDropdown" class="user-dropdown" style="display: none;">
                                <div class="dropdown-content">
                                    <div class="user-profile">
                                        <img src="https://www.phanmemninja.com/wp-content/uploads/2023/06/avatar-facebook-nam-vo-danh.jpeg" alt="User Avatar" class="user-avatar">
                                        <span>Le Tan Dai</span>
                                    </div>
                                    <a href="userProfile.jsp">
                                        <i class="fas fa-user-circle"></i> Thông tin cá nhân
                                    </a>
                                    <a href="#">
                                        <i class="fas fa-sign-out-alt"></i> Đăng xuất
                                    </a>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </nav>
        <!-- Navbar End -->

        <!-- Detail Start -->
        <div class="container-fluid py-5">

            <div class="row">
                <div class="col-lg-10">
                    <!-- Flash Card Slider Start -->
                    <div class="flashcard-container">
                        <div class="arrow arrow-left" onclick="prevCard()">&#10094;</div>
                        <div class="flashcard" onclick="flipCard()">
                            <div class="flashcard-content flashcard-front">
                                <div class="flashcard-item">
                                    <div class="card-title">Question 1</div>
                                    <div>What is the capital of France?</div>
                                </div>
                                <div class="flashcard-item">
                                    <div class="card-title">Question 2</div>
                                    <div>What is the largest planet in our solar system?</div>
                                </div>
                                <div class="flashcard-item">
                                    <div class="card-title">Question 3</div>
                                    <div>Who wrote "Romeo and Juliet"?</div>
                                </div>
                                <div class="flashcard-item">
                                    <div class="card-title">Question 4</div>
                                    <div>1 + 1 = ?</div>
                                </div>
                            </div>
                            <div class="flashcard-content flashcard-back">
                                <div class="flashcard-item">
                                    <div class="card-title">Answer</div>
                                    <div>Paris</div>
                                </div>
                                <div class="flashcard-item">
                                    <div class="card-title">Answer</div>
                                    <div>Jupiter</div>
                                </div>
                                <div class="flashcard-item">
                                    <div class="card-title">Answer</div>
                                    <div>William Shakespeare</div>
                                </div>
                                <div class="flashcard-item">
                                    <div class="card-title">Answer</div>
                                    <div>3</div>
                                </div>
                            </div>
                        </div>
                        <div class="arrow arrow-right" onclick="nextCard()">&#10095;</div>
                    </div>
                    <!-- Flash Card Slider End -->

                    <!-- Question List Section Start -->
                    <div class="question-list">
                        <div class="row d-flex justify-content-between"
                             style="margin: auto;">
                            <h2>Câu hỏi</h2>
                            <a
                                class="btn btn-primary py-2 px-4 ml-auto d-none d-lg-block"
                                href="quiz.jsp"
                                style="width: 200px; height: 40px;">Làm bài kiểm
                                tra</a>
                        </div>

                        <div class="question-item">
                            <div class="question">
                                <strong>Q:</strong> What is the capital of
                                France?
                                <br>
                                <strong>A:</strong><span class> Paris</span>
                            </div>
                        </div>

                        <div class="question-item">
                            <div class="question">
                                <strong>Q:</strong> What is the largest planet
                                in
                                our solar
                                system?
                                <br>
                                <strong>A:</strong><span class> Jupiter</span>
                            </div>
                        </div>

                        <div class="question-item">
                            <div class="question">
                                <strong>Q:</strong> Who wrote
                                "Romeo and Juliet"?
                                <br>
                                <strong>A:</strong><span class> William
                                    Shakespeare</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-2 mt-5 mt-lg-0">
                    <!-- Category List -->
                    <div class="mb-5"
                         style="margin-top: 50px; margin-left: -100px !important;">
                        <h3 class="text-uppercase mb-4"
                            style="letter-spacing: 5px;">Môn Học</h3>
                        <ul class="list-group list-group-flush" style="margin-top: -20px;">
                            <li
                                class="list-group-item d-flex justify-content-between align-items-center px-0">
                                <a href
                                   class="text-decoration-none h6 m-0">Toán</a>
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
        <!-- Detail End -->

        <!-- Footer Start -->
        <div class="container-fluid bg-darks text-white py-5 px-sm-3 px-lg-5" style="margin-top: 90px;">
            <div class="row pt-5">
                <div class="col-lg-12 col-md-12">
                    <div class="row">
                        <div class="col-md-6 mb-5">
                            <h5 class="text-primary text-uppercase mb-4" style="letter-spacing: 5px;">Liên hệ</h5>
                            <p><i class="fa fa-map-marker-alt mr-2"></i>FPT University</p>
                            <p><i class="fa fa-phone-alt mr-2"></i>0342740625</p>
                            <p><i class="fa fa-envelope mr-2"></i>FPTEducation@gmail.com</p>
                            <div class="d-flex justify-content-start mt-4">
                                <a class="btn btn-outline-light btn-square mr-2" href="https://www.facebook.com/profile.php?id=100064175499693"><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-outline-light btn-square mr-2" href="https://www.facebook.com/profile.php?id=100064175499693"><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-outline-light btn-square" href="https://www.facebook.com/profile.php?id=100064175499693"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                        <div class="col-md-6 mb-5">
                            <h5 class="text-primary text-uppercase mb-4" style="letter-spacing: 5px;">Online Learning</h5>
                            <div class="d-flex flex-column justify-content-start">
                                <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Trang chủ</a>
                                <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Môn học</a>
                                <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Tài liệu</a>
                                <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Ôn tập</a>
                                <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Nâng cấp</a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid bg-darks text-white border-top py-4 px-sm-3 px-md-5" style="border-color: rgba(256, 256, 256, .1) !important;">
            <div class="row justify-content-center align-items-center">
                <div class="col-lg-6 text-center">
                    <p class="m-0 text-white">&copy; <a href="#" class="text-white">Online Learning Web Application</a></p>
                </div>
            </div>
        </div>
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

        <script>
                            let currentIndex = 0;
                            let isFlipped = false;

                            const frontItems = document.querySelectorAll('.flashcard-front .flashcard-item');
                            const backItems = document.querySelectorAll('.flashcard-back .flashcard-item');
                            const cardCounter = document.getElementById('card-counter');

                            // Function to update the flashcard display and the card counter
                            function updateFlashcard() {
                                frontItems.forEach((item, index) => {
                                    item.style.display = index === currentIndex ? 'block' : 'none';
                                });
                                backItems.forEach((item, index) => {
                                    item.style.display = index === currentIndex ? 'block' : 'none';
                                });
                                updateCardCounter();
                            }

                            // Function to update the card counter
                            function updateCardCounter() {
                                cardCounter.textContent = `${currentIndex + 1}/${frontItems.length}`;
                                    }

                                    function flipCard() {
                                        const card = document.querySelector('.flashcard');
                                        isFlipped = !isFlipped;
                                        card.classList.toggle('is-flipped', isFlipped);
                                    }

                                    function prevCard() {
                                        currentIndex = (currentIndex - 1 + frontItems.length) % frontItems.length;
                                        isFlipped = false;
                                        document.querySelector('.flashcard').classList.remove('is-flipped');
                                        updateFlashcard();
                                    }

                                    function nextCard() {
                                        currentIndex = (currentIndex + 1) % frontItems.length;
                                        isFlipped = false;
                                        document.querySelector('.flashcard').classList.remove('is-flipped');
                                        updateFlashcard();
                                    }

                                    // Initialize the flashcard and the card counter
                                    updateFlashcard();
        </script>
        <script>
            document.getElementById("userProfile").addEventListener("click", function (event) {
                event.preventDefault();

                var dropdown = document.getElementById("userDropdown");
                if (dropdown.style.display === "none" || dropdown.style.display === "") {
                    dropdown.style.display = "block";
                } else {
                    dropdown.style.display = "none";
                }
            });

            window.addEventListener("click", function (event) {
                var dropdown = document.getElementById("userDropdown");
                var userProfile = document.getElementById("userProfile");

                if (!dropdown.contains(event.target) && !userProfile.contains(event.target)) {
                    dropdown.style.display = "none";
                }
            });

        </script>

    </body>

</html>

