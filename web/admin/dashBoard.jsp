<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.UserDAO"%>
<%@page import="dao.DocumentDAO"%>
<%@page import="dao.ExamDAO"%>
<%@page import="dao.VideoDAO"%>
<%
    UserDAO userDao = new UserDAO();
    DocumentDAO documentDao = new DocumentDAO();
    ExamDAO examDao = new ExamDAO();
    VideoDAO videoDao = new VideoDAO();
    
    int documentCount = documentDao.countDocuments();
    int examCount = examDao.countExams();
    int videoCount = videoDao.countVideos();
        
    int normalUserCount = userDao.countNormalUser(); // Lấy số lượng Normal User
    int premiumUserCount = userDao.countPremiumUser(); // Lấy số lượng Premium User
    int adminUserCount = userDao.countAdminUser(); // Lấy số lượng Admin User

    // Tính toán profit
    int normalUserProfit = normalUserCount * 0; // Profit cho Normal User
    int premiumUserProfit = premiumUserCount * 30000; // Profit cho Premium User
    int adminUserProfit = adminUserCount * 0; // Profit cho Admin User

    // Đưa dữ liệu vào JSON để sử dụng trong JavaScript
    String jsonData = String.format("{\"quantity\": {\"normalUser\": %d, \"premiumUser\": %d, \"adminUser\": %d}, \"profit\": {\"normalUser\": %d, \"premiumUser\": %d, \"adminUser\": %d}}",
            normalUserCount, premiumUserCount, adminUserCount,
            normalUserProfit, premiumUserProfit, adminUserProfit);
    
    // Tính tổng số người dùng
    int totalUserCount = normalUserCount + premiumUserCount + adminUserCount;
%>
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
        

        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
            

    </head>

    
<body style="background-color: #f7f8fc;">

    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-2 p-0">
                <jsp:include page="menuAdmin.jsp"/>
            </div>

            <!-- Main Content -->
            <div class="col-md-10" >
                         <div class="row">
                    <!-- Dropdown Section -->
                    <div class="dropdown-light d-flex justify-content-end mt-3 px-4">
                        <div class="fields">
                            <div class="field-item d-flex align-items-center justify-content-between">
                                <div class="text">
                                    <h2>Dashboard</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Analytics Cards -->
                <div class="row mt-4 px-4" >
                    <div class="col-md-3" style="padding-left: 0px !important;">
                        <div class="analytics-card d-flex align-items-center" style="gap: 15px;">
                                <svg xmlns="http://www.w3.org/2000/svg" width="38px" height="38px" fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
                                    <path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1zm-7.978-1L7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002-.014.002zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4m3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0M6.936 9.28a6 6 0 0 0-1.23-.247A7 7 0 0 0 5 9c-4 0-5 3-5 4q0 1 1 1h4.216A2.24 2.24 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816M4.92 10A5.5 5.5 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0m3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4"/>
                                  </svg>
                            <div class="card-text ms-3">
                                <div class="number"><%= totalUserCount %></div>
                                <div class="label">Người Dùng</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3" style="padding-left: 0px !important;">
                        <div class="analytics-card d-flex align-items-center" style="gap: 15px;">
                            <svg
                                                style="width: 38px; height: 38px;"
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
                            <div class="card-text ms-3">
                                <div class="number"><%= videoCount %></div>
                                <div class="label">Bài Học</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3" style="padding-left: 0px !important;">
                        <div class="analytics-card d-flex align-items-center" style="gap: 15px;">
                            <svg
                                                style="width: 38px; height: 38px;"
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
                            <div class="card-text ms-3">
                                <div class="number"><%= documentCount %></div>
                                <div class="label">Tài Liệu</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3" style="padding-left: 0px !important;">
                        <div class="analytics-card d-flex align-items-center" style="gap: 15px;">
                            <img src="../img/quiz.png" class="me-3" alt="Calendar Icon" style="width: 38px; height: 38px;" >
                            <div class="card-text ms-3">
                                <div class="number"><%= examCount %></div>
                                <div class="label">Bài Ôn Tập</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Thống Kê Số Lượng phần trăm người dùng -->
                <div class="row mt-4 px-4" style="margin-bottom: 30px;">
                    <!-- Recent Orders Section -->
                    <div class="col-md-6" style="padding-left: 0px !important;">
                        <div class="bg-white rounded-3 p-3" style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
                            <h4 class="fw-bold" style="padding: 20px 10px 0;">Thống Kê Số Lượng phần trăm người dùng</h4>
                            <div class="d-flex justify-content-center align-items-center" style="position: relative;">
                                <canvas id="myChart" style="width: 100%; max-width: 300px; max-height: 300px;"></canvas>
                            </div>
                        </div>
                    </div>

                    <!-- Top Selling Products Section -->
    <div class="col-md-6">
    <div class="top-selling-products bg-white rounded-3 p-3" style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); width: 100%; height: 100%;">
        <div class="d-flex justify-content-between mb-4">
            <h4 class="fw-bold" style="padding: 20px 10px 0;">Thống Kê Doanh Thu</h4>
            <div class="btn-group">
                <button id="monthBtn" class="btn btn-light">Quantity</button>
                <button id="weekBtn" class="btn btn-primary">Profit</button>
            </div>
        </div>
        <div class="bar" style="padding: 10px;">
            <span class="bar-label">Normal User</span>
            <div class="bar-fill" style="max-width: 460px;">
                <div class="fill fill-google" style="width: 0%;"></div>
            </div>
            <span class="bar-value bar-google-value">0</span>
        </div>
        <div class="bar" style="padding: 10px;">
            <span class="bar-label">Premium User</span>
            <div class="bar-fill">
                <div class="fill fill-social" style="width: 0;"></div>
            </div>
            <span class="bar-value bar-social-value">0</span>
        </div>
        <div class="bar" style="padding: 10px;">
            <span class="bar-label">Admin</span>
            <div class="bar-fill">
                <div class="fill fill-direct" style="width: 0;"></div>
            </div>
            <span class="bar-value bar-direct-value">0</span>
        </div>
        <div></div>
    </div>
</div>

            </div> <!-- End of Main Content -->
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
 
<script>
    // Nhận giá trị số lượng người dùng từ JSP
    var normalUserCount = <%= normalUserCount %>;
    var premiumUserCount = <%= premiumUserCount %>;
    var adminUserCount = <%= adminUserCount %>; // Thêm số lượng admin user

    // Tính tổng số user
    var totalUsers = normalUserCount + premiumUserCount + adminUserCount;

    // Tính phần trăm
    var normalUserPercentage = (normalUserCount / totalUsers * 100).toFixed(2); // Phần trăm Normal User
    var premiumUserPercentage = (premiumUserCount / totalUsers * 100).toFixed(2); // Phần trăm Premium User
    var adminUserPercentage = (adminUserCount / totalUsers * 100).toFixed(2); // Phần trăm Admin User

    // Gán phần trăm vào yValues
    var xValues = ["Normal User", "Premium User", "Admin"]; // Thêm Admin User vào danh sách
    var yValues = [normalUserPercentage, premiumUserPercentage, adminUserPercentage]; // Thay giá trị thành phần trăm
    var barColors = ["#f7941d", "#f47c3c", "#4caf50"]; // Thêm màu sắc cho Admin User

    new Chart("myChart", {
        type: "doughnut",
        data: {
            labels: xValues,
            datasets: [{
                backgroundColor: barColors,
                data: yValues,
                borderWidth: 10, // Control the thickness of the doughnut sections (thinner)
                hoverOffset: 4,
                borderColor: '#FFFFFF' // White border to separate the segments
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            cutout: '70%', // Larger cutout to make the doughnut thinner
            plugins: {
                tooltip: {
                    enabled: true,
                    callbacks: {
                        label: function(tooltipItem, data) {
                            // Hiển thị số lượng và phần trăm trong tooltip
                            var label = data.labels[tooltipItem.dataIndex];
                            var value = data.datasets[0].data[tooltipItem.dataIndex];
                            var count = tooltipItem.dataIndex === 0 ? normalUserCount : (tooltipItem.dataIndex === 1 ? premiumUserCount : adminUserCount); // Xác định loại user
                            return label + ': ' + count + ' users (' + value + '%)';
                        }
                    }
                },
                legend: {
                    display: true,
                    position: 'bottom',
                    labels: {
                        boxWidth: 30,  // Makes the legend rectangle width
                        boxHeight: 30, // Custom height to make it rectangular
                        font: {
                            size: 18,
                        },
                        padding: 15,   // Padding between the legend items
                        usePointStyle: true,  // Makes the legend rectangular instead of circular
                        pointStyle: 'rectRounded' // Rounded rectangle shape
                    }
                }
            }
        }
    });
</script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    const data = <%= jsonData %>;

    const updateChart = (data, type) => {
        const maxDataValue = Math.max(data.quantity.normalUser, data.quantity.premiumUser, data.quantity.adminUser);
        const footerStep = 150; // Max height set to 150

        $('#chart-footer').html(`
            <span>0</span>
            <span>${footerStep / 4}k</span>
            <span>${(footerStep * 2) / 4}k</span>
            <span>${(footerStep * 3) / 4}k</span>
            <span>${footerStep}k</span>
        `);

        if (type === 'quantity') {
            $('.fill-google').animate({ width: `${(data.quantity.normalUser / footerStep) * 100}%` }, 500);
            $('.fill-social').animate({ width: `${(data.quantity.premiumUser / footerStep) * 100}%` }, 500);
            $('.fill-direct').animate({ width: `${(data.quantity.adminUser / footerStep) * 100}%` }, 500);

            $('.bar-google-value').text(data.quantity.normalUser.toLocaleString());
            $('.bar-social-value').text(data.quantity.premiumUser.toLocaleString());
            $('.bar-direct-value').text(data.quantity.adminUser.toLocaleString());
        } else {
            $('.fill-google').animate({ width: `${(data.profit.normalUser / footerStep) * 100}%` }, 500);
            $('.fill-social').animate({ width: `${(data.profit.premiumUser / footerStep) * 100}%` }, 500);
            $('.fill-direct').animate({ width: `${(data.profit.adminUser / footerStep) * 100}%` }, 500);

            $('.bar-google-value').text(data.profit.normalUser.toLocaleString());
            $('.bar-social-value').text(data.profit.premiumUser.toLocaleString());
            $('.bar-direct-value').text(data.profit.adminUser.toLocaleString());
        }
    };

    $('#monthBtn').click(() => {
        $('#monthBtn').addClass('btn-primary').removeClass('btn-light');
        $('#weekBtn').addClass('btn-light').removeClass('btn-primary');
        updateChart(data, 'quantity');
    });

    $('#weekBtn').click(() => {
        $('#weekBtn').addClass('btn-primary').removeClass('btn-light');
        $('#monthBtn').addClass('btn-light').removeClass('btn-primary');
        updateChart(data, 'profit');
    });

    // Khởi chạy với dữ liệu lượng ban đầu
    updateChart(data, 'profit');
</script>
</body>

</html>