<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                                    <div class="d-flex flex-column align-items-center text-center">
                                        <img
                                            src="${sessionScope.account.avatar}"
                                            alt="Avatar"
                                            class="rounded-circle p-1 bg-dark"
                                            width="110">
                                        <div class="mt-3">
                                            <h4><c:out value="${sessionScope.account.fName}"/></h4>
                                        </div>
                                        <h6 class="mb-0">Hạng: <c:out value="${sessionScope.classify}"/></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <!-- Form chỉnh sửa thông tin cá nhân -->
                            <form action="UpdateUserServlet" method="POST">
                                <div class="card mb-3">
                                    <div class="card-body" style="box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
                                        <div class="row" style="padding-left: 15px">
                                            <h5>Chỉnh Sửa Thông tin cá nhân</h5>
                                        </div>
                                        <hr style="border: 0.5px solid;">
                                        <div class="row" style="margin-bottom: 20px;">
                                            <div class="col-sm-6" style="gap: 10px; display: flex; flex-direction: column;">
                                                <h6 class="mb-0">Họ và Tên</h6>
                                                <input type="text" name="fullName" value="${sessionScope.account.fName}" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                            </div>
                                            <div class="col-sm-6" style="gap: 10px; display: flex; flex-direction: column;">
                                                <h6 class="mb-0">Ngày Sinh</h6>
                                                <input type="date" name="dob" value="${sessionScope.account.dob}" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                            </div>
                                        </div>
                                        <div class="row" style="margin-bottom: 20px;">
                                            <div class="col-sm-6" style="gap: 10px; display: flex; flex-direction: column;">
                                                <h6 class="mb-0">Địa Chỉ Email</h6>
                                                <input type="email" name="email" value="${sessionScope.account.email}" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                            </div>
                                            <div class="col-sm-6" style="gap: 10px; display: flex; flex-direction: column;">
                                                <h6 class="mb-0">Tên Đăng Nhập</h6>
                                                <div style="width: 100%; height: 40px; background-color: white; border: 1px solid black; border-radius: 5px; padding: 8px 10px; color: black;">${sessionScope.account.userName}</div>
                                            </div>
                                        </div>
                                        <div class="row" style="margin-bottom: 20px;">
                                            <div class="col-sm-6" style="gap: 10px; display: flex; flex-direction: column;">
                                                <h6 class="mb-0">Số Điện Thoại</h6>
                                                <input type="text" name="phoneNumber" value="${sessionScope.account.phone}" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                            </div>
                                            <div class="col-sm-6" style="gap: 10px; display: flex; flex-direction: column;">
                                                <h6 class="mb-0">Địa Chỉ</h6>
                                                <input type="text" name="address" value="${sessionScope.account.address}" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                            </div>
                                        </div>
                                        <div class="row" style="margin-bottom: 20px;">
                                            <div class="col-sm-12" style="gap: 10px; display: flex; flex-direction: column;">
                                                <h6 class="mb-0">URL Ảnh Đại Diện</h6>
                                                <input type="text" id="avatar" name="avatar" value="${sessionScope.account.avatar}" placeholder="Nhập URL Ảnh Đại Diện" style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:50px; padding: 9px; color: #74767a;">
                                            </div>
                                        </div>

                                        <!-- Nút Lưu, Hủy và Đổi Mật Khẩu -->
                                        <div class="row">
                                            <div class="col-sm-12" style="display: flex; gap: 15px;">
                                                <!-- Nút Lưu -->
                                                <button type="submit" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" aria-label="Lưu thay đổi"> 
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2ZM12 4C7.58172 4 4 7.58172 4 12C4 16.4183 7.58172 20 12 20C16.4183 20 20 16.4183 20 12C20 7.58172 16.4183 4 12 4ZM15.2929 8.29289L10 13.5858L8.70711 12.2929C8.31658 11.9024 7.68342 11.9024 7.29289 12.2929C6.90237 12.6834 6.90237 13.3166 7.29289 13.7071L9.29289 15.7071C9.68342 16.0976 10.3166 16.0976 10.7071 15.7071L16.7071 9.70711C17.0976 9.31658 17.0976 8.68342 16.7071 8.29289C16.3166 7.90237 15.6834 7.90237 15.2929 8.29289Z" fill="currentColor"/>
                                                    </svg>
                                                    Lưu Thay Đổi
                                                </button>

                                                <!-- Nút Hủy -->
                                                <a href="userProfile.jsp" class="btn btn-secondary py-md-2 px-md-4 font-weight-semi-bold mt-2">Hủy</a>

                                                <!-- Nút Đổi Mật Khẩu -->
                                                <a href="ResetPasswordController" class="btn btn-warning py-md-2 px-md-4 font-weight-semi-bold mt-2">Đổi Mật Khẩu</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- Form chỉnh sửa thông tin cá nhân kết thúc -->
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