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

             <div class="container" style="margin-top: 50px;">
                <div class="main-body">

                    <div class="row gutters-sm">
                        <div class="col-md-3 mb-3">
                            <div class="card">
                                <div class="card-body" style="box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
                                    <div
                                        class="d-flex flex-column align-items-center text-center">
                                        <img
                                            src="https://static.vecteezy.com/system/resources/thumbnails/037/336/395/small/user-profile-flat-illustration-avatar-person-icon-gender-neutral-silhouette-profile-picture-free-vector.jpg"
                                            alt="Admin"
                                            class="rounded-circle p-1 bg-dark"
                                            width="110">
                                        <div class="mt-3">
                                            <h4>Trương Quốc Cường</h4>
                                        </div>
                                        <h6 class="mb-0">Hạng: Premium</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="card mb-3">
                                <div class="card-body"
                                    style="box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
                                    <div class="row" style="padding-left: 15px">
                                        <h5>Thông tin cá nhân</h5>
                                    </div>
                                    <hr style="border: 0.5px solid;">
                                    <div class="row"
                                        style="margin-bottom: 20px;">
                                        <div class="col-sm-6"
                                            style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Họ và Tên</h6>
                                            <div
                                                style="width: 100%; height: 40px; background-color: white; border: 1px solid black; border-radius: 5px; padding: 8px 10px; color: black;">Trương Quốc Cường</div>
                                        
                                        </div>

                                        <div class="col-sm-6"
                                            style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Tên Đăng Nhập</h6>
                                            <div
                                                style="width: 100%; height: 40px; background-color: white; border: 1px solid black; border-radius: 5px; padding: 8px 10px; color: black;">Cuongtq</div>
                                        </div>
                                    </div>
                                    <div class="row"
                                        style="margin-bottom: 20px;">
                                        <div class="col-sm-6"
                                            style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Ngày Sinh</h6>
                                            <div
                                                style="width: 100%; height: 40px; background-color: white; border: 1px solid black; border-radius: 5px; padding: 8px 10px; color: black;">dd/mm/yyy</div>
                                        </div>
                                        <div class="col-sm-6"
                                            style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Số Điện Thoại</h6>
                                            <div
                                                style="width: 100%; height: 40px; background-color: white; border: 1px solid black; border-radius: 5px; padding: 8px 10px; color: black;">1234567890</div>
                                        </div>
                                    </div>
                                    <div class="row"
                                        style="margin-bottom: 20px;">
                                        <div class="col-sm-6"
                                            style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Địa Chỉ</h6>
                                            <div
                                                style="width: 100%; height: 40px; background-color: white; border: 1px solid black; border-radius: 5px; padding: 8px 10px; color: black;">Đà Nẵng</div>
                                        </div>
                                        <div class="col-sm-6"
                                            style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Email</h6>
                                            <div
                                                style="width: 100%; height: 40px; background-color: white; border: 1px solid black; border-radius: 5px; padding: 8px 10px; color: black;">example@gmail.com</div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-sm-12">
                                            
                                            <a href="editProfile.jsp"
                                    style="text-decoration: none;"><button
                                        class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2"
                                        style="display: flex; gap: 15px;"> <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M12 16C13.3063 16 14.4175 16.8349 14.8293 18.0001L21 18C21.5523 18 22 18.4477 22 19C22 19.5523 21.5523 20 21 20L14.829 20.0009C14.4169 21.1656 13.3059 22 12 22C10.6941 22 9.58312 21.1656 9.17102 20.0009L3 20C2.44772 20 2 19.5523 2 19C2 18.4477 2.44772 18 3 18L9.17067 18.0001C9.58249 16.8349 10.6937 16 12 16ZM12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18ZM19 9C20.6569 9 22 10.3431 22 12C22 13.6569 20.6569 15 19 15C17.6941 15 16.5831 14.1656 16.171 13.0009L3 13C2.44772 13 2 12.5523 2 12C2 11.4477 2.44772 11 3 11L16.1707 11.0001C16.5825 9.83485 17.6937 9 19 9ZM19 11C18.4477 11 18 11.4477 18 12C18 12.5523 18.4477 13 19 13C19.5523 13 20 12.5523 20 12C20 11.4477 19.5523 11 19 11ZM5 2C6.3118 2 7.42695 2.84196 7.83453 4.01495C7.88799 4.00469 7.94344 4 8 4H21C21.5523 4 22 4.44772 22 5C22 5.55228 21.5523 6 21 6H8C7.94344 6 7.88799 5.99531 7.83399 5.98628C7.42695 7.15804 6.3118 8 5 8C3.34315 8 2 6.65685 2 5C2 3.34315 3.34315 2 5 2ZM5 4C4.44772 4 4 4.44772 4 5C4 5.55228 4.44772 6 5 6C5.55228 6 6 5.55228 6 5C6 4.44772 5.55228 4 5 4Z" fill="#ffff"/>
                                            </svg>
                                            

                                        Chỉnh Sửa</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- Footer Start -->
            <jsp:include page="footer.jsp"/>
            <!-- Footer End -->

            <!-- Back to Top -->
            <a href="#"
                class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
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