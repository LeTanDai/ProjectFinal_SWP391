<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đổi Mật Khẩu - Online Learning Website</title>
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

        <style>
            .input-wrapper {
                position: relative;
            }

            .input-wrapper .toggle-password {
                position: absolute;
                right: 10px;
                top: 50%;
                transform: translateY(-50%);
                cursor: pointer;
                color: #888;
                font-size: 15px;
            }

            .form-control {
                padding-right: 40px;
                height: 40px;
                box-sizing: border-box;
            }
            .btn-separator{
                margin-left: 15px;
            }

        </style>
    </head>
    <body>
        <!-- Navbar Start -->
        <nav>
            <jsp:include page="menu.jsp" />
        </nav>
        <!-- Navbar End -->

        <div class="container">
            <form class="mt-4" method="post" action="ResetPasswordController">
                <h2 class="text-center mt-5">Đổi Mật Khẩu</h2>
                <p class="text-success">${mess}</p>
                <p class="text-danger">${error1}</p>
                <p class="text-danger">${error2}</p>

                <div class="form-group">
                    <label for="username">Tên đăng nhập</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Nhập tên đăng nhập" value="${sessionScope.account.userName}" required>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Nhập Gmail của bạn" value="${sessionScope.account.email}" required>
                </div>

                <div class="form-group">
                    <label for="password">Mật khẩu mới</label>
                    <div class="input-wrapper">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu mới" required>
                        <i class="fas fa-eye toggle-password" onclick="togglePassword('password')"></i>
                    </div>
                </div>

                <div class="form-group">
                    <label for="repeatpassword">Nhập lại mật khẩu mới</label>
                    <div class="input-wrapper">
                        <input type="password" class="form-control" id="repeatpassword" name="repeatpassword" placeholder="Nhập lại mật khẩu mới" required>
                        <i class="fas fa-eye toggle-password" onclick="togglePassword('repeatpassword')"></i>
                    </div>
                </div>

                <div class="form-group d-flex justify-content-start mt-4">
                    <button type="submit" class="btn btn-primary">Xác nhận</button>
                    <a href="editProfile.jsp" class="btn btn-primary btn-separator">Quay lại</a>
                </div>
            </form>
        </div>



        <!-- Footer Start -->
        <jsp:include page="footer.jsp" />
        <!-- Footer End -->

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

        <script>
                    function togglePassword(fieldId) {
                        const input = document.getElementById(fieldId);
                        const icon = input.nextElementSibling;

                        if (input.type === 'password') {
                            input.type = 'text';
                            icon.classList.remove('fa-eye');
                            icon.classList.add('fa-eye-slash');
                        } else {
                            input.type = 'password';
                            icon.classList.remove('fa-eye-slash');
                            icon.classList.add('fa-eye');
                        }
                    }
        </script>
    </body>
</html>
