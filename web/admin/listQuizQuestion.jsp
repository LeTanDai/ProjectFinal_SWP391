<%-- 
    Document   : listQuizQuestion
    Created on : Oct 23, 2024, 10:19:59 PM
    Author     : lethe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <!-- Custom CSS -->

    </head>
    <body>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2 p-0">
                    
                    <jsp:include page="menuAdmin.jsp"/>
                </div>

                <div class="container col-md-10">
                    <div class="row">
                        <div
                            class="dropdown-light d-flex justify-content-end mt-3 px-4">
                            <div class="fields">
                                <div
                                    class="field-item d-flex align-items-center justify-content-between">
                                    <div class="text">
                                        <h2>Quản Lý Bài Học</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="bg-white rounded-3 p-3">
                        <!-- Module Input Form -->
                        <div>
                            <div class="mb-3">
                                <h4>Sinh học - Chương 22 Tiến hóa</h4>
                            </div>

                            <!-- Action Buttons -->
                            <div class="mb-4" style="display: flex; gap: 20px;">
                                <button
                                    class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">+
                                    Thêm Câu Hỏi</button>
                                <div style="display: flex; gap: 20px;">
                                    <a href="listLesson.html"
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
                        </div>

                        <!-- Module Table -->
                        <form action="" method="">
                            <div class="card mb-3">
                                <div class="card-body"
                                     style="box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
                                    <div class="row" style="padding-left: 15px; display: flex; justify-content: space-between;">
                                        <h5>Câu 1</h5>
                                        <div style="display: flex; gap: 20px;">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M21 16C21.5128 16 21.9355 16.386 21.9933 16.8834L22 17V19C22 20.5977 20.7511 21.9037 19.1763 21.9949L19 22H5C3.40232 22 2.09634 20.7511 2.00509 19.1763L2 19V17C2 16.4477 2.44772 16 3 16C3.51284 16 3.93551 16.386 3.99327 16.8834L4 17V19C4 19.5128 4.38604 19.9355 4.88338 19.9933L5 20H19C19.5128 20 19.9355 19.614 19.9933 19.1166L20 19V17C20 16.4477 20.4477 16 21 16ZM12 2C12.5523 2 13 2.44772 13 3V12.585L14.2929 11.2929C14.6534 10.9324 15.2206 10.9047 15.6129 11.2097L15.7071 11.2929C16.0676 11.6534 16.0953 12.2206 15.7903 12.6129L15.7071 12.7071L12.7071 15.7071L12.6631 15.7485L12.5953 15.8037L12.4841 15.8753L12.3713 15.9288L12.266 15.9642L12.1175 15.9932L12 16L11.9248 15.9972L11.7993 15.9798L11.6879 15.9503L11.5768 15.9063L11.4793 15.854L11.3833 15.7872C11.3515 15.7623 11.3214 15.7356 11.2929 15.7071L8.29289 12.7071C7.90237 12.3166 7.90237 11.6834 8.29289 11.2929C8.65338 10.9324 9.22061 10.9047 9.6129 11.2097L9.70711 11.2929L11 12.585V3C11 2.44772 11.4477 2 12 2Z" fill="#06152B"/>
                                            </svg>

                                            <svg style="margin-right: 10px;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M17 8C17.5523 8 18 8.44772 18 9V19C18 20.6569 16.6569 22 15 22H9C7.34315 22 6 20.6569 6 19V9C6 8.44772 6.44772 8 7 8H17ZM16 10H8V19C8 19.5523 8.44772 20 9 20H15C15.5523 20 16 19.5523 16 19V10ZM9 3C9 2.44772 9.44772 2 10 2H14C14.5523 2 15 2.44772 15 3V4H19C19.5523 4 20 4.44772 20 5C20 5.55228 19.5523 6 19 6H5C4.44772 6 4 5.55228 4 5C4 4.44772 4.44772 4 5 4H9V3Z" fill="#06152B"/>
                                            </svg>

                                        </div>                                        
                                    </div>
                                    <hr style="border: 0.5px solid;">
                                    <div class="row"
                                         style="margin-bottom: 20px;">
                                        <div class="col-sm-6" style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Câu Hỏi</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>

                                        <div class="col-sm-6"
                                             style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Đáp Án</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                    </div>
                                    <div class="row"
                                         style="margin-bottom: 20px;">
                                        <div class="col-sm-6"
                                             style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Đáp án 1</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                        <div class="col-sm-6"
                                             style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Đáp án 2</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                    </div>
                                    <div class="row"
                                         style="margin-bottom: 20px;">
                                        <div class="col-sm-6"
                                             style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Đáp án 3</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                        <div class="col-sm-6"
                                             style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Đáp án 4</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <form action="" method="">
                            <div class="card mb-3">
                                <div class="card-body"
                                     style="box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
                                    <div class="row" style="padding-left: 15px; display: flex; justify-content: space-between;">
                                        <h5>Câu 1</h5>
                                        <div style="display: flex; gap: 20px;">
                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M21 16C21.5128 16 21.9355 16.386 21.9933 16.8834L22 17V19C22 20.5977 20.7511 21.9037 19.1763 21.9949L19 22H5C3.40232 22 2.09634 20.7511 2.00509 19.1763L2 19V17C2 16.4477 2.44772 16 3 16C3.51284 16 3.93551 16.386 3.99327 16.8834L4 17V19C4 19.5128 4.38604 19.9355 4.88338 19.9933L5 20H19C19.5128 20 19.9355 19.614 19.9933 19.1166L20 19V17C20 16.4477 20.4477 16 21 16ZM12 2C12.5523 2 13 2.44772 13 3V12.585L14.2929 11.2929C14.6534 10.9324 15.2206 10.9047 15.6129 11.2097L15.7071 11.2929C16.0676 11.6534 16.0953 12.2206 15.7903 12.6129L15.7071 12.7071L12.7071 15.7071L12.6631 15.7485L12.5953 15.8037L12.4841 15.8753L12.3713 15.9288L12.266 15.9642L12.1175 15.9932L12 16L11.9248 15.9972L11.7993 15.9798L11.6879 15.9503L11.5768 15.9063L11.4793 15.854L11.3833 15.7872C11.3515 15.7623 11.3214 15.7356 11.2929 15.7071L8.29289 12.7071C7.90237 12.3166 7.90237 11.6834 8.29289 11.2929C8.65338 10.9324 9.22061 10.9047 9.6129 11.2097L9.70711 11.2929L11 12.585V3C11 2.44772 11.4477 2 12 2Z" fill="#06152B"/>
                                            </svg>

                                            <svg style="margin-right: 10px;" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M17 8C17.5523 8 18 8.44772 18 9V19C18 20.6569 16.6569 22 15 22H9C7.34315 22 6 20.6569 6 19V9C6 8.44772 6.44772 8 7 8H17ZM16 10H8V19C8 19.5523 8.44772 20 9 20H15C15.5523 20 16 19.5523 16 19V10ZM9 3C9 2.44772 9.44772 2 10 2H14C14.5523 2 15 2.44772 15 3V4H19C19.5523 4 20 4.44772 20 5C20 5.55228 19.5523 6 19 6H5C4.44772 6 4 5.55228 4 5C4 4.44772 4.44772 4 5 4H9V3Z" fill="#06152B"/>
                                            </svg>

                                        </div>                                        
                                    </div>
                                    <hr style="border: 0.5px solid;">
                                    <div class="row"
                                         style="margin-bottom: 20px;">
                                        <div class="col-sm-6" style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Câu Hỏi</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>

                                        <div class="col-sm-6"
                                             style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Đáp Án</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                    </div>
                                    <div class="row"
                                         style="margin-bottom: 20px;">
                                        <div class="col-sm-6"
                                             style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Đáp án 1</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                        <div class="col-sm-6"
                                             style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Đáp án 2</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                    </div>
                                    <div class="row"
                                         style="margin-bottom: 20px;">
                                        <div class="col-sm-6"
                                             style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Đáp án 3</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                        <div class="col-sm-6"
                                             style="gap: 10px; display: flex; flex-direction: column;">
                                            <h6 class="mb-0">Đáp án 4</h6>
                                            <input type="text" name="" value="Câu hỏi A" required style="background-color: white; border: 1px solid black; border-radius: 5px; width: 100%; height:40px; padding: 10px; color: #74767a;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="pagination"
                         style="margin: 20px 30px 20px 10px; gap: 10px; display: flex; justify-content: space-between;">
                        <div>
                            <span>Số lượng:</span>
                            <select>
                                <option>6</option>
                                <!-- Add more options as needed -->
                            </select>
                        </div>
                        <div>
                            <button>Trước</button>
                            <button>Sau</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS -->
        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Font Awesome Icons -->
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
    </body>
</html>
