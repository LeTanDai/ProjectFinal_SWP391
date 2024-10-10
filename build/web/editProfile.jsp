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
                                        <h5>Chỉnh Sửa Thông tin cá nhân</h5>
                                    </div>
                                    <hr style="border: 0.5px solid;">
                                    <div class="row"
                                        style="margin-bottom: 20px;">
                                        <div class="col-sm-6"
                                            style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Họ và Tên</h6>
                                            <input type="text" name
                                                value="Trương Quốc Cường" id
                                                style="background-color: white;
                                        border: 1px solid black;
                                        border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                        <div class="col-sm-6"
                                            style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Ngày Sinh</h6>
                                            <input type="text" name
                                                value="dd/mm/yyyy" id
                                                style="background-color: white;
                                        border: 1px solid black;
                                        border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                    </div>
                                    <div class="row"
                                        style="margin-bottom: 20px;">
                                        <div class="col-sm-6"
                                            style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Địa Chỉ Email</h6>
                                            <input type="text" name
                                                value="example@gmail.com" id
                                                style="background-color: white;
                                        border: 1px solid black;
                                        border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
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
                                            <h6 class="mb-0">Số Điện Thoại</h6>
                                            <input type="text" name
                                                value="1234567890" id
                                                style="background-color: white;
                                        border: 1px solid black;
                                        border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                        <div class="col-sm-6"
                                            style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Địa Chỉ</h6>
                                            <input type="text" name
                                                value="Đà Nẵng" id
                                                style="background-color: white;
                                        border: 1px solid black;
                                        border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                    </div>
                                    <div class="row"
                                        style="margin-bottom: 20px;">
                                        <div class="col-sm-12"
                                            style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Ảnh Đại Diện</h6>
                                            <input type="file" id="fileUpload"
                                            name="fileUpload"
                                                style="background-color: white;
                                        border: 1px solid black;
                                        border-radius: 5px; width: 100%; height:50px; padding: 9px; color: #74767a;">
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-sm-12" style="display: flex; gap: 10px;">
                                            
                                            <a href="userProfile.jsp"
                                    style="text-decoration: none;"><button
                                        class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2"
                                        style="display: flex; gap: 15px;"> <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2ZM12 4C7.58172 4 4 7.58172 4 12C4 16.4183 7.58172 20 12 20C16.4183 20 20 16.4183 20 12C20 7.58172 16.4183 4 12 4ZM15.2929 8.29289L10 13.5858L8.70711 12.2929C8.31658 11.9024 7.68342 11.9024 7.29289 12.2929C6.90237 12.6834 6.90237 13.3166 7.29289 13.7071L9.29289 15.7071C9.68342 16.0976 10.3166 16.0976 10.7071 15.7071L16.7071 9.70711C17.0976 9.31658 17.0976 8.68342 16.7071 8.29289C16.3166 7.90237 15.6834 7.90237 15.2929 8.29289Z" fill="#ffff"/>
                                            </svg>
                                            

                                        Lưu</button></a>
                                        <a href="userProfile.jsp"
                                    style="text-decoration: none;"><button
                                        class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2"
                                        style="display: flex; gap: 15px;"> <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2ZM12 4C7.58172 4 4 7.58172 4 12C4 16.4183 7.58172 20 12 20C16.4183 20 20 16.4183 20 12C20 7.58172 16.4183 4 12 4ZM7.29325 7.29325C7.65417 6.93233 8.22045 6.90456 8.61296 7.20996L8.70725 7.29325L12.0002 10.5863L15.2933 7.29325C15.6842 6.90225 16.3162 6.90225 16.7072 7.29325C17.0682 7.65417 17.0959 8.22045 16.7905 8.61296L16.7072 8.70725L13.4142 12.0002L16.7072 15.2933C17.0982 15.6842 17.0982 16.3162 16.7072 16.7072C16.5122 16.9022 16.2562 17.0002 16.0002 17.0002C15.7869 17.0002 15.5736 16.9322 15.3956 16.7967L15.2933 16.7072L12.0002 13.4142L8.70725 16.7072C8.51225 16.9022 8.25625 17.0002 8.00025 17.0002C7.74425 17.0002 7.48825 16.9022 7.29325 16.7072C6.93233 16.3463 6.90456 15.7801 7.20996 15.3875L7.29325 15.2933L10.5863 12.0002L7.29325 8.70725C6.90225 8.31625 6.90225 7.68425 7.29325 7.29325Z" fill="#ffff"/>
                                            </svg>
                                            

                                        Hủy</button></a>

                                        <a href="forgotPassword.jsp"
                                    style="text-decoration: none;"><button
                                        class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2"
                                        style="display: flex; gap: 15px;"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C14.6888 2 16.8818 4.12231 16.9954 6.78311L17 7V10C18.6569 10 20 11.3431 20 13V19C20 20.6569 18.6569 22 17 22H7C5.34315 22 4 20.6569 4 19V13C4 11.3431 5.34315 10 7 10V7C7 4.23858 9.23858 2 12 2ZM17 12H7C6.44772 12 6 12.4477 6 13V19C6 19.5523 6.44772 20 7 20H17C17.5523 20 18 19.5523 18 19V13C18 12.4477 17.5523 12 17 12ZM12.1763 4.00509L12 4C10.4023 4 9.09634 5.24892 9.00509 6.82373L9 7V10H15V7C15 5.40232 13.7511 4.09634 12.1763 4.00509L12 4L12.1763 4.00509Z" fill="#ffff"/>
                                            </svg>
                                            
                                        Đổi Mật Khẩu</button></a>
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