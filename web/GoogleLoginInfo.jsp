<%-- 
    Document   : LogInfo
    Created on : Oct 16, 2024, 8:44:21 PM
    Author     : lethe
--%>

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
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
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

        .login-form h3 {
            font-weight: 300;
        }

        .login-form h3 span {
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
            background-image: url('img/free-remote-learning-illustration-b7ilq.webp'); /* Replace with your image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            width: 700px;
        }

        .text-muted {
            font-size: 12px;
        }

        .form-check-label {
            font-size: 14px;
        }

        .forgot-password {
            float: right;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="col-md-6 login-form" >
                <div class="alert alert-danger" role="alert" style="${error != null ? 'display: block;' : 'display: none;'}">
                    ${error}
                </div>
                <div class="container" style="box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); padding: 20px; height: 600px; ">
                    <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 10px">
                        <a href="login.jsp" class="btn-back">
                            <i class="fas fa-arrow-left"></i>
                        </a>
                        <h3 style="text-align: center; flex-grow: 1;">Đăng Ký</h3>
                    </div>
                    <c:set var="cookie" value="${pageContext.request.cookies}"></c:set>
                    <form class="form-signin" action="GoogleLoginInfoController" method="post">
                    <div class="form-group" style="display: flex; flex-direction: column; gap: 5px;">
                        <label for="username">Tên đăng nhập</label>
                        <input name="username"  type="text" id="username" class="form-control" placeholder="Nhập tên đăng nhập" required>
                    </div>
                    <div class="form-group" style="display: flex; flex-direction: column; gap: 5px;">
                        <label for="username">Số điện thoại</label>
                        <input name="phone"  type="text" id="username" class="form-control" placeholder="Nhập số điện thoại" required>
                    </div>
                    <div class="form-group" style="display: flex; flex-direction: column; gap: 5px;">
                        <label for="password">Mật khẩu</label>
                        <input name="password"  type="password" id="password" class="form-control" placeholder="Nhập mật khẩu" required>
                    </div>
                    <div class="form-group" style="display: flex; flex-direction: column; gap: 5px;">
                        <label for="password">Nhập lại mật khẩu</label>
                        <input name="repassword"  type="password" id="password" class="form-control" placeholder="Nhập lại mật khẩu" required>
                    </div>
                    <button type="submit" class="btn btn-login btn-block w-100 mt-4">Đăng Ký</button>
                </form>
                    
                  
                </div>
            </div>
        <!-- Right: Image Column -->
        <div class="col-md-6 image-container"></div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
