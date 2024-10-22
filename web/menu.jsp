<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <a href="index.html">
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
                                <a href="index.jsp" class="nav-item nav-link " style="font-weight: bold">Trang Chủ</a>
                                <div class="nav-item dropdown">
                                    <a href="course.jsp" class="nav-link dropdown-toggle" data-toggle="dropdown" style="font-weight: bold">Môn Học</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="CourseServlet?class=10" class="dropdown-item">Lớp 10</a>
                                        <a href="CourseServlet?class=11" class="dropdown-item">Lớp 11</a>
                                        <a href="CourseServlet?class=12" class="dropdown-item">Lớp 12</a>
                                    </div>
                                </div>
                                <a href="document.jsp" class="nav-item nav-link" style="font-weight: bold">Tài Liệu</a>
                                <a href="flashcardList.jsp" class="nav-item nav-link" style="font-weight: bold">Ôn tập</a>
                                <a href="payment.jsp" class="nav-item nav-link " style="font-weight: bold">Nâng cấp</a>
                            </div>


                            <!-- Icon User -->
                            <a href="userProfile.html" id="userProfile" class="nav-item nav-link">
                                <img src="https://www.phanmemninja.com/wp-content/uploads/2023/06/avatar-facebook-nam-vo-danh.jpeg" alt="User Avatar" class="img-fluid" style="width: 40px; height: 40px; border-radius: 50%;">
                            </a>
                            <div id="userDropdown" class="user-dropdown" style="display: none;">
                                <div class="dropdown-content">
                                    <c:if test="${sessionScope.account != null}">
                                    <div class="user-profile">
                                        <img src="https://www.phanmemninja.com/wp-content/uploads/2023/06/avatar-facebook-nam-vo-danh.jpeg" alt="User Avatar" class="user-avatar">
                                        <span>${sessionScope.account.userName}</span>
                                    </div>
                                        <a href="userProfile.jsp">
                                            <i class="fas fa-user-circle"></i> Thông tin cá nhân
                                        </a>

                                        <a href="admin/dashBoard.jsp">
                                            <i class="fas fa-user-circle"></i> Quản Lý
                                        </a>
                                        <a href="logout">
                                            <i class="fas fa-sign-out-alt"></i> Đăng xuất
                                        </a>
                                    </c:if>
                                    <c:if test="${sessionScope.account == null}">
                                        <a href="login.jsp">
                                            <i class="fas fa-sign-out-alt"></i> Đăng nhập
                                        </a>
                                        </c:if>
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
