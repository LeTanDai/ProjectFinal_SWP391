<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Learning Website</title>
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
        </style>
    </head>
    <body>
        <nav class="container-fluid sticky-top bg-white">
            <div class="row border-top-logo px-xl-5">
                <div class="col-lg-3-logo">
                    <a href="index.jsp">
                        <img class="img-fluid-cat" src="img/Logo.png" alt="ECOURSES Logo" style="width: 67px; height: 67px;">
                    </a>
                </div>
                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg navbar-light navbar-link bg-light navbar-light py-3 py-lg-0 px-0">
                      
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
                            <a href="userProfile.html" id="userProfile" class="nav-item nav-link">
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
