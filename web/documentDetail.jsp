<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <style>
        .sidebar {
                border: 2px solid #fff;
                border-radius: 15px;
                padding: 20px;
                background-color: #fff;
                box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
                margin-bottom: 20px;
            }

            .sidebar-title {
                font-size: 2rem;
                font-weight: 700;
                color: black;
                margin-bottom: 2rem;
                text-align: center;
                font-size: 28px;
            }

            .sidebar-icon {
                font-size: 1.5rem;
                color: #FF8C00;
                margin-right: 10px;
            }

            .list-group-item {
                background-color: #ffffff;
                border: none;
                border-radius: 10px;
                margin-bottom: 10px;
                padding: 12px 20px;
                font-weight: 500;
                color: #444;
                transition: all 0.3s ease;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
            }

            .list-group-item:hover {
                background-color: #f9f9f9;
                cursor: pointer;
                transform: translateY(-5px);
                box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            }
    </style>
</head>

<body>
    <!-- Navbar Start -->
    <jsp:include page="menu.jsp"/>
    <!-- Navbar End -->


    <div class="container-fluid page-header" style="margin-bottom: 90px;">
            <div class="container">
                <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                    <h3 class="display-4 text-white text-uppercase" style="text-align: center"> Đề Thi</h3>
                </div>
            </div>
        </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-8"
                style=" max-width: 1000px;
            margin-left: auto;">
                <iframe src="${ex.examUrl}" type="application/docx" frameborder="1" width="100%" height="1000px"></iframe>
            </div>

            <div class="col-lg-4">
                    <div class="sidebar">
                        <div class="sidebar-title">Danh mục đề thi</div>
                        <ul class="list-group">
                            <c:forEach items="${listEx}" var="exam">
                                <li class="list-group-item">
                                    <i class="fas fa-pencil-alt sidebar-icon"></i>
                                    <a href="ExamDetailController?examId=${exam.examId}">${exam.examName}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                <div style="display:flex; justify-content: center;"><a href="DocumentController" style="text-decoration: none; "><button
                                    class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="display: flex; gap: 15px;"> <svg
                                            width="24" height="24"
                                            viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9 16.0001C9.85217 16.0001 10.2974 15.0145 9.78323 14.3775L9.70711 14.2929L7.41603 12.0007C8.68529 10.7976 10.6983 10.0001 13 10.0001C16.9183 10.0001 20 12.3113 20 15.0001C20 15.5523 20.4477 16.0001 21 16.0001C21.5523 16.0001 22 15.5523 22 15.0001C22 11.0613 17.9183 8.00005 13 8.00005C10.1933 8.00005 7.65905 8.99699 6.00031 10.585L3.70711 8.29294C3.10453 7.69037 2.09282 8.07238 2.00598 8.88642L2 9.00005V15.0001C2 15.5129 2.38604 15.9356 2.88338 15.9933L3 16.0001H9Z"
                                                fill="#ffff" />
                                        </svg>
                                    Quay Lại</button></a></div>
        </div>
    </div>
    </div>


    <!-- Footer Start -->
    <jsp:include page="footer.jsp"/>  
    <!-- Footer End -->


    <!-- Back to Top -->
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
</body>

</html>