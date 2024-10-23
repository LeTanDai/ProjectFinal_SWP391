<%-- 
    Document   : requestAddDocument.jsp
    Created on : Oct 11, 2024, 4:09:26 AM
    Author     : lethe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    </head>
    <body>
        <!--     Navbar start-->
        <jsp:include page="menu.jsp"/>
        <!--     Navbar End -->

        <div class="container-fluid page-header" style="margin-bottom: 90px;">
            <div class="container">
                <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                    <h3 class="display-4 text-white text-uppercase" style="text-align: center">Tài Liệu</h3>
                </div>
            </div>
        </div>

        <div class="container">
            <div class=" bg-white rounded-3 p-3"
                 style="border-radius: 10px; box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1); margin: 20px 30px 20px 10px; display: flex; flex-direction: column; gap: 15px;">
                <div style="margin: 0 3px;">

                </div>

                <div>
                    <form id="docPenningForm" action="/FinalProject_SWP391/RequestAddDocumentController" method="post" >
                        <label for="docName">Tên Tài Liệu</label>
                        <input type="text" id="docName" name="docName" placeholder="Nhập tên tài liệu" required>

                        <label for="docUrl">Document URL</label>
                        <input type="text" id="docUrl" name="docUrl" placeholder="Nhập URL tài liệu" required>

                        <label for="imageUrl">Image URL</label>
                        <input type="text" id="imageUrl" name="imageUrl" placeholder="Nhập Image URL tài liệu" required>

                        <label for="className">Lớp</label>
                        <select id="className" name="className" required>
                            <option>Lớp 10</option>
                            <option>Lớp 11</option>
                            <option>Lớp 12</option>
                        </select>

                        <label for="subjectName">Môn Học</label>
                        <select id="subjectName" name="subjectName" required>
                            <option>Toán</option>
                            <option>Lý</option>
                            <option>Hóa</option>
                        </select>

                        <button type="button" id="addButton" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Gửi Phê Duyệt Tài Liệu</button>
                    </form>
                </div>
            </div>
        </div>
        
        <div class="popup-overlay" id="popup-addDocument" style="display:none;">
            <div class="popup-addDocument">
                <h2>Xác Nhận</h2>
                <p>Bạn có chắc chắn muốn gửi phê duyệt tài liệu này không?</p>
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
            const docPenningForm = document.getElementById('docPenningForm');

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
                // Here, we submit the form
                docPenningForm.submit();
            });
        </script>
        <!--         Footer Start -->
        <jsp:include page="footer.jsp"/>
        <!--     Footer End -->
    </body>
</html>
