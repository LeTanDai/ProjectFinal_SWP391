<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    </head>

    <style>
        /* Basic styles */

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }

        input, select, textarea {
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
    </style>


    <body style="background-color: #f7f8fc;">

        <div class="container-fluid">

            <div class="row">
                <div class="col-md-2 p-0">
                    <jsp:include page="menuAdmin.jsp"/>
                </div>

                <div class="container col-md-10">

                    <div class="row">
                        <!-- Dropdown Section -->
                        <div
                            class="dropdown-light d-flex justify-content-end mt-3 px-4">
                            <div class="fields">
                                <div
                                    class="field-item d-flex align-items-center justify-content-between">
                                    <div class="text">
                                        <h2>Quản Lý Ôn Tập</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Header -->
                    <div class>
                        <div class="header bg-white rounded-3 p-3"
                             style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); margin: 20px 30px 20px 10px; display: flex;">
                            <div
                                style="gap: 15px; display: flex; align-items: baseline; padding-top: 10px;">
                                <h4>Cập nhật câu hỏi</h4>
                            </div>
                            <div style="display: flex; gap: 20px;">
                                <a href="ListQuizController"
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

                        <div>
                            <form id="examForm" action="${pageContext.request.contextPath}/admin/EditQuizController" method="POST">
                                <input type="hidden" id="flashCardId" name="id" value="${flashCard.flashCardId}">

                                <div class="form-group">
                                    <label for="quizName">Câu hỏi</label>
                                    <input type="text" id="quizName" name="quizName" class="form-control" value="${flashCard.questionName}" required>
                                </div>

                                <div class="form-group">
                                    <label for="option1">Đáp án 1</label>
                                    <input type="text" id="option1" name="option1" class="form-control" value="${flashCard.option1}" required>
                                </div>

                                <div class="form-group">
                                    <label for="option2">Đáp án 2</label>
                                    <input type="text" id="option2" name="option2" class="form-control" value="${flashCard.option2}" required>
                                </div>

                                <div class="form-group">
                                    <label for="option3">Đáp án 3</label>
                                    <input type="text" id="option3" name="option3" class="form-control" value="${flashCard.option3}" required>
                                </div>

                                <div class="form-group">
                                    <label for="option4">Đáp án 4</label>
                                    <input type="text" id="option4" name="option4" class="form-control" value="${flashCard.option4}" required>
                                </div>

                                <div class="form-group">
                                    <label for="true_answer">Đáp án đúng</label>
                                    <input type="text" id="true_answer" name="true_answer" class="form-control" value="${flashCard.true_answer}" required>
                                </div>

                                <div class="form-group">
                                    <label for="className">Lớp</label>
                                    <input type="text" id="className" name="className" class="form-control" value="${flashCard.classes.name}" readonly required>
                                </div>

                                <div class="form-group">
                                    <label for="subjectName">Môn Học</label>
                                    <input type="text" id="subjectName" name="subjectName" class="form-control" value="${flashCard.subject.name}" readonly required>
                                </div>

                                <div class="form-group">
                                    <label for="module">Chương</label>
                                    <input type="text" id="module" name="module" class="form-control" value="${flashCard.module.name}"readonly required>
                                </div>

                                <button type="submit" class="btn btn-primary">Cập nhật câu hỏi</button>
                            </form>

                        </div>

                        <!-- Popup for confirmation -->
                        <div class="popup-overlay" id="popup-addDocument" style="display:none;">
                            <div class="popup-addDocument">
                                <h2>Xác Nhận</h2>
                                <p>Bạn có chắc chắn sửa câu hỏi này không?</p>
                                <button type="button" id="confirmButton">Xác Nhận</button>
                                <button type="button" class="cancel-btn" id="cancelButton">Hủy Bỏ</button>
                            </div>
                        </div>

                        <script>
                            // Get references to the DOM elements
                            const addButton = document.getElementById('addButton');
                            const popup = document.getElementById('popup-addDocument');
                            const confirmButton = document.getElementById('confirmButton');
                            const cancelButton = document.getElementById('cancelButton');
                            const examForm = document.getElementById('examForm');

                            // Show the popup when the Add button is clicked
                            addButton.addEventListener('click', function () {
                                popup.style.display = 'flex';  // Show the popup
                            });

                            // Close the popup when the Cancel button is clicked
                            cancelButton.addEventListener('click', function () {
                                popup.style.display = 'none';  // Hide the popup
                            });

                            // Handle the form submission when the Confirm button is clicked
                            confirmButton.addEventListener('click', function () {
                                examForm.submit(); // Submit the form when confirmed
                            });
                        </script>

                        <script
                        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
                        </body>
                        </html>