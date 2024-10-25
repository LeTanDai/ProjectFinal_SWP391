<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                height: 120vh;
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
                background-image: url('img/free-remote-learning-illustration-b7ilq.webp');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                width: 700px;
            }
            
            .alert {
                display: block;
                white-space: nowrap;
                text-overflow: ellipsis;
                padding: 10px !important;
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
        <div class="login-container" >

            <!-- Left: Login Form Column -->
            <div class="col-md-6 login-form" >
                <div class="alert alert-danger" role="alert" style="${error != null ? 'display: block;' : 'display: none;'}">
                    ${error}
                </div>
                <div class="container" style="box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); padding: 20px; height: 820px; ">
                    <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 10px">
                        <a href="login.jsp" class="btn-back">
                            <i class="fas fa-arrow-left"></i>
                        </a>
                        <h3 style="text-align: center; flex-grow: 1;">Đăng Ký</h3>
                    </div>
                    <c:set var="cookie" value="${pageContext.request.cookies}"></c:set>
                        <form class="form-signin" action="SignUpController" method="post">
                            <div class="form-group" style="display: flex; flex-direction: column; gap: 5px;">
                                <label for="username">Tên đăng nhập</label>
                                <input name="username"  type="text" id="username" class="form-control" placeholder="Nhập tên đăng nhập" required>
                            </div>
                            <div class="form-group" style="display: flex; flex-direction: column; gap: 5px;">
                                <label for="username">Email</label>
                                <input name="email"  type="text" id="username" class="form-control" placeholder="Nhập Email" required>
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
                    <div style="text-align: center; margin-top: 30px;">
                        <p class="p">Ðã có tài khoản ? <a href="login.jsp" style="text-decoration: none;"><span
                                    class="span" >Đăng nhập</span></a>
                            <br>
                            <br>
                        <p>Hoặc Đăng Ký Bằng</p>
                    </div>

                    <div class="flex-row" >
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile openid&redirect_uri=http://localhost:8080/FinalProject_SWP391/GoogleLoginController&response_type=code

                           &client_id=356270478055-667a5lvdgebq0u35a4ndcone1bu78ea5.apps.googleusercontent.com

                           &approval_prompt=force" style="width: 100%;">
                            <button class="btn btn-login btn-block w-100 google" ">
                                <svg version="1.1" width="20" id="Layer_1"
                                     xmlns="http://www.w3.org/2000/svg"
                                     xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                                     y="0px" viewBox="0 0 512 512"
                                     style="enable-background:new 0 0 512 512;"
                                     xml:space="preserve">
                                <path style="fill:#FBBB00;"
                                      d="M113.47,309.408L95.648,375.94l-65.139,1.378C11.042,341.211,0,299.9,0,256
                                      c0-42.451,10.324-82.483,28.624-117.732h0.014l57.992,10.632l25.404,57.644c-5.317,15.501-8.215,32.141-8.215,49.456
                                      C103.821,274.792,107.225,292.797,113.47,309.408z"></path>
                                <path style="fill:#518EF8;"
                                      d="M507.527,208.176C510.467,223.662,512,239.655,512,256c0,18.328-1.927,36.206-5.598,53.451
                                      c-12.462,58.683-45.025,109.925-90.134,146.187l-0.014-0.014l-73.044-3.727l-10.338-64.535
                                      c29.932-17.554,53.324-45.025,65.646-77.911h-136.89V208.176h138.887L507.527,208.176L507.527,208.176z"></path>
                                <path style="fill:#28B446;"
                                      d="M416.253,455.624l0.014,0.014C372.396,490.901,316.666,512,256,512
                                      c-97.491,0-182.252-54.491-225.491-134.681l82.961-67.91c21.619,57.698,77.278,98.771,142.53,98.771
                                      c28.047,0,54.323-7.582,76.87-20.818L416.253,455.624z"></path>
                                <path style="fill:#F14336;"
                                      d="M419.404,58.936l-82.933,67.896c-23.335-14.586-50.919-23.012-80.471-23.012
                                      c-66.729,0-123.429,42.957-143.965,102.724l-83.397-68.276h-0.014C71.23,56.123,157.06,0,256,0
                                      C318.115,0,375.068,22.126,419.404,58.936z"></path>

                                </svg>

                                Google</button></a>
                    </div>
                </div>
            </div>


            <!-- Right: Image Column -->
            <div class="col-md-6 image-container"></div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>