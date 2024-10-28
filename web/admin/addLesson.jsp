<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>ECOURSES - Online Courses HTML Template</title>
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
        <link rel="stylesheet" href="../css/style.css">

        <style>
            /* Basic styles for form elements */
            h2 {
                text-align: center;
                margin-bottom: 20px;
            }

            label {
                font-weight: bold;
                display: block;
                margin-bottom: 10px;
            }

            input,
            select,
            textarea {
                width: 100%;
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 16px;
            }

            select {
                height: 40px;
            }

            textarea {
                resize: none;
            }

            button {
                padding: 10px 20px;
                background-color: #28a745;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }

            button:hover {
                background-color: #218838;
            }

            .popup-overlay {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.6);
                display: none;
                align-items: center;
                justify-content: center;
                z-index: 999;
            }

            .popup-addDocument {
                background: white;
                padding: 20px;
                border-radius: 10px;
                width: 90%;
                max-width: 400px;
                text-align: center;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            .popup-addDocument h2 {
                margin-bottom: 20px;
            }

            .popup-addDocument button {
                margin: 10px;
            }

            .popup-addDocument button.cancel-btn {
                background-color: #dc3545;
            }

            @media (max-width: 600px) {
                .container {
                    width: 90%;
                }
            }

            /* Style for the delete button */
            .delete-button {
                background-color: #dc3545;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                padding: 10px;
                margin-top: 10px;
            }

            .delete-button:hover {
                background-color: #c82333;
            }

            .content-section {
                position: relative;
            }

            /* Ensure delete button stays at the top right of the section */
            .delete-button {
                position: absolute;
                top: 10px;
                right: 10px;
                padding: 5px 10px;
            }
        </style>
    </head>

    <body style="background-color: #f7f8fc;">

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2 p-0">
                    <jsp:include page="menuAdmin.jsp"/>
                </div>

                <div class="container col-md-10">
                    <div class="row">
                        <!-- Dropdown Section -->
                        <div class="dropdown-light d-flex justify-content-end mt-3 px-4">
                            <div class="fields">
                                <div class="field-item d-flex align-items-center justify-content-between">
                                    <div class="text">
                                        <h2>Quản Lý Bài Học</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Header -->
                    <div class>
                        <div class="header bg-white rounded-3 p-3" style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); margin: 20px 30px 20px 10px; display: flex;">
                            <div style="gap: 15px; display: flex; align-items: baseline; padding-top: 10px;">
                                <h4>Thêm Bài Học</h4>
                            </div>
                            <div style="display: flex; gap: 20px;">
                                <a href="AdminListLesson"
                                   style="text-decoration: none;"><button
                                        class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2"
                                        style="display: flex; gap: 15px;"> <svg
                                            width="24" height="24"
                                            viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M9 16.0001C9.85217 16.0001 10.2974 15.0145 9.78323 14.3775L9.70711 14.2929L7.41603 12.0007C8.68529 10.7976 10.6983 10.0001 13 10.0001C16.9183 10.0001 20 12.3113 20 15.0001C20 15.5523 20.4477 16.0001 21 16.0001C21.5523 16.0001 22 15.5523 22 15.0001C22 11.0613 17.9183 8.00005 13 8.00005C10.1933 8.00005 7.65905 8.99699 6.00031 10.585L3.70711 8.29294C3.10453 7.69037 2.09282 8.07238 2.00598 8.88642L2 9.00005V15.0001C2 15.5129 2.38604 15.9356 2.88338 15.9933L3 16.0001H9Z"
                                            fill="#ffff" />
                                        </svg>

                                        Quay Lại</button></a>
                            </div>
                        </div>

                        <form action="AdminAddLesson" method="get">
                            <!-- Lesson Information Section -->
                            <div class="bg-white rounded-3 p-3" style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); margin: 20px 30px 20px 10px; display: flex; flex-direction: column; gap: 15px;">
                                <div>
                                    <label for="docName">Tên Bài Học</label>
                                    <input type="text" id="docName" name="lessonname" placeholder="Nhập tên bài học" required>

                                    <label for="docType">Môn</label>
                                    <select id="docType" name="subjectid" required>
                                        <c:forEach var="item" items="${listsub}">
                                            <option value="${item.getId()}">${item.getName()}</option>
                                        </c:forEach>
                                    </select>
                                    <label for="classType">Lớp</label>
                                    <select id="classType" name="classid" required>
                                        <c:forEach var="item" items="${listclass}">
                                            <option value="${item.getId()}">${item.getName()}</option>
                                        </c:forEach>
                                    </select>
                                    <label for="classType">Loại bài học</label>
                                    <select id="docType" name="type" required>
                                        <option value="Premium">Premium</option>
                                        <option value="Normal">Normal</option>
                                    </select>
                                    <label for="video-url">Video url</label>
                                    <textarea id="video-url" name="videourl" rows="3" placeholder="Nhập URL video"></textarea>
                                    <label for="title">Tiêu Đề</label>
                                    <input type="text" id="title" name="videotitle" placeholder="Nhập tiêu đề" required>
                                    <label for="title">Số lượng đề mục</label>
                                    <input type="text" id="number" name="numbersubheading" placeholder="1,2,3,..." required>
                                </div>
                            </div>
                            <div class="button-container p-2" style="margin-top: 20px; display: flex; gap: 20px; margin-bottom: 30px;">
                                <input type="submit" id="addButton" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" value="Xác nhận">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>