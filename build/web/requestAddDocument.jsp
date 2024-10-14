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

                        <div style="display:flex; gap:10px;">
                            <a href="requestAddDocument.jsp" style="text-decoration: none; "><button
                                    class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="display: flex; gap: 15px;"> <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2ZM12 4C7.58172 4 4 7.58172 4 12C4 16.4183 7.58172 20 12 20C16.4183 20 20 16.4183 20 12C20 7.58172 16.4183 4 12 4ZM15.2929 8.29289L10 13.5858L8.70711 12.2929C8.31658 11.9024 7.68342 11.9024 7.29289 12.2929C6.90237 12.6834 6.90237 13.3166 7.29289 13.7071L9.29289 15.7071C9.68342 16.0976 10.3166 16.0976 10.7071 15.7071L16.7071 9.70711C17.0976 9.31658 17.0976 8.68342 16.7071 8.29289C16.3166 7.90237 15.6834 7.90237 15.2929 8.29289Z" fill="#fff"/>
                                    </svg>


                                    Thêm</button></a>
                            <a href="document.jsp" style="text-decoration: none; " class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="display: flex; gap: 15px;">
                                     <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2ZM12 4C7.58172 4 4 7.58172 4 12C4 16.4183 7.58172 20 12 20C16.4183 20 20 16.4183 20 12C20 7.58172 16.4183 4 12 4ZM7.29325 7.29325C7.65417 6.93233 8.22045 6.90456 8.61296 7.20996L8.70725 7.29325L12.0002 10.5863L15.2933 7.29325C15.6842 6.90225 16.3162 6.90225 16.7072 7.29325C17.0682 7.65417 17.0959 8.22045 16.7905 8.61296L16.7072 8.70725L13.4142 12.0002L16.7072 15.2933C17.0982 15.6842 17.0982 16.3162 16.7072 16.7072C16.5122 16.9022 16.2562 17.0002 16.0002 17.0002C15.7869 17.0002 15.5736 16.9322 15.3956 16.7967L15.2933 16.7072L12.0002 13.4142L8.70725 16.7072C8.51225 16.9022 8.25625 17.0002 8.00025 17.0002C7.74425 17.0002 7.48825 16.9022 7.29325 16.7072C6.93233 16.3463 6.90456 15.7801 7.20996 15.3875L7.29325 15.2933L10.5863 12.0002L7.29325 8.70725C6.90225 8.31625 6.90225 7.68425 7.29325 7.29325Z" fill="#fff"/>
                                    </svg>

                                    Hủy</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--         Footer Start -->
        <jsp:include page="footer.jsp"/>
        <!--     Footer End -->
    </body>
</html>
