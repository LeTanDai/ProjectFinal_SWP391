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
                            <a href="listUser.jsp" class="nav-item nav-link"
                                >
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
                                class="nav-item nav-link">
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
                            <a href="listLesson.html" class="nav-item nav-link" style="background-color: #ff6600; border-radius: 15px; width: 200px; height: 50px; padding: 12px 30px;">
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
                            <div
                                style="gap: 15px; display: flex; align-items: baseline;">
                                <label>Xem:</label>
                                <select>
                                    <option>Tất cả</option>
                                    <option>Toán</option>
                                    <option>Vật Lý</option>
                                    <option>Hóa Học</option>
                                    <!-- Add more options as needed -->
                                </select>
                            </div>
                            <div>
                                <a href="addLesson.jsp" style="text-decoration: none;"><button
                                    class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2" style="display: flex; gap: 15px;"> <svg width="24" height="24"  viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM17 12C17.5523 12 18 12.4477 18 13V16H21C21.5523 16 22 16.4477 22 17C22 17.5523 21.5523 18 21 18H18V21C18 21.5523 17.5523 22 17 22C16.4477 22 16 21.5523 16 21V18H13C12.4477 18 12 17.5523 12 17C12 16.4477 12.4477 16 13 16H16V13C16 12.4477 16.4477 12 17 12ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#fff"/>
                                      </svg>
                                      Thêm Bài Học</button></a>
                            </div>
                        </div>

                        <div class=" bg-white rounded-3 p-3"
                            style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); margin: 20px 30px 20px 10px; display: flex; flex-direction: column; gap: 15px; max-height: 530px;">
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

                                            <th>Tên</th>
                                            <th>Ngày Thêm</th>
                                            <th>Môn Học</th>
                                            <th>Tùy Chỉnh</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="padding: 20px;">Bài Học A</td>
                                            <td style="padding: 20px;">dd/mm/yyyy</td>
                                            <td style="padding: 20px;">Toán</td>
                                            <td style="padding: 20px; gap: 20px; display: flex;">
                                              <a href=""><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM15.7071 14.2929L18 16.585L20.2929 14.2929C20.6534 13.9324 21.2206 13.9047 21.6129 14.2097L21.7071 14.2929C22.0676 14.6534 22.0953 15.2206 21.7903 15.6129L21.7071 15.7071L19.415 18L21.7071 20.2929C22.0976 20.6834 22.0976 21.3166 21.7071 21.7071C21.3166 22.0976 20.6834 22.0976 20.2929 21.7071L18 19.415L15.7071 21.7071C15.3466 22.0676 14.7794 22.0953 14.3871 21.7903L14.2929 21.7071C13.9324 21.3466 13.9047 20.7794 14.2097 20.3871L14.2929 20.2929L16.585 18L14.2929 15.7071C13.9024 15.3166 13.9024 14.6834 14.2929 14.2929C14.6834 13.9024 15.3166 13.9024 15.7071 14.2929ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                                </svg>                                                
                                                </a>

                                                <a href="http://"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                  <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM17.2929 12.2929C17.6534 11.9324 18.2206 11.9047 18.6129 12.2097L18.7071 12.2929L21.7071 15.2929C22.0676 15.6534 22.0953 16.2206 21.7903 16.6129L21.7071 16.7071L16.7071 21.7071C16.5508 21.8634 16.3481 21.9626 16.1314 21.9913L16 22H13C12.4872 22 12.0645 21.614 12.0067 21.1166L12 21V18C12 17.779 12.0732 17.5655 12.2061 17.392L12.2929 17.2929L17.2929 12.2929ZM18 14.4142L14 18.4142V20H15.5858L19.5858 16L18 14.4142ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                                  </svg>
                                                  </a>
                                            </td>
                                        </tr>
                                        <!-- More rows as needed -->
                                        <tr>
                                          <td style="padding: 20px;">Bài Học A</td>
                                          <td style="padding: 20px;">dd/mm/yyyy</td>
                                          <td style="padding: 20px;">Toán</td>
                                          <td style="padding: 20px; gap: 20px; display: flex;">
                                            <a href=""><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                              <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM15.7071 14.2929L18 16.585L20.2929 14.2929C20.6534 13.9324 21.2206 13.9047 21.6129 14.2097L21.7071 14.2929C22.0676 14.6534 22.0953 15.2206 21.7903 15.6129L21.7071 15.7071L19.415 18L21.7071 20.2929C22.0976 20.6834 22.0976 21.3166 21.7071 21.7071C21.3166 22.0976 20.6834 22.0976 20.2929 21.7071L18 19.415L15.7071 21.7071C15.3466 22.0676 14.7794 22.0953 14.3871 21.7903L14.2929 21.7071C13.9324 21.3466 13.9047 20.7794 14.2097 20.3871L14.2929 20.2929L16.585 18L14.2929 15.7071C13.9024 15.3166 13.9024 14.6834 14.2929 14.2929C14.6834 13.9024 15.3166 13.9024 15.7071 14.2929ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                              </svg>                                                
                                              </a>

                                              <a href="http://"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM17.2929 12.2929C17.6534 11.9324 18.2206 11.9047 18.6129 12.2097L18.7071 12.2929L21.7071 15.2929C22.0676 15.6534 22.0953 16.2206 21.7903 16.6129L21.7071 16.7071L16.7071 21.7071C16.5508 21.8634 16.3481 21.9626 16.1314 21.9913L16 22H13C12.4872 22 12.0645 21.614 12.0067 21.1166L12 21V18C12 17.779 12.0732 17.5655 12.2061 17.392L12.2929 17.2929L17.2929 12.2929ZM18 14.4142L14 18.4142V20H15.5858L19.5858 16L18 14.4142ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                                </svg>
                                                </a>
                                          </td>
                                      </tr>

                                      <tr>
                                        <td style="padding: 20px;">Bài Học A</td>
                                        <td style="padding: 20px;">dd/mm/yyyy</td>
                                        <td style="padding: 20px;">Toán</td>
                                        <td style="padding: 20px; gap: 20px; display: flex;">
                                          <a href=""><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM15.7071 14.2929L18 16.585L20.2929 14.2929C20.6534 13.9324 21.2206 13.9047 21.6129 14.2097L21.7071 14.2929C22.0676 14.6534 22.0953 15.2206 21.7903 15.6129L21.7071 15.7071L19.415 18L21.7071 20.2929C22.0976 20.6834 22.0976 21.3166 21.7071 21.7071C21.3166 22.0976 20.6834 22.0976 20.2929 21.7071L18 19.415L15.7071 21.7071C15.3466 22.0676 14.7794 22.0953 14.3871 21.7903L14.2929 21.7071C13.9324 21.3466 13.9047 20.7794 14.2097 20.3871L14.2929 20.2929L16.585 18L14.2929 15.7071C13.9024 15.3166 13.9024 14.6834 14.2929 14.2929C14.6834 13.9024 15.3166 13.9024 15.7071 14.2929ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                            </svg>                                                
                                            </a>

                                            <a href="http://"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                              <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM17.2929 12.2929C17.6534 11.9324 18.2206 11.9047 18.6129 12.2097L18.7071 12.2929L21.7071 15.2929C22.0676 15.6534 22.0953 16.2206 21.7903 16.6129L21.7071 16.7071L16.7071 21.7071C16.5508 21.8634 16.3481 21.9626 16.1314 21.9913L16 22H13C12.4872 22 12.0645 21.614 12.0067 21.1166L12 21V18C12 17.779 12.0732 17.5655 12.2061 17.392L12.2929 17.2929L17.2929 12.2929ZM18 14.4142L14 18.4142V20H15.5858L19.5858 16L18 14.4142ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                              </svg>
                                              </a>
                                        </td>
                                    </tr>

                                    <tr>
                                      <td style="padding: 20px;">Bài Học A</td>
                                      <td style="padding: 20px;">dd/mm/yyyy</td>
                                      <td style="padding: 20px;">Toán</td>
                                      <td style="padding: 20px; gap: 20px; display: flex;">
                                        <a href=""><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                          <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM15.7071 14.2929L18 16.585L20.2929 14.2929C20.6534 13.9324 21.2206 13.9047 21.6129 14.2097L21.7071 14.2929C22.0676 14.6534 22.0953 15.2206 21.7903 15.6129L21.7071 15.7071L19.415 18L21.7071 20.2929C22.0976 20.6834 22.0976 21.3166 21.7071 21.7071C21.3166 22.0976 20.6834 22.0976 20.2929 21.7071L18 19.415L15.7071 21.7071C15.3466 22.0676 14.7794 22.0953 14.3871 21.7903L14.2929 21.7071C13.9324 21.3466 13.9047 20.7794 14.2097 20.3871L14.2929 20.2929L16.585 18L14.2929 15.7071C13.9024 15.3166 13.9024 14.6834 14.2929 14.2929C14.6834 13.9024 15.3166 13.9024 15.7071 14.2929ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                          </svg>                                                
                                          </a>

                                          <a href="http://"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM17.2929 12.2929C17.6534 11.9324 18.2206 11.9047 18.6129 12.2097L18.7071 12.2929L21.7071 15.2929C22.0676 15.6534 22.0953 16.2206 21.7903 16.6129L21.7071 16.7071L16.7071 21.7071C16.5508 21.8634 16.3481 21.9626 16.1314 21.9913L16 22H13C12.4872 22 12.0645 21.614 12.0067 21.1166L12 21V18C12 17.779 12.0732 17.5655 12.2061 17.392L12.2929 17.2929L17.2929 12.2929ZM18 14.4142L14 18.4142V20H15.5858L19.5858 16L18 14.4142ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                            </svg>
                                            </a>
                                      </td>
                                  </tr>

                                  <tr>
                                    <td style="padding: 20px;">Bài Học A</td>
                                    <td style="padding: 20px;">dd/mm/yyyy</td>
                                    <td style="padding: 20px;">Toán</td>
                                    <td style="padding: 20px; gap: 20px; display: flex;">
                                      <a href=""><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM15.7071 14.2929L18 16.585L20.2929 14.2929C20.6534 13.9324 21.2206 13.9047 21.6129 14.2097L21.7071 14.2929C22.0676 14.6534 22.0953 15.2206 21.7903 15.6129L21.7071 15.7071L19.415 18L21.7071 20.2929C22.0976 20.6834 22.0976 21.3166 21.7071 21.7071C21.3166 22.0976 20.6834 22.0976 20.2929 21.7071L18 19.415L15.7071 21.7071C15.3466 22.0676 14.7794 22.0953 14.3871 21.7903L14.2929 21.7071C13.9324 21.3466 13.9047 20.7794 14.2097 20.3871L14.2929 20.2929L16.585 18L14.2929 15.7071C13.9024 15.3166 13.9024 14.6834 14.2929 14.2929C14.6834 13.9024 15.3166 13.9024 15.7071 14.2929ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                        </svg>                                                
                                        </a>

                                        <a href="http://"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                          <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM17.2929 12.2929C17.6534 11.9324 18.2206 11.9047 18.6129 12.2097L18.7071 12.2929L21.7071 15.2929C22.0676 15.6534 22.0953 16.2206 21.7903 16.6129L21.7071 16.7071L16.7071 21.7071C16.5508 21.8634 16.3481 21.9626 16.1314 21.9913L16 22H13C12.4872 22 12.0645 21.614 12.0067 21.1166L12 21V18C12 17.779 12.0732 17.5655 12.2061 17.392L12.2929 17.2929L17.2929 12.2929ZM18 14.4142L14 18.4142V20H15.5858L19.5858 16L18 14.4142ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                          </svg>
                                          </a>
                                    </td>
                                </tr>

                                <tr>
                                  <td style="padding: 20px;">Bài Học A</td>
                                  <td style="padding: 20px;">dd/mm/yyyy</td>
                                  <td style="padding: 20px;">Toán</td>
                                  <td style="padding: 20px; gap: 20px; display: flex;">
                                    <a href=""><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM15.7071 14.2929L18 16.585L20.2929 14.2929C20.6534 13.9324 21.2206 13.9047 21.6129 14.2097L21.7071 14.2929C22.0676 14.6534 22.0953 15.2206 21.7903 15.6129L21.7071 15.7071L19.415 18L21.7071 20.2929C22.0976 20.6834 22.0976 21.3166 21.7071 21.7071C21.3166 22.0976 20.6834 22.0976 20.2929 21.7071L18 19.415L15.7071 21.7071C15.3466 22.0676 14.7794 22.0953 14.3871 21.7903L14.2929 21.7071C13.9324 21.3466 13.9047 20.7794 14.2097 20.3871L14.2929 20.2929L16.585 18L14.2929 15.7071C13.9024 15.3166 13.9024 14.6834 14.2929 14.2929C14.6834 13.9024 15.3166 13.9024 15.7071 14.2929ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                      </svg>                                                
                                      </a>

                                      <a href="http://"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M14 2C14.2652 2 14.5196 2.10536 14.7071 2.29289L19.7071 7.29289C19.8946 7.48043 20 7.73478 20 8V9C20 9.55228 19.5523 10 19 10H13C12.4872 10 12.0645 9.61396 12.0067 9.11662L12 9L11.999 4H7C6.44772 4 6 4.44772 6 5V19C6 19.5523 6.44772 20 7 20H9C9.55228 20 10 20.4477 10 21C10 21.5523 9.55228 22 9 22H7C5.34315 22 4 20.6569 4 19V5C4 3.34315 5.34315 2 7 2H14ZM17.2929 12.2929C17.6534 11.9324 18.2206 11.9047 18.6129 12.2097L18.7071 12.2929L21.7071 15.2929C22.0676 15.6534 22.0953 16.2206 21.7903 16.6129L21.7071 16.7071L16.7071 21.7071C16.5508 21.8634 16.3481 21.9626 16.1314 21.9913L16 22H13C12.4872 22 12.0645 21.614 12.0067 21.1166L12 21V18C12 17.779 12.0732 17.5655 12.2061 17.392L12.2929 17.2929L17.2929 12.2929ZM18 14.4142L14 18.4142V20H15.5858L19.5858 16L18 14.4142ZM13.999 4.414L14 8H17.586L13.999 4.414Z" fill="#06152B"/>
                                        </svg>
                                        </a>
                                  </td>
                              </tr>
                                    </tbody>
                                </table>
                            </div>
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

        </div>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>