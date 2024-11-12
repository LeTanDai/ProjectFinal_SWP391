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
        <link rel="stylesheet" href="../css/style.css">

        <style>
        .page-indicator {
            position: fixed;
            bottom: 20px; /* Adjust as needed */
            right: 20px; /* Adjust as needed */
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background */
            color: white;
            padding: 10px;
            border-radius: 5px;
            font-size: 14px;
            display: flex;
            align-items: center;
        }

        .current-page {
            display: flex;
            align-items: center;
        }

        /* Optional: Add an icon */
        .page-indicator::before {
            content: '📄'; /* You can replace this with any icon */
            margin-right: 5px;
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
                        <div
                            class="dropdown-light d-flex justify-content-end mt-3 px-4">
                            <div class="fields">
                                <div
                                    class="field-item d-flex align-items-center justify-content-between">
                                    <div class="text">
                                        <h2>Quản Lý Người Dùng</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Header -->
                    <div class>
                        <div class="header bg-white rounded-3 p-3"
                             style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); margin: 20px 30px 20px 10px;">
                            <div style="gap: 15px; display: flex; align-items: baseline;">
                                <label>Xem:</label>
                                <select id="roleSelect" onchange="filterUsers()">
                                    <option value="All">Tất cả</option>
                                    <option value="Admin">Admin</option>
                                    <option value="Premium">Premium User</option>
                                    <option value="Normal">Normal User</option>
                                </select>
                            </div>

                        </div>

                        <div class=" bg-white rounded-3 p-3"
                             style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); margin: 20px 30px 20px 10px; display: flex; flex-direction: column; gap: 15px; max-height: 530px;">
                            <!-- search bar -->
                            <form action="AdminListSearchUser" style="display: flex">
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

                            <div>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tên</th>
                                            <th>Ngày Sinh</th>
                                            <th>Giới Tính</th>
                                            <th>SĐT</th>
                                            <th>Email</th>
                                            <th>Địa Chỉ</th>
                                            <th>Vai Trò</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="user" items="${subUserList}">
                                            <tr>
                                                <td style="padding: 20px;">${user.userId}</td>
                                                <td style="padding: 20px;">${user.fName}</td>
                                                <td style="padding: 20px;">${user.dob}</td>
                                                <td style="padding: 20px;">${user.gender ? 'Male' : 'Female'}</td>
                                                <td style="padding: 20px;">${user.phone}</td>
                                                <td style="padding: 20px;">${user.email}</td>
                                                <td style="padding: 20px;">${user.address}</td>
                                                <td style="padding: 20px;">
                                                    <c:choose>
                                                        <c:when test="${user.isAdmin}">Admin</c:when>
                                                        <c:when test="${user.isPremium}">Premium User</c:when>
                                                        <c:otherwise>Normal User</c:otherwise>
                                                    </c:choose>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>

                            </div>
                        </div>

                        <div class="pagination"
                             style="margin: 20px 30px 20px 10px; gap: 10px; display: flex; justify-content: space-between;">
                            <form action="AdminListUser">
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
        <script>
                                                        function filterUsers() {
                                                            const roleSelect = document.getElementById('roleSelect');
                                                            const selectedRole = roleSelect.value;
                                                            const tableRows = document.querySelectorAll('table tbody tr');

                                                            tableRows.forEach(row => {
                                                                const roleCell = row.cells[7].textContent; // Điều chỉnh dựa trên cột
                                                                if (selectedRole === 'All' || roleCell.includes(selectedRole)) {
                                                                    row.style.display = ''; // Hiển thị hàng
                                                                } else {
                                                                    row.style.display = 'none'; // Ẩn hàng
                                                                }
                                                            });
                                                        }
        </script>
        <script>
            function confirmChange() {
                return confirm("Bạn chắc chắn muốn thay đổi chứ?");
            }
        </script>
    </body>
</html>