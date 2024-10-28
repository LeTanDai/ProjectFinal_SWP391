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
                            <div
                                style="gap: 15px; display: flex; align-items: baseline;">
                                <label>Xem:</label>
                                <select>
                                    <option>Tất cả</option>
                                    <option>Admin</option>
                                    <option>Người dùng</option>
                                    <!-- Add more options as needed -->
                                </select>
                            </div>

                        </div>

                        <div class=" bg-white rounded-3 p-3"
                             style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); margin: 20px 30px 20px 10px; display: flex; flex-direction: column; gap: 15px; max-height: 556px;">
                            <div class="group-search" style="margin: 0 3px;">
                                <svg viewBox="0 0 24 24" aria-hidden="true"
                                     class="search-icon">
                                <g>
                                <path
                                    d="M21.53 20.47l-3.66-3.66C19.195 15.24 20 13.214 20 11c0-4.97-4.03-9-9-9s-9 4.03-9 9 4.03 9 9 9c2.215 0 4.24-.804 5.808-2.13l3.66 3.66c.147.146.34.22.53.22s.385-.073.53-.22c.295-.293.295-.767.002-1.06zM3.5 11c0-4.135 3.365-7.5 7.5-7.5s7.5 3.365 7.5 7.5-3.365 7.5-7.5 7.5-7.5-3.365-7.5-7.5z"></path>
                                </g>
                                </svg>

                                <input
                                    id="query"
                                    class="input-search"
                                    type="search"
                                    placeholder="Tìm kiếm..."
                                    name="searchbar" />
                            </div>

                            <div>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tên</th>
                                            <th>Email</th>
                                            <th>Địa Chỉ</th>
                                            <th>SĐT</th>
                                            <th>Vai Trò</th>
                                            <th>Trạng Thái</th>
                                            <th>Tùy Chỉnh</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="padding: 20px; width: 60px;">1</td>
                                            <td><img src="https://via.placeholder.com/40" alt="Avatar" class="customer-avatar me-2">
                                                Chieko Chute</td>
                                            <td style="padding: 20px;">chieko@mail.com</td>
                                            <td style="padding: 20px;">Philadelphia, USA</td>
                                            <td style="padding: 20px;">1234567890</td>
                                            <td style="padding: 20px;">Admin</td>
                                            <td style="padding: 20px;">Active</td>
                                            <td style="padding: 20px 40px;"><svg class="edit-btn" data-name="Chieko Chute" data-role="Admin" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.98314 11.0001C5.4959 10.9915 5.92502 11.3704 5.99117 11.8666L5.99986 11.9831L6.00349 12.2069C6.11245 15.4322 8.76324 18 12 18C12.187 18 12.3727 17.9915 12.5567 17.9746L12.2929 17.7071C11.9024 17.3166 11.9024 16.6834 12.2929 16.2929C12.6834 15.9024 13.3166 15.9024 13.7071 16.2929L15.7071 18.2929C16.0976 18.6834 16.0976 19.3166 15.7071 19.7071L13.7071 21.7071C13.3166 22.0976 12.6834 22.0976 12.2929 21.7071C11.9024 21.3166 11.9024 20.6834 12.2929 20.2929L12.6112 19.977C12.4086 19.9923 12.2048 20 12 20C7.7687 20 4.28886 16.7094 4.01667 12.5105L4.0042 12.2575L4.00015 12.0169C3.99083 11.4647 4.43093 11.0095 4.98314 11.0001ZM11.7071 2.29289C12.0676 2.65338 12.0953 3.22061 11.7903 3.6129L11.7071 3.70711L11.3892 4.02302C11.5916 4.00771 11.7953 4 12 4C16.4183 4 20 7.58172 20 12C20 12.5523 19.5523 13 19 13C18.4477 13 18 12.5523 18 12C18 8.68629 15.3137 6 12 6C11.8129 6 11.6271 6.00853 11.443 6.02545L11.7071 6.29289C12.0976 6.68342 12.0976 7.31658 11.7071 7.70711C11.3466 8.06759 10.7794 8.09532 10.3871 7.7903L10.2929 7.70711L8.2929 5.70711C7.93241 5.34662 7.90468 4.77939 8.20971 4.3871L8.2929 4.29289L10.2929 2.29289C10.6834 1.90237 11.3166 1.90237 11.7071 2.29289Z" fill="#06152B"/>
                                                </svg>
                                            </td>
                                        </tr>
                                        <!-- More rows as needed -->
                                        <tr>
                                            <td style="padding: 20px; width: 60px;">1</td>
                                            <td><img src="https://via.placeholder.com/40" alt="Avatar" class="customer-avatar me-2">
                                                Chieko Chute</td>
                                            <td style="padding: 20px;">chieko@mail.com</td>
                                            <td style="padding: 20px;">Philadelphia, USA</td>
                                            <td style="padding: 20px;">1234567890</td>
                                            <td style="padding: 20px;">Admin</td>
                                            <td style="padding: 20px;">Active</td>
                                            <td style="padding: 20px 40px;"><svg class="edit-btn" data-name="Chieko Chute" data-role="Admin" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.98314 11.0001C5.4959 10.9915 5.92502 11.3704 5.99117 11.8666L5.99986 11.9831L6.00349 12.2069C6.11245 15.4322 8.76324 18 12 18C12.187 18 12.3727 17.9915 12.5567 17.9746L12.2929 17.7071C11.9024 17.3166 11.9024 16.6834 12.2929 16.2929C12.6834 15.9024 13.3166 15.9024 13.7071 16.2929L15.7071 18.2929C16.0976 18.6834 16.0976 19.3166 15.7071 19.7071L13.7071 21.7071C13.3166 22.0976 12.6834 22.0976 12.2929 21.7071C11.9024 21.3166 11.9024 20.6834 12.2929 20.2929L12.6112 19.977C12.4086 19.9923 12.2048 20 12 20C7.7687 20 4.28886 16.7094 4.01667 12.5105L4.0042 12.2575L4.00015 12.0169C3.99083 11.4647 4.43093 11.0095 4.98314 11.0001ZM11.7071 2.29289C12.0676 2.65338 12.0953 3.22061 11.7903 3.6129L11.7071 3.70711L11.3892 4.02302C11.5916 4.00771 11.7953 4 12 4C16.4183 4 20 7.58172 20 12C20 12.5523 19.5523 13 19 13C18.4477 13 18 12.5523 18 12C18 8.68629 15.3137 6 12 6C11.8129 6 11.6271 6.00853 11.443 6.02545L11.7071 6.29289C12.0976 6.68342 12.0976 7.31658 11.7071 7.70711C11.3466 8.06759 10.7794 8.09532 10.3871 7.7903L10.2929 7.70711L8.2929 5.70711C7.93241 5.34662 7.90468 4.77939 8.20971 4.3871L8.2929 4.29289L10.2929 2.29289C10.6834 1.90237 11.3166 1.90237 11.7071 2.29289Z" fill="#06152B"/>
                                                </svg>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="padding: 20px; width: 60px;">1</td>
                                            <td><img src="https://via.placeholder.com/40" alt="Avatar" class="customer-avatar me-2">
                                                Chieko Chute</td>
                                            <td style="padding: 20px;">chieko@mail.com</td>
                                            <td style="padding: 20px;">Philadelphia, USA</td>
                                            <td style="padding: 20px;">1234567890</td>
                                            <td style="padding: 20px;">Admin</td>
                                            <td style="padding: 20px;">Active</td>
                                            <td style="padding: 20px 40px;"><svg class="edit-btn" data-name="Chieko Chute" data-role="Admin" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.98314 11.0001C5.4959 10.9915 5.92502 11.3704 5.99117 11.8666L5.99986 11.9831L6.00349 12.2069C6.11245 15.4322 8.76324 18 12 18C12.187 18 12.3727 17.9915 12.5567 17.9746L12.2929 17.7071C11.9024 17.3166 11.9024 16.6834 12.2929 16.2929C12.6834 15.9024 13.3166 15.9024 13.7071 16.2929L15.7071 18.2929C16.0976 18.6834 16.0976 19.3166 15.7071 19.7071L13.7071 21.7071C13.3166 22.0976 12.6834 22.0976 12.2929 21.7071C11.9024 21.3166 11.9024 20.6834 12.2929 20.2929L12.6112 19.977C12.4086 19.9923 12.2048 20 12 20C7.7687 20 4.28886 16.7094 4.01667 12.5105L4.0042 12.2575L4.00015 12.0169C3.99083 11.4647 4.43093 11.0095 4.98314 11.0001ZM11.7071 2.29289C12.0676 2.65338 12.0953 3.22061 11.7903 3.6129L11.7071 3.70711L11.3892 4.02302C11.5916 4.00771 11.7953 4 12 4C16.4183 4 20 7.58172 20 12C20 12.5523 19.5523 13 19 13C18.4477 13 18 12.5523 18 12C18 8.68629 15.3137 6 12 6C11.8129 6 11.6271 6.00853 11.443 6.02545L11.7071 6.29289C12.0976 6.68342 12.0976 7.31658 11.7071 7.70711C11.3466 8.06759 10.7794 8.09532 10.3871 7.7903L10.2929 7.70711L8.2929 5.70711C7.93241 5.34662 7.90468 4.77939 8.20971 4.3871L8.2929 4.29289L10.2929 2.29289C10.6834 1.90237 11.3166 1.90237 11.7071 2.29289Z" fill="#06152B"/>
                                                </svg>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="padding: 20px; width: 60px;">1</td>
                                            <td><img src="https://via.placeholder.com/40" alt="Avatar" class="customer-avatar me-2">
                                                Chieko Chute</td>
                                            <td style="padding: 20px;">chieko@mail.com</td>
                                            <td style="padding: 20px;">Philadelphia, USA</td>
                                            <td style="padding: 20px;">1234567890</td>
                                            <td style="padding: 20px;">Admin</td>
                                            <td style="padding: 20px;">Active</td>
                                            <td style="padding: 20px 40px;"><svg class="edit-btn" data-name="Chieko Chute" data-role="Admin" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.98314 11.0001C5.4959 10.9915 5.92502 11.3704 5.99117 11.8666L5.99986 11.9831L6.00349 12.2069C6.11245 15.4322 8.76324 18 12 18C12.187 18 12.3727 17.9915 12.5567 17.9746L12.2929 17.7071C11.9024 17.3166 11.9024 16.6834 12.2929 16.2929C12.6834 15.9024 13.3166 15.9024 13.7071 16.2929L15.7071 18.2929C16.0976 18.6834 16.0976 19.3166 15.7071 19.7071L13.7071 21.7071C13.3166 22.0976 12.6834 22.0976 12.2929 21.7071C11.9024 21.3166 11.9024 20.6834 12.2929 20.2929L12.6112 19.977C12.4086 19.9923 12.2048 20 12 20C7.7687 20 4.28886 16.7094 4.01667 12.5105L4.0042 12.2575L4.00015 12.0169C3.99083 11.4647 4.43093 11.0095 4.98314 11.0001ZM11.7071 2.29289C12.0676 2.65338 12.0953 3.22061 11.7903 3.6129L11.7071 3.70711L11.3892 4.02302C11.5916 4.00771 11.7953 4 12 4C16.4183 4 20 7.58172 20 12C20 12.5523 19.5523 13 19 13C18.4477 13 18 12.5523 18 12C18 8.68629 15.3137 6 12 6C11.8129 6 11.6271 6.00853 11.443 6.02545L11.7071 6.29289C12.0976 6.68342 12.0976 7.31658 11.7071 7.70711C11.3466 8.06759 10.7794 8.09532 10.3871 7.7903L10.2929 7.70711L8.2929 5.70711C7.93241 5.34662 7.90468 4.77939 8.20971 4.3871L8.2929 4.29289L10.2929 2.29289C10.6834 1.90237 11.3166 1.90237 11.7071 2.29289Z" fill="#06152B"/>
                                                </svg>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="padding: 20px; width: 60px;">1</td>
                                            <td><img src="https://via.placeholder.com/40" alt="Avatar" class="customer-avatar me-2">
                                                Chieko Chute</td>
                                            <td style="padding: 20px;">chieko@mail.com</td>
                                            <td style="padding: 20px;">Philadelphia, USA</td>
                                            <td style="padding: 20px;">1234567890</td>
                                            <td style="padding: 20px;">Admin</td>
                                            <td style="padding: 20px;">Active</td>
                                            <td style="padding: 20px 40px;"><svg class="edit-btn" data-name="Chieko Chute" data-role="Admin" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.98314 11.0001C5.4959 10.9915 5.92502 11.3704 5.99117 11.8666L5.99986 11.9831L6.00349 12.2069C6.11245 15.4322 8.76324 18 12 18C12.187 18 12.3727 17.9915 12.5567 17.9746L12.2929 17.7071C11.9024 17.3166 11.9024 16.6834 12.2929 16.2929C12.6834 15.9024 13.3166 15.9024 13.7071 16.2929L15.7071 18.2929C16.0976 18.6834 16.0976 19.3166 15.7071 19.7071L13.7071 21.7071C13.3166 22.0976 12.6834 22.0976 12.2929 21.7071C11.9024 21.3166 11.9024 20.6834 12.2929 20.2929L12.6112 19.977C12.4086 19.9923 12.2048 20 12 20C7.7687 20 4.28886 16.7094 4.01667 12.5105L4.0042 12.2575L4.00015 12.0169C3.99083 11.4647 4.43093 11.0095 4.98314 11.0001ZM11.7071 2.29289C12.0676 2.65338 12.0953 3.22061 11.7903 3.6129L11.7071 3.70711L11.3892 4.02302C11.5916 4.00771 11.7953 4 12 4C16.4183 4 20 7.58172 20 12C20 12.5523 19.5523 13 19 13C18.4477 13 18 12.5523 18 12C18 8.68629 15.3137 6 12 6C11.8129 6 11.6271 6.00853 11.443 6.02545L11.7071 6.29289C12.0976 6.68342 12.0976 7.31658 11.7071 7.70711C11.3466 8.06759 10.7794 8.09532 10.3871 7.7903L10.2929 7.70711L8.2929 5.70711C7.93241 5.34662 7.90468 4.77939 8.20971 4.3871L8.2929 4.29289L10.2929 2.29289C10.6834 1.90237 11.3166 1.90237 11.7071 2.29289Z" fill="#06152B"/>
                                                </svg>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="padding: 20px; width: 60px;">1</td>
                                            <td><img src="https://via.placeholder.com/40" alt="Avatar" class="customer-avatar me-2">
                                                Chieko Chute</td>
                                            <td style="padding: 20px;">chieko@mail.com</td>
                                            <td style="padding: 20px;">Philadelphia, USA</td>
                                            <td style="padding: 20px;">1234567890</td>
                                            <td style="padding: 20px;">Admin</td>
                                            <td style="padding: 20px;">Active</td>
                                            <td style="padding: 20px 40px;"><svg class="edit-btn" data-name="Chieko Chute" data-role="Admin" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.98314 11.0001C5.4959 10.9915 5.92502 11.3704 5.99117 11.8666L5.99986 11.9831L6.00349 12.2069C6.11245 15.4322 8.76324 18 12 18C12.187 18 12.3727 17.9915 12.5567 17.9746L12.2929 17.7071C11.9024 17.3166 11.9024 16.6834 12.2929 16.2929C12.6834 15.9024 13.3166 15.9024 13.7071 16.2929L15.7071 18.2929C16.0976 18.6834 16.0976 19.3166 15.7071 19.7071L13.7071 21.7071C13.3166 22.0976 12.6834 22.0976 12.2929 21.7071C11.9024 21.3166 11.9024 20.6834 12.2929 20.2929L12.6112 19.977C12.4086 19.9923 12.2048 20 12 20C7.7687 20 4.28886 16.7094 4.01667 12.5105L4.0042 12.2575L4.00015 12.0169C3.99083 11.4647 4.43093 11.0095 4.98314 11.0001ZM11.7071 2.29289C12.0676 2.65338 12.0953 3.22061 11.7903 3.6129L11.7071 3.70711L11.3892 4.02302C11.5916 4.00771 11.7953 4 12 4C16.4183 4 20 7.58172 20 12C20 12.5523 19.5523 13 19 13C18.4477 13 18 12.5523 18 12C18 8.68629 15.3137 6 12 6C11.8129 6 11.6271 6.00853 11.443 6.02545L11.7071 6.29289C12.0976 6.68342 12.0976 7.31658 11.7071 7.70711C11.3466 8.06759 10.7794 8.09532 10.3871 7.7903L10.2929 7.70711L8.2929 5.70711C7.93241 5.34662 7.90468 4.77939 8.20971 4.3871L8.2929 4.29289L10.2929 2.29289C10.6834 1.90237 11.3166 1.90237 11.7071 2.29289Z" fill="#06152B"/>
                                                </svg>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="pagination"
                             style="margin: 20px 30px 20px 10px; gap: 10px; display: flex; justify-content: end;">
                            <div>
                                <button>Trước</button>
                                <button>Sau</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="popup-overlay" id="popup">
            <div class="popup">
                <h2>Edit User Role</h2>
                <form id="editForm">
                    <label for="userName">Name:</label>
                    <input type="text" id="userName" name="userName" readonly style="text-align: center; border-radius: 5px; font-weight: 500; width: 100%; height: 40px; margin-bottom: 10px;">

                    <label for="role">Role:</label>
                    <select id="role" name="role" style="border-radius: 5px;">
                        <option value="Admin">Admin</option>
                        <option value="User">User</option>
                    </select>

                    <button type="submit" style="border-radius: 10px;">Save</button>
                    <button type="button" style="border-radius: 10px;" class="close-btn">Close</button>
                </form>
            </div>
        </div>

        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            // Function to open the popup
            function openPopup(name, role) {
                document.getElementById('popup').style.display = 'flex';
                document.getElementById('userName').value = name;
                document.getElementById('role').value = role;
            }

            // Function to close the popup
            function closePopup() {
                document.getElementById('popup').style.display = 'none';
            }

            // Add click event to all SVG icons
            document.querySelectorAll('.edit-btn').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    const userName = btn.getAttribute('data-name');
                    const userRole = btn.getAttribute('data-role');
                    openPopup(userName, userRole);
                });
            });

            // Close button event
            document.querySelector('.close-btn').addEventListener('click', closePopup);

            // Handle form submission (for demonstration)
            document.getElementById('editForm').addEventListener('submit', function (e) {
                e.preventDefault();
                const userName = document.getElementById('userName').value;
                const newRole = document.getElementById('role').value;
                alert(`User ${userName} role changed to ${newRole}`);
                closePopup();
            });
        </script>
    </body>
</html>