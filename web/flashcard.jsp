<%-- 
    Document   : newjsp1
    Created on : Oct 11, 2024, 12:50:56 AM
    Author     : lethe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Module" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.ModuleDAO" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
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
        <style>
            .user-dropdown {
                position: absolute;
                top: 50px;
                right: 0;
                background-color: white;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                width: 250px;
                border-radius: 8px;
                z-index: 999;
            }

            .user-dropdown .dropdown-content {
                padding: 15px;
            }

            .user-dropdown .user-profile {
                display: flex;
                align-items: center;
                padding-bottom: 10px;
                border-bottom: 1px solid #e0e0e0;
            }

            .user-dropdown .user-profile .user-avatar {
                width: 40px;
                height: 40px;
                border-radius: 50%;
                margin-right: 10px;
            }

            .user-dropdown a {
                display: block;
                padding: 10px 0;
                color: black;
                text-decoration: none;
            }

            .user-dropdown a:hover {
                background-color: #f1f1f1;
            }

            .flashcard-container {
                perspective: 1000px;
                text-align: center;
                width: 57%;
                margin: 50px auto;
            }
            .flashcard {
                width: 100%;
                height: 300px;
                background-color: white;
                border: 2px solid #ff6600;
                border-radius: 15px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;
                transition: transform 0.6s;
                transform-style: preserve-3d;
                position: relative;
                cursor: pointer;
            }
            .flashcard.is-flipped {
                transform: rotateY(180deg);
            }
            .flashcard-content {
                position: absolute;
                backface-visibility: hidden;
                padding: 20px;
            }
            .flashcard-back {
                transform: rotateY(180deg);
            }
            .arrow {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                font-size: 24px;
                cursor: pointer;
                user-select: none;
                color: #ff6600;
                background-color: white;
            }
            .arrow-left {
                left: -40px;
            }
            .arrow-right {
                right: -40px;
            }
            .card-counter {
                margin-top: 15px;
                font-size: 18px;
                color: #333;
            }
            .card-title {
                font-size: 24px;
                font-weight: bold;
                margin-bottom: 10px;
            }
        </style>
    </head>

    <body>
        <!-- Navbar start-->
        <jsp:include page="menu.jsp"/>
        <!-- Navbar End -->

        <!-- Detail Start -->
        <div class="container-fluid py-5">

            <div class="">
                <%
                    Module m = (Module) request.getAttribute("module");
                    List<Module> listModule = (List<Module>) request.getAttribute("listModule");
                %>
                <h2 style="text-align: center;"><%=m.getName()%> : <%= m.getDescription()%></h2>
                <div class="">
                    <!-- Flash Card Slider Start -->
                    <div class="flashcard-container">
                        <div class="row d-flex justify-content-between" style="margin: 10px -15px;">

                            <!-- Previous Chapter Button (Left Aligned) -->
                            <div class="col-md-6" style="text-align: left;">
                                <c:if test="${requestScope.modules != 1}">
                                    <a class="btn btn-primary py-2 px-4" 
                                       href="FlashCardController?moduleId=${requestScope.modules - 1}" 
                                       style="width: 200px; height: 40px;">Chương trước</a>
                                </c:if>
                            </div>

                            <!-- Next Chapter Button (Right Aligned) -->
                            <div class="col-md-6" style="text-align: right;">
                                <c:if test="${requestScope.modules < listModule.size() - 1}">
                                    <a class="btn btn-primary py-2 px-4" 
                                       href="FlashCardController?moduleId=${requestScope.modules + 1}" 
                                       style="width: 200px; height: 40px;">Chương tiếp theo</a>
                                </c:if>
                            </div>

                        </div>
                        <div class="arrow arrow-left" onclick="prevCard()">&#10094;</div>
                        <div class="flashcard" onclick="flipCard()">
                            <c:forEach items="${requestScope.flashList}" var="f">
                                <div class="flashcard-content flashcard-front">
                                    <div class="flashcard-item">
                                        <div>${f.questionName}</div>
                                    </div>
                                </div>
                                <div class="flashcard-content flashcard-back">
                                    <div class="flashcard-item">
                                        <div>${f.true_answer}</div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="arrow arrow-right" onclick="nextCard()">&#10095;</div>
                    </div>
                    <!-- Flash Card Slider End -->

                    <!-- Question List Section Start -->
                    <div class="question-list">
                        <div class="row d-flex justify-content-between"
                             style="margin: auto;">
                            <h2>Câu hỏi</h2>
                            <a
                                class="btn btn-primary py-2 px-4 ml-auto d-none d-lg-block"
                                href="FlashCardQuizController?moduleId=${requestScope.modules}"
                                style="width: 200px; height: 40px;">Làm bài kiểm
                                tra</a>
                        </div>

                        <c:forEach items="${requestScope.flashList}" var="f">
                            <div class="question-item">
                                <div class="question">
                                    <div><strong>Q:</strong> ${f.questionName}</div>
                                    <div><strong>A:</strong><span class> ${f.true_answer}</span></div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>


            </div>
        </div>
        <!-- Detail End -->

        <!-- Footer Start -->
        <jsp:include page="footer.jsp"/>
        <!-- Footer End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
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

        <script>
                            let currentIndex = 0;
                            let isFlipped = false;

                            const frontItems = document.querySelectorAll('.flashcard-front .flashcard-item');
                            const backItems = document.querySelectorAll('.flashcard-back .flashcard-item');
                            const cardCounter = document.getElementById('card-counter');

                            // Function to update the flashcard display and the card counter
                            function updateFlashcard() {
                                frontItems.forEach((item, index) => {
                                    item.style.display = index === currentIndex ? 'block' : 'none';
                                });
                                backItems.forEach((item, index) => {
                                    item.style.display = index === currentIndex ? 'block' : 'none';
                                });
                                updateCardCounter();
                            }

                            // Function to update the card counter
                            function updateCardCounter() {
                                cardCounter.textContent = `${currentIndex + 1}/${frontItems.length}`;
                                    }

                                    function flipCard() {
                                        const card = document.querySelector('.flashcard');
                                        isFlipped = !isFlipped;
                                        card.classList.toggle('is-flipped', isFlipped);
                                    }

                                    function prevCard() {
                                        currentIndex = (currentIndex - 1 + frontItems.length) % frontItems.length;
                                        isFlipped = false;
                                        document.querySelector('.flashcard').classList.remove('is-flipped');
                                        updateFlashcard();
                                    }

                                    function nextCard() {
                                        currentIndex = (currentIndex + 1) % frontItems.length;
                                        isFlipped = false;
                                        document.querySelector('.flashcard').classList.remove('is-flipped');
                                        updateFlashcard();
                                    }

                                    // Initialize the flashcard and the card counter
                                    updateFlashcard();
        </script>

    </body>

</html>

