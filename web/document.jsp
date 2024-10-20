<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Learning Website</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content name="keywords">
        <meta content name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet">
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

        <link href="css/style.css" rel="stylesheet">
        <style>
            .section-title {
                font-size: 2.5rem;
                font-weight: 700;
                color: #FF8C00;
                margin-bottom: 2rem;
                position: relative;
                padding-bottom: 10px;
                text-align: center;
            }

            .section-title::after {
                content: '';
                width: 80px;
                height: 4px;
                background-color: #FF8C00;
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
                border-radius: 2px;
            }

            .document-item {
                max-width: 100%; /* Đảm bảo full width */
                margin: 0 auto;
            }

            .card {
                display: flex;
                flex-direction: row;
                padding: 30px;
                border: none;
                border-radius: 10px;
                overflow: hidden;
                transition: all 0.4s ease;
                background-color: #ffffff;
                box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
                margin-bottom: 20px;
            }

            .card:hover {
                transform: translateY(-10px);
                box-shadow: 0 12px 30px rgba(0, 0, 0, 0.2);
            }

            .card-body {
                padding: 20px;
                flex-grow: 1;
            }

            .card-title {
                font-size: 1.5rem;
                font-weight: 700;
                color: #FF8C00;
                margin-bottom: 10px;
            }

            .card-text {
                font-size: 1rem;
                color: #666;
            }

            .btn-view {
                background-color: #FF8C00;
                color: white;
                font-weight: bold;
                padding: 0.5rem 1.5rem;
                border-radius: 10px;
                text-transform: uppercase;
                letter-spacing: 1px;
                transition: background-color 0.3s ease, transform 0.2s ease;
                display: inline-block;
                margin-top: 10px;
            }

            .btn-view:hover {
                background-color: #e67e22;
                transform: translateY(-2px);
                box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
            }

            .image-container {
                max-width: 170px;
                height: 197px;
                margin: 0 auto;
                background-color: #fff;
                border: 2px solid #FF8C00;
                border-radius: 10px;
                box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
            }

            .image-container img {
                width: 100%;
                height: 100%;
                border-radius: 8px;
            }

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

            @media (max-width: 768px) {
                .section-title {
                    font-size: 2rem;
                }

                .btn-view {
                    width: 100%;
                    text-align: center;
                    margin-bottom: 15px;
                }

                .image-container {
                    max-width: 90%;
                }

                .col-lg-8, .col-lg-4 {
                    width: 100%; /* Đảm bảo chia đều khi ở màn hình nhỏ */
                    margin-top: 20px;
                }

                .sidebar-title {
                    font-size: 1.8rem;
                }
            }

        </style>
    </head>

    <body>
        <!-- Navbar start-->
        <jsp:include page="menu.jsp" />
        <!-- Navbar End -->

        <div class="container-fluid page-header" style="margin-bottom: 90px;">
            <div class="container">
                <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                    <h3 class="display-4 text-white text-uppercase" style="text-align: center">Tài Liệu</h3>
                </div>
            </div>
        </div>

        <!-- Main Content Section -->
        <div class="container">
            <div class="row">
                <!-- Left Content: Tài liệu Sách -->
                <div class="col-lg-8">
                    <c:if test="${empty listDoc}">
                        <div class="alert alert-warning" role="alert">Không có tài liệu nào được tìm thấy.</div>
                    </c:if>

                    <c:forEach items="${listDoc}" var="document">
                        <div class="document-item card mb-4">
                            <div class="image-container">
                                <img src="${document.image_url}" alt="Ảnh đại diện của ${document.docName}" loading="lazy">
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">${document.docName}</h5>
                                <p class="card-text">Môn: ${subjectMap[document.subject_id]}</p>
                                <p class="card-text">Môn: ${classMap[document.class_id]}</p>
                                <a href="BookDetailController?documentId=${document.docId}" class="btn-view">Xem chi tiết</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <!-- Right Content: Sidebar -->
                <div class="col-lg-4">
                    <div class="sidebar">
                        <div class="sidebar-title">Danh mục đề thi</div>
                        <ul class="list-group">
                            <c:if test="${empty listE}">
                                <li class="list-group-item">Không có đề thi nào được tìm thấy.</li>
                            </c:if>
                            <c:forEach items="${listE}" var="ex">
                                <li class="list-group-item">
                                    <i class="fas fa-pencil-alt sidebar-icon"></i>
                                    <a href="ExamDetailController?examId=${ex.examId}">${ex.examName}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>

                    <div class="sidebar" style="display: flex;
                         flex-direction: column;
                         align-items: center;">
                        <div class="sidebar-title">Yêu cầu thêm tài liệu</div>
                        <div style="text-align: center;"><a href="requestAddDocument.jsp" style="text-decoration: none; "><button
                                    class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="display: flex; gap: 15px; background-color: #FF8C00"> <svg width="24" height="24"  viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM17 12C17.5523 12 18 12.4477 18 13V16H21C21.5523 16 22 16.4477 22 17C22 17.5523 21.5523 18 21 18H18V21C18 21.5523 17.5523 22 17 22C16.4477 22 16 21.5523 16 21V18H13C12.4477 18 12 17.5523 12 17C12 16.4477 12.4477 16 13 16H16V13C16 12.4477 16.4477 12 17 12ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#fff"/>
                                    </svg>
                                    Thêm Tài Liệu</button></a></div>
                    </div>
                </div>
            </div>
        </div>



        <!--         Footer Start -->
        <jsp:include page="footer.jsp"/>
        <!--     Footer End -->


        <!--     Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


        <!--     JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!--     Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!--     Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>
