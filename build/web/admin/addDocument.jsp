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
        <link rel="stylesheet" href="../css/style.css">

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
                    <div class="sidebar-light d-flex flex-column bg-white"
                         style="box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
                        <!-- Logo Section -->
                        <div class="logo text-center mt-3">

                        </div>

                        <!-- Menu Items -->
                        <div class="menu mt-5" style="display: flex;
                             flex-direction: column;
                             align-content: center;
                             flex-wrap: wrap;
                             gap: 30px; ">
                            <a href="dashBoard.jsp"
                               class="nav-item nav-link active">
                                <div
                                    class="menu-item d-flex align-items-center "
                                    style="gap: 5px; color: black;">
                                    <svg width="24" height="24"
                                         viewBox="0 0 24 24" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                          clip-rule="evenodd"
                                          d="M19 13C20.6569 13 22 14.3431 22 16V19C22 20.6569 20.6569 22 19 22H16C14.3431 22 13 20.6569 13 19V16C13 14.3431 14.3431 13 16 13H19ZM8 13C9.65685 13 11 14.3431 11 16V19C11 20.6569 9.65685 22 8 22H5C3.34315 22 2 20.6569 2 19V16C2 14.3431 3.34315 13 5 13H8ZM19 15H16C15.4477 15 15 15.4477 15 16V19C15 19.5523 15.4477 20 16 20H19C19.5523 20 20 19.5523 20 19V16C20 15.4477 19.5523 15 19 15ZM8 15H5C4.44772 15 4 15.4477 4 16V19C4 19.5523 4.44772 20 5 20H8C8.55228 20 9 19.5523 9 19V16C9 15.4477 8.55228 15 8 15ZM8 2C9.65685 2 11 3.34315 11 5V8C11 9.65685 9.65685 11 8 11H5C3.34315 11 2 9.65685 2 8V5C2 3.34315 3.34315 2 5 2H8ZM19 2C20.6569 2 22 3.34315 22 5V8C22 9.65685 20.6569 11 19 11H16C14.3431 11 13 9.65685 13 8V5C13 3.34315 14.3431 2 16 2H19ZM8 4H5C4.44772 4 4 4.44772 4 5V8C4 8.55228 4.44772 9 5 9H8C8.55228 9 9 8.55228 9 8V5C9 4.44772 8.55228 4 8 4ZM19 4H16C15.4477 4 15 4.44772 15 5V8C15 8.55228 15.4477 9 16 9H19C19.5523 9 20 8.55228 20 8V5C20 4.44772 19.5523 4 19 4Z"
                                          fill="#06152B" />
                                    </svg>

                                    <span class="menu-text">Dashboard</span>
                                </div>
                            </a>
                            <a href="listUser.jsp" class="nav-item nav-link">
                                <div
                                    class="menu-item d-flex align-items-center  "
                                    style="gap: 5px; color: black;">
                                    <svg xmlns="http://www.w3.org/2000/svg"
                                         width="24px" height="24px"
                                         fill="currentColor" class="bi bi-people"
                                         viewBox="0 0 16 16">
                                    <path
                                        d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1zm-7.978-1L7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002-.014.002zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4m3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0M6.936 9.28a6 6 0 0 0-1.23-.247A7 7 0 0 0 5 9c-4 0-5 3-5 4q0 1 1 1h4.216A2.24 2.24 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816M4.92 10A5.5 5.5 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0m3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4" />
                                    </svg>

                                    <span class="menu-text">Người Dùng</span>
                                </div>
                            </a>
                            <a href="listDocument.jsp"
                               class="nav-item nav-link"
                               style="background-color: #ff6600; border-radius: 15px; width: 200px; height: 50px; padding: 12px 30px;">
                                <div
                                    class="menu-item d-flex align-items-center  "
                                    style="gap: 5px; color: black;">
                                    <svg
                                        style="width: 24px; height: 24px;"
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="16" height="16"
                                        fill="currentColor"
                                        class="bi bi-file-earmark-text"
                                        viewBox="0 0 16 16">
                                    <path
                                        d="M5.5 7a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1zM5 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m0 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5" />
                                    <path
                                        d="M9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.5zm0 1v2A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1z" />
                                    </svg>
                                    <span class="menu-text">Tài Liệu</span>
                                </div>
                            </a>
                            <a href="listLesson.jsp" class="nav-item nav-link">
                                <div
                                    class="menu-item d-flex align-items-center "
                                    style="gap: 5px; color: black;">
                                    <svg
                                        style="width: 24px; height: 24px;"
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="16" height="16"
                                        fill="currentColor"
                                        class="bi bi-journal-text"
                                        viewBox="0 0 16 16">
                                    <path
                                        d="M5 10.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5m0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5" />
                                    <path
                                        d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2" />
                                    <path
                                        d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1z" />
                                    </svg>
                                    <span class="menu-text">Bài Học</span>
                                </div>
                            </a>
                            <a href="listQuiz.jsp" class="nav-item nav-link">
                                <div
                                    class="menu-item d-flex align-items-center "
                                    style="gap: 5px; color: black;">
                                    <img src="../img/quiz.png" class="me-3"
                                         alt="Calendar Icon"
                                         style="width: 24px; height: 24px;">
                                    <span class="menu-text">Bài kiểm tra</span>
                                </div>
                            </a>
                        </div>

                    </div>
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
                                        <h2>Quản Lý Tài Liệu</h2>
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
                                <h4>Thêm tài liệu</h4>
                            </div>
                            <div style="display: flex; gap: 20px;">
                                <a href="listDocument.jsp"
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

                        <div class=" bg-white rounded-3 p-3"
                             style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); margin: 20px 30px 20px 10px; display: flex; flex-direction: column; gap: 15px;">
                            <div style="margin: 0 3px;">

                            </div>

                            <div>
                                <form id="documentForm">
                                    <label for="docName">Tên Tài Liệu</label>
                                    <input type="text" id="docName"
                                           name="docName"
                                           placeholder="Nhập tên tài liệu"
                                           required>

                                    <label for="createDay">Ngày Thêm</label>
                                    <input type="date" id="createDay"
                                           name="createDay" required>

                                    <label for="docType">Loại</label>
                                    <select id="docType" name="docType"
                                            required>
                                        <option value="PDF">PDF</option>
                                        <option value="Video">Video</option>
                                    </select>

                                    <label for="description">Ghi Chú</label>
                                    <textarea id="description"
                                              name="description" rows="4"
                                              placeholder="Enter a brief description"></textarea>

                                    <label for="fileUpload">Tải File</label>
                                    <input type="file" id="fileUpload"
                                           name="fileUpload" required>

                                    <button type="button" id="addButton"
                                            class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Thêm
                                        Tài Liệu</button>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>

        <!-- Popup for confirmation -->
        <div class="popup-overlay" id="popup-addDocument">
            <div class="popup-addDocument">
                <h2>Xác Nhận</h2>
                <p>Bạn có chắc chắn muốn thêm tài liệu này không?</p>
                <button type="button" id="confirmButton">Xác Nhận</button>
                <button type="button" class="cancel-btn"
                        id="cancelButton">Hủy Bỏ</button>
            </div>
        </div>

        <script>
            // Get references to the DOM elements
            const addButton = document.getElementById('addButton');
            const popup = document.getElementById('popup-addDocument');
            const confirmButton = document.getElementById('confirmButton');
            const cancelButton = document.getElementById('cancelButton');

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
                // Here you can handle the form submission, for example, send the data to a server
                alert('Document has been added!');

                // After submission, hide the popup and reset the form
                popup.style.display = 'none';
                document.getElementById('documentForm').reset();
            });
        </script>

        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>