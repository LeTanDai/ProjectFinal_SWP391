<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
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
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <style>
            body, html {
                height: 100%;
                margin: 0;
                font-family: Arial, sans-serif;
            }

            .login-container {
                display: flex;
                height: 100vh;
                padding: auto;
            }

            .login-form {
                background-color: #ffff;
                padding: 150px;
                display: flex;
                flex-direction: column;
                justify-content: center;
            }

            .form-header {
                display: flex;
                align-items: center;
                gap: 10px; /* Space between arrow and text */
            }

            .form-header h3 {
                font-weight: 300;
                margin: 0;
            }

            .form-header h3 span {
                font-weight: 600;
            }

            .form-control {
                margin-bottom: 5px;
            }

            .form-control:focus {
                box-shadow: none;
            }

            .btn-login {
                background-color: #fd7e14;
                color: white;
                border-radius: 5px;
            }

            .btn-login:hover {
                background-color: #e06f12;
            }

            .image-container {
                background-image: url('https://tuyendung.dkpharma.vn/wp-content/uploads/2023/10/ky-nang-lam-viec-nhom.png');
                background-size: contain;
                background-position: center;
                background-repeat: no-repeat;
                width: 700px;
                height: 550px;
            }

            /* Styling for the back arrow button */
            .btn-back {
                background-color: transparent;
                border: none;
                color: #fd7e14;
                font-size: 24px;
                padding: 0;
                cursor: pointer;
            }

            .btn-back:hover {
                color: #e06f12;
            }
            .form-header h3 {
                padding-left: 80px;
            }
            .form-box {
                border: 1px solid #ddd; 
                border-radius: 10px; 
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
                background-color: #fff; 
                padding: 20px; 
            }

        </style>

    </head>
    <body>

        <div class="login-container">
            <div class="col-md-6 login-form">
                <div class="form-box">
                    <div class="container">
                        <div class="form-header">
                            <!-- Back arrow button next to the title -->
                            <a href="login.jsp" class="btn-back">
                                <i class="fas fa-arrow-left"></i>
                            </a>
                            <h3 style="text-align: center">Quên mật khẩu</h3>
                        </div>
                        <p class="text-success">${mess}</p>
                        <p class="text-danger">${error}</p>
                        <form class="form-signin" action="ForgotPasswordController" method="post">
                            <div class="form-group" style="display: flex; flex-direction: column; gap: 5px;">
                                <label for="username">Tên đăng nhập</label>
                                <input name="username" type="text" id="username" class="form-control" placeholder="Nhập tên đăng nhập" required>
                            </div>
                            <div class="form-group" style="display: flex; flex-direction: column; gap: 5px;">
                                <label for="email">Email</label>
                                <input name="email" type="email" id="email" class="form-control" placeholder="Nhập email" required>
                            </div>
                            <button type="submit" class="btn btn-login btn-block w-100 mt-4">Xác nhận</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6 image-container"></div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
