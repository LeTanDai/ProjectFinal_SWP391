<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="dao.SubjectDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Video" %>
<%@ page import="model.Lesson" %>
<%@ page import="model.Lesson_Content" %>
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
                                        <h2>Quản Lý Bài Học</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Header -->
                    <div class>
                        <div class="header bg-white rounded-3 p-3"
                             style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); margin: 20px 30px 20px 10px;">
                            <div style="display: flex; gap: 20px;">
                                <a href="AdminAddLessonInfor" style="text-decoration: none;"><button
                                        class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="display: flex; gap: 15px;"> <svg width="24" height="24"  viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM17 12C17.5523 12 18 12.4477 18 13V16H21C21.5523 16 22 16.4477 22 17C22 17.5523 21.5523 18 21 18H18V21C18 21.5523 17.5523 22 17 22C16.4477 22 16 21.5523 16 21V18H13C12.4477 18 12 17.5523 12 17C12 16.4477 12.4477 16 13 16H16V13C16 12.4477 16.4477 12 17 12ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#fff"/>
                                        </svg>
                                        Thêm Bài Học</button></a>
                            </div>
                        </div>

                        <div class=" bg-white rounded-3 p-3"
                             style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); margin: 20px 30px 20px 10px; display: flex; flex-direction: column; gap: 15px; max-height: 530px;">
                            <!-- search bar -->
                            <form action="AdminListSearchLesson" style="display: flex">
                                <div class="group-search" style="margin: 0 3px;">
                                    <svg viewBox="0 0 24 24" aria-hidden="true" class="search-icon">
                                    <g>
                                    <path
                                        d="M21.53 20.47l-3.66-3.66C19.195 15.24 20 13.214 20 11c0-4.97-4.03-9-9-9s-9 4.03-9 9 4.03 9 9 9c2.215 0 4.24-.804 5.808-2.13l3.66 3.66c.147.146.34.22.53.22s.385-.073.53-.22c.295-.293.295-.767.002-1.06zM3.5 11c0-4.135 3.365-7.5 7.5-7.5s7.5 3.365 7.5 7.5-3.365 7.5-7.5 7.5-7.5-3.365-7.5-7.5z">
                                    </path>
                                    </g>
                                    </svg>

                                    <input id="query" class="input-search" type="search" placeholder="Tìm kiếm..." name="search" />
                                </div>
                                <div style="gap: 20px; padding: 20px">
                                    <button
                                        type="submit"
                                        name="buttonsearch"
                                        class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">
                                        Tìm kiếm
                                    </button>
                                </div>
                            </form>

                            <!-- List document -->
                            <div>
                                <table class="table">
                                    <thead>
                                        <tr>

                                            <th>Tên</th>
                                            <th>Môn</th>
                                            <th>Lớp</th>
                                            <th>Loại</th>
                                            <th>Link bài</th>
                                            <th>Tùy Chỉnh</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="entry" items="${submapvideo}">
                                            <tr>
                                                <td style="padding: 20px;">${entry.key.getName()}</td>
                                                <c:forEach var="outentry" items="${entry.value}">
                                                    <c:forEach var="entry2" items="${outentry.value}">
                                                        <td style="padding: 20px;">${entry2.key.getName()}</td>
                                                        <td style="padding: 20px;">${entry2.value.getName()}</td>
                                                    </c:forEach>
                                                    <td style="padding: 20px;">video</td>
                                                    <c:forEach var="entrylesson" items="${outentry.key}">
                                                        <td style="padding: 20px;"><a href="VideoServlet?video=${entrylesson.key.getId()}&content=${entrylesson.value.getId()}">${entrylesson.key.getTitle()}</a></td>
                                                        </c:forEach>
                                                    <td style="padding: 20px; gap: 20px; display: flex;">
                                                        <form action="AdminListLesson" method="post" style="display: inline;">
                                                            <c:forEach var="entryvideo" items="${outentry.key}">
                                                                <input type="hidden" name="videoid" value="${entryvideo.key.getId()}" />
                                                            </c:forEach>
                                                            <c:forEach var="entrylesson" items="${outentry.key}">
                                                                <input type="hidden" name="contentid" value="${entrylesson.value.getId()}" />
                                                            </c:forEach>
                                                            <button name="operatevideo" type="submit" value="delete" method="post" style="background: none; border: none; padding: 0;">
                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM15.7071 14.2929L18 16.585L20.2929 14.2929C20.6534 13.9324 21.2206 13.9047 21.6129 14.2097L21.7071 14.2929C22.0676 14.6534 22.0953 15.2206 21.7903 15.6129L21.7071 15.7071L19.415 18L21.7071 20.2929C22.0976 20.6834 22.0976 21.3166 21.7071 21.7071C21.3166 22.0976 20.6834 22.0976 20.2929 21.7071L18 19.415L15.7071 21.7071C15.3466 22.0676 14.7794 22.0953 14.3871 21.7903L14.2929 21.7071C13.9324 21.3466 13.9047 20.7794 14.2097 20.3871L14.2929 20.2929L16.585 18L14.2929 15.7071C13.9024 15.3166 13.9024 14.6834 14.2929 14.2929C14.6834 13.9024 15.3166 13.9024 15.7071 14.2929ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                                                </svg>
                                                            </button>
                                                        </form>
                                                        <a href="AdminUpdateLessonController?lessonid=${entry.key.getId()}" style="background: none; border: none; padding: 0; display: inline-flex;">
                                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM17.2929 12.2929C17.6534 11.9324 18.2206 11.9047 18.6129 12.2097L18.7071 12.2929L21.7071 15.2929C22.0676 15.6534 22.0953 16.2206 21.7903 16.6129L21.7071 16.7071L16.7071 21.7071C16.5508 21.8634 16.3481 21.9626 16.1314 21.9913L16 22H13C12.4872 22 12.0645 21.614 12.0067 21.1166L12 21V18C12 17.779 12.0732 17.5655 12.2061 17.392L12.2929 17.2929L17.2929 12.2929ZM18 14.4142L14 18.4142V20H15.5858L19.5858 16L18 14.4142ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                                            </svg>
                                                        </a>

                                                    </td>

                                                </c:forEach>
                                            </tr> 
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="pagination"
                             style="margin: 20px 30px 20px 10px; gap: 10px; display: flex; justify-content: space-between;">
                            <form action="AdminListLesson">
                                <input type="hidden" name="search" value="${search}" />
                                <input type="hidden" name="currentPage" value="${currentPage}" />
                                <button type="submit" name="action" value="previous" ${currentPage == 1 ? 'disabled' : ''}>Trước</button>
                                <button type="submit" name="action" value="next" ${currentPage == totalPages ? 'disabled' : ''}>Sau</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>