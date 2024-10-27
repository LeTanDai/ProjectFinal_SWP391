<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <style>
            .btn a:hover {
                text-decoration: none;
            </style>


            <script type="text/javascript">
                function doDelete(id) {
                    if (confirm("Bạn có chắc chắn xóa câu hỏi này không?")) {
                        window.location = "DeleteQuizController?id=" + id;
                    }
                }
            </script>

        </head>

        <body style="background-color: #f7f8fc;">

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
                                            <h2>Quản Lý Ôn Tập</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="bg-white rounded-3 p-3">
                            <!-- Module Input Form -->
                            <div>
                                <!-- Action Buttons -->
                                <div class="mb-4" style="display: flex;
                                     gap: 20px;">
                                    <button class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">
                                        <a href="addQuiz.jsp" class="no-underline" style="color: white;">
                                            <i class="fas fa-plus-circle"></i> Thêm Câu Hỏi
                                        </a>
                                    </button>
                                </div>
                            </div>
                            <h3 style="color: green;
                                text-align: center;
                                margin: 20px 0">${requestScope.mess}</h3>

                                <!-- Module Table -->
                                <div class="card mb-3">
                                    <c:forEach var="quiz" items="${listF}">
                                        <c:set var="id" value="${quiz.flashCardId}"/>
                                        <div class="card-body"
                                             style="box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
                                        <div class="row" style="padding-left: 15px;
                                             display: flex;
                                             justify-content: space-between;">
                                            <h5>${quiz.classes.name}</h5>

                                            <div style="display: flex;
                                                 gap: 20px;">
                                                <a href="#" onclick="doDelete('${id}')">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM15.7071 14.2929L18 16.585L20.2929 14.2929C20.6534 13.9324 21.2206 13.9047 21.6129 14.2097L21.7071 14.2929C22.0676 14.6534 22.0953 15.2206 21.7903 15.6129L21.7071 15.7071L19.415 18L21.7071 20.2929C22.0976 20.6834 22.0976 21.3166 21.7071 21.7071C21.3166 22.0976 20.6834 22.0976 20.2929 21.7071L18 19.415L15.7071 21.7071C15.3466 22.0676 14.7794 22.0953 14.3871 21.7903L14.2929 21.7071C13.9324 21.3466 13.9047 20.7794 14.2097 20.3871L14.2929 20.2929L16.585 18L14.2929 15.7071C13.9024 15.3166 13.9024 14.6834 14.2929 14.2929C14.6834 13.9024 15.3166 13.9024 15.7071 14.2929ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                                    </svg>
                                                </a>


                                                <a href="EditQuizController?id=${id}"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM17.2929 12.2929C17.6534 11.9324 18.2206 11.9047 18.6129 12.2097L18.7071 12.2929L21.7071 15.2929C22.0676 15.6534 22.0953 16.2206 21.7903 16.6129L21.7071 16.7071L16.7071 21.7071C16.5508 21.8634 16.3481 21.9626 16.1314 21.9913L16 22H13C12.4872 22 12.0645 21.614 12.0067 21.1166L12 21V18C12 17.779 12.0732 17.5655 12.2061 17.392L12.2929 17.2929L17.2929 12.2929ZM18 14.4142L14 18.4142V20H15.5858L19.5858 16L18 14.4142ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                                    </svg>
                                                </a>

                                            </div>                                        
                                        </div>
                                        <hr style="border: 0.5px solid;">

                                        <div class="row"
                                             style="margin-bottom: 20px;">
                                            <div class="col-sm-6" style="gap: 10px;
                                                 display: flex;
                                                 flex-direction: column;">
                                                <h6 class="mb-0">Câu Hỏi</h6>
                                                <input type="text" name="" value="${quiz.questionName}" required style="background-color: white;
                                                       border: 1px solid black;
                                                       border-radius: 5px;
                                                       width: 100%;
                                                       height:40px;
                                                       padding: 10px;
                                                       color: #74767a;">
                                            </div>

                                            <div class="col-sm-6"
                                                 style="gap: 10px;
                                                 display: flex;
                                                 flex-direction: column;">
                                                <h6 class="mb-0">Đáp Án</h6>
                                                <input type="text" name="" value="${quiz.true_answer}" required style="background-color: white;
                                                       border: 1px solid black;
                                                       border-radius: 5px;
                                                       width: 100%;
                                                       height:40px;
                                                       padding: 10px;
                                                       color: #74767a;">
                                            </div>
                                        </div>
                                        <div class="row"
                                             style="margin-bottom: 20px;">
                                            <div class="col-sm-6"
                                                 style="gap: 10px;
                                                 display: flex;
                                                 flex-direction: column;">
                                                <h6 class="mb-0">Đáp án 1</h6>
                                                <input type="text" name="" value="${quiz.option1}" required style="background-color: white;
                                                       border: 1px solid black;
                                                       border-radius: 5px;
                                                       width: 100%;
                                                       height:40px;
                                                       padding: 10px;
                                                       color: #74767a;">
                                            </div>
                                            <div class="col-sm-6"
                                                 style="gap: 10px;
                                                 display: flex;
                                                 flex-direction: column;">
                                                <h6 class="mb-0">Đáp án 2</h6>
                                                <input type="text" name="" value="${quiz.option2}" required style="background-color: white;
                                                       border: 1px solid black;
                                                       border-radius: 5px;
                                                       width: 100%;
                                                       height:40px;
                                                       padding: 10px;
                                                       color: #74767a;">
                                            </div>
                                        </div>
                                        <div class="row"
                                             style="margin-bottom: 20px;">
                                            <div class="col-sm-6"
                                                 style="gap: 10px;
                                                 display: flex;
                                                 flex-direction: column;">
                                                <h6 class="mb-0">Đáp án 3</h6>
                                                <input type="text" name="" value="${quiz.option3}" required style="background-color: white;
                                                       border: 1px solid black;
                                                       border-radius: 5px;
                                                       width: 100%;
                                                       height:40px;
                                                       padding: 10px;
                                                       color: #74767a;">
                                            </div>
                                            <div class="col-sm-6"
                                                 style="gap: 10px;
                                                 display: flex;
                                                 flex-direction: column;">
                                                <h6 class="mb-0">Đáp án 4</h6>
                                                <input type="text" name="" value="${quiz.option4}" required style="background-color: white;
                                                       border: 1px solid black;
                                                       border-radius: 5px;
                                                       width: 100%;
                                                       height:40px;
                                                       padding: 10px;
                                                       color: #74767a;">
                                            </div>
                                        </div>
                                        <div class="row"
                                             style="margin-bottom: 20px;">
                                            <div class="col-sm-6"
                                                 style="gap: 10px;
                                                 display: flex;
                                                 flex-direction: column;">
                                                <h6 class="mb-0">Chương</h6>
                                                <input type="text" name="" value="${quiz.module.name}" required style="background-color: white;
                                                       border: 1px solid black;
                                                       border-radius: 5px;
                                                       width: 100%;
                                                       height:40px;
                                                       padding: 10px;
                                                       color: #74767a;">
                                            </div>
                                            <div class="col-sm-6"
                                                 style="gap: 10px;
                                                 display: flex;
                                                 flex-direction: column;">
                                                <h6 class="mb-0">Môn học</h6>
                                                <input type="text" name="" value="${quiz.subject.name}" required style="background-color: white;
                                                       border: 1px solid black;
                                                       border-radius: 5px;
                                                       width: 100%;
                                                       height:40px;
                                                       padding: 10px;
                                                       color: #74767a;">
                                            </div>
                                        </div>

                                    </div>
                                </c:forEach>

                            </div>

                        </div>

                        <div class="pagination" style="margin: 20px 30px 20px 10px;
                             gap: 10px;
                             display: flex;
                             justify-content: space-between;">
                            <div>
                                <span>Số lượng:</span>
                                <form action="ListQuizController" method="get">
                                    <select name="itemsPerPage" onchange="this.form.submit()">
                                        <option value="6" ${itemsPerPage == 6 ? 'selected' : ''}>6</option>
                                        <option value="12" ${itemsPerPage == 12 ? 'selected' : ''}>12</option>
                                        <option value="18" ${itemsPerPage == 18 ? 'selected' : ''}>18</option>
                                    </select>
                                </form>
                            </div>
                            <div>
                                <form action="ListQuizController" method="get">
                                    <input type="hidden" name="currentPage" value="${currentPage}" />
                                    <button type="submit" name="action" value="previous" ${currentPage == 1 ? 'disabled' : ''}>Trước</button>
                                    <button type="submit" name="action" value="next" ${currentPage == totalPages ? 'disabled' : ''}>Sau</button>
                                </form>
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