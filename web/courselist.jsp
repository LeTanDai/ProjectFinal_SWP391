<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Module" %>
<%@ page import="model.Lesson" %>
<%@ page import="model.Video" %>
<html>
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

        <!-- Icon Font Stylesheet -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
            rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css"
              rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
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

        <!-- Navbar start-->
        <jsp:include page="menu.jsp"/>
        <!-- Navbar End -->

        <div class="container-fluid page-header" style="margin-bottom: 90px;">
            <div class="container">
                <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                    <h3 class="display-4 text-white text-uppercase" style="text-align: center"> Môn Học</h3>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-lg-8" style=" max-width: 1000px; margin-left: auto;">
                    <c:forEach var="entry" items="${Map}">
                        <div class="media search-media">
                            <div class="media-body">
                                <div style="margin: 0 0 15px 0;">
                                    <h4 class="media-heading text-primary">${entry.key.getName()} - ${entry.key.getDescription()}</h4>
                                </div>
                                <div style="margin-bottom: 10px;">
                                    <c:forEach var="lesson" items="${entry.value}">
                                        <c:forEach var="entry2" items="${lesson}">
                                            <c:choose>
                                                <c:when test="${entry2.key.isIsPremium()}">
                                                    <a href="CheckPremium?video=${entry2.value.getId()}&content=${entry2.key.getContentid()}" style="display: flex">
                                                        <svg width="28" height="28" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C14.6888 2 16.8818 4.12231 16.9954 6.78311L17 7V10C18.6569 10 20 11.3431 20 13V19C20 20.6569 18.6569 22 17 22H7C5.34315 22 4 20.6569 4 19V13C4 11.3431 5.34315 10 7 10V7C7 4.23858 9.23858 2 12 2ZM17 12H7C6.44772 12 6 12.4477 6 13V19C6 19.5523 6.44772 20 7 20H17C17.5523 20 18 19.5523 18 19V13C18 12.4477 17.5523 12 17 12ZM12.1763 4.00509L12 4C10.4023 4 9.09634 5.24892 9.00509 6.82373L9 7V10H15V7C15 5.40232 13.7511 4.09634 12.1763 4.00509L12 4L12.1763 4.00509Z" fill="#ff6600"/>
                                                        </svg>
                                                        <h6 style="margin: 10px 0;"><b>${entry2.key.getName()}</b></h6>
                                                    </a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="VideoServlet?video=${entry2.value.getId()}&content=${entry2.key.getContentid()}">
                                                        <h6 style="margin: 10px 0;"><b>${entry2.key.getName()}</b></h6>
                                                    </a>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </c:forEach> 
                </div>
                <div class="col-lg-4">
                    <div class="sidebar">
                        <div class="sidebar-title">Danh mục môn học</div>
                        <ul class="list-group">
                            <form class="list-group-item" action="CourseServlet" method="post">
                                <i class="fas fa-pencil-alt sidebar-icon"></i>
                                <input type="hidden" name="subject" value="Math">
                                <button type="submit" style="border: none; background: none; color: inherit; padding: 0; font: inherit; cursor: pointer;">
                                    Toán
                                </button>
                            </form>
                            <form class="list-group-item" action="CourseServlet" method="post">
                                <i class="fas fa-pencil-alt sidebar-icon"></i>
                                <input type="hidden" name="subject" value="Physics">
                                <button type="submit" style="border: none; background: none; color: inherit; padding: 0; font: inherit; cursor: pointer;">
                                    Lý
                                </button>
                            </form>
                            <form class="list-group-item" action="CourseServlet" method="post">
                                <i class="fas fa-pencil-alt sidebar-icon"></i>
                                <input type="hidden" name="subject" value="Chemistry">
                                <button type="submit" style="border: none; background: none; color: inherit; padding: 0; font: inherit; cursor: pointer;">
                                    Hóa
                                </button>
                            </form>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <!-- Footer Start -->
        <jsp:include page="footer.jsp"/>
        <!-- Footer End -->
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
                class="fa fa-angle-double-up"></i></a>

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