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
        

        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
            

    </head>

    
<body style="background-color: #f7f8fc;">

    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-2 p-0">
                <div class="sidebar-light d-flex flex-column bg-white" style="box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
                    <!-- Logo Section -->
                    <div class="logo text-center mt-3">
                        
                    </div>

                    <!-- Menu Items -->
                    <div class="menu mt-5" style="display: flex;
                    flex-direction: column;
                    align-content: center;
                    flex-wrap: wrap;
                    gap: 30px; ">
                        <a href="dashBoard.jsp" class="nav-item nav-link active" style="background-color: #ff6600; border-radius: 15px; width: 200px; height: 50px; padding: 12px 30px;">
                            <div class="menu-item d-flex align-items-center " style="gap: 5px; color: black;">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M19 13C20.6569 13 22 14.3431 22 16V19C22 20.6569 20.6569 22 19 22H16C14.3431 22 13 20.6569 13 19V16C13 14.3431 14.3431 13 16 13H19ZM8 13C9.65685 13 11 14.3431 11 16V19C11 20.6569 9.65685 22 8 22H5C3.34315 22 2 20.6569 2 19V16C2 14.3431 3.34315 13 5 13H8ZM19 15H16C15.4477 15 15 15.4477 15 16V19C15 19.5523 15.4477 20 16 20H19C19.5523 20 20 19.5523 20 19V16C20 15.4477 19.5523 15 19 15ZM8 15H5C4.44772 15 4 15.4477 4 16V19C4 19.5523 4.44772 20 5 20H8C8.55228 20 9 19.5523 9 19V16C9 15.4477 8.55228 15 8 15ZM8 2C9.65685 2 11 3.34315 11 5V8C11 9.65685 9.65685 11 8 11H5C3.34315 11 2 9.65685 2 8V5C2 3.34315 3.34315 2 5 2H8ZM19 2C20.6569 2 22 3.34315 22 5V8C22 9.65685 20.6569 11 19 11H16C14.3431 11 13 9.65685 13 8V5C13 3.34315 14.3431 2 16 2H19ZM8 4H5C4.44772 4 4 4.44772 4 5V8C4 8.55228 4.44772 9 5 9H8C8.55228 9 9 8.55228 9 8V5C9 4.44772 8.55228 4 8 4ZM19 4H16C15.4477 4 15 4.44772 15 5V8C15 8.55228 15.4477 9 16 9H19C19.5523 9 20 8.55228 20 8V5C20 4.44772 19.5523 4 19 4Z" fill="#06152B"/>
                                    </svg>
                                    
                                <span class="menu-text">Dashboard</span>
                            </div>
                        </a>
                        <a href="listUser.jsp" class="nav-item nav-link">
                            <div class="menu-item d-flex align-items-center " style="gap: 5px; color: black;">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
                                    <path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1zm-7.978-1L7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002-.014.002zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4m3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0M6.936 9.28a6 6 0 0 0-1.23-.247A7 7 0 0 0 5 9c-4 0-5 3-5 4q0 1 1 1h4.216A2.24 2.24 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816M4.92 10A5.5 5.5 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0m3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4"/>
                                  </svg>
                                    
                                <span class="menu-text">Người Dùng</span>
                            </div>
                        </a>
                        <a href="listDocument.jsp" class="nav-item nav-link">
                            <div class="menu-item d-flex align-items-center" style="gap: 5px; color: black;">
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
                            <div class="menu-item d-flex align-items-center " style="gap: 5px; color: black;">
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
                            <div class="menu-item d-flex align-items-center " style="gap: 5px; color: black;">
                                <img src="../img/quiz.png" class="me-3" alt="Calendar Icon" style="width: 24px; height: 24px;" >
                                <span class="menu-text">Bài kiểm tra</span>
                            </div>
                        </a>

                        
                    </div>

                </div>
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
                                <div class="number">178+</div>
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
                                <div class="number">20+</div>
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
                                <div class="number">190+</div>
                                <div class="label">Tài Liệu</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3" style="padding-left: 0px !important;">
                        <div class="analytics-card d-flex align-items-center" style="gap: 15px;">
                            <img src="/img/quiz.png" class="me-3" alt="Calendar Icon" style="width: 38px; height: 38px;" >
                            <div class="card-text ms-3">
                                <div class="number">12+</div>
                                <div class="label">Bài Ôn Tập</div>
                            </div>
                        </div>
                    </div>
                </div>

                 <!-- User Growth Chart -->
                 <div class="row mt-4 px-4">
                    <div class="col-md-12" style="padding-left: 0 !important; max-height: 400px; margin-bottom: 40px; ">
                        <div class="bg-white rounded-3 p-3" style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);" >
                            <h4 class="fw-bold" style="text-align: center;">Thống Kê Người Dùng</h4>
                            <canvas id="userGrowthChart"></canvas>
                        </div>
                    </div>
                </div>

                

                <!-- Recent Orders & Top Selling Products -->
                <div class="row mt-4 px-4" style="margin-bottom: 30px;">
                    <!-- Recent Orders Section -->
                    <div class="col-md-6" style="padding-left: 0px !important;">
                        <div class="bg-white rounded-3 p-3" style="border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
                            <h4 class="fw-bold" style="padding: 20px 10px 0;">Thống Kê Số Lượng Tài Liệu</h4>
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
                                    <button id="monthBtn" class="btn btn-light">Month</button>
                                    <button id="weekBtn" class="btn btn-primary">Week</button>
                                </div>
                            </div>
                            <div class="bar" style="padding: 10px;">
                                <span class="bar-label">Toán</span>
                                <div class="bar-fill" style="max-width: 460px;">
                                    <div class="fill fill-google" style="width: 0%;"></div>
                                </div>
                                <span class="bar-value bar-google-value">48,345</span>
                            </div>
                            <div class="bar" style="padding: 10px;">
                                <span class="bar-label">Vật Lý</span>
                                <div class="bar-fill">
                                    <div class="fill fill-social" style="width: 0;"></div>
                                </div>
                                <span class="bar-value bar-social-value">30,000</span>
                            </div>
                            <div class="bar" style="padding: 10px;">
                                <span class="bar-label">Hóa Học</span>
                                <div class="bar-fill">
                                    <div class="fill fill-direct" style="width: 0;"></div>
                                </div>
                                <span class="bar-value bar-direct-value">23,789</span>
                            </div>
                            <div class="chart-footer" id="chart-footer" style="padding: 15px;"></div>
                        </div>
                    </div>
                </div>

            </div> <!-- End of Main Content -->
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Chart.js Initialization -->
    <script>
        const ctx = document.getElementById('userGrowthChart').getContext('2d');
        const userGrowthChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', ' Tháng9'],
                datasets: [{
                    label: 'Số Lượng Người Dùng',
                    data: [120, 150, 180, 220, 240, 270, 320, 350, 400],
                    borderColor: '#FF6600',
                    backgroundColor: 'rgba(255, 102, 0, 0.2)',
                    borderWidth: 2,
                    fill: true,
                    tension: 0.4
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                scales: {
                    y: {
                        beginAtZero: true,
                        title: {
                            display: true,
                            text: 'Users'
                        }
                    },
                    x: {
                        title: {
                            display: true,
                            text: 'Month'
                        }
                    }
                }
            }
        });
    </script>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
    var xValues = ["Tài Liệu Chữ", "Video"];
    var yValues = [55, 45];
    var barColors = ["#f7941d", "#f47c3c "];

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
                        label: function(tooltipItem) {
                            return tooltipItem.label + ': ' + tooltipItem.raw + '%';
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
<script>
    const weekData = {
        math: 48345,
        physics: 30000,
        chemistry: 23789
    };

    const monthData = {
        math: 193450,
        physics: 125000,
        chemistry: 95000
    };

    const updateChart = (data) => {
            const maxDataValue = Math.max(data.math, data.physics, data.chemistry);
            const footerStep = Math.ceil(maxDataValue / 4 / 10000) * 10000;

            $('#chart-footer').html(`
                <span>0</span>
                <span>${footerStep / 1000}k</span>
                <span>${(footerStep * 2) / 1000}k</span>
                <span>${(footerStep * 3) / 1000}k</span>
                <span>${(footerStep * 4) / 1000}k</span>
            `);

            $('.fill-google').animate({ width: `${(data.math / (footerStep * 4)) * 100}%` }, 500);
            $('.fill-social').animate({ width: `${(data.physics / (footerStep * 4)) * 100}%` }, 500);
            $('.fill-direct').animate({ width: `${(data.chemistry / (footerStep * 4)) * 100}%` }, 500);

            $('.bar-google-value').text(data.math.toLocaleString());
            $('.bar-social-value').text(data.physics.toLocaleString());
            $('.bar-direct-value').text(data.chemistry.toLocaleString());
        };

        $('#weekBtn').click(() => {
            $('#weekBtn').addClass('btn-primary').removeClass('btn-light');
            $('#monthBtn').addClass('btn-light').removeClass('btn-primary');
            updateChart(weekData);
        });

        $('#monthBtn').click(() => {
            $('#monthBtn').addClass('btn-primary').removeClass('btn-light');
            $('#weekBtn').addClass('btn-light').removeClass('btn-primary');
            updateChart(monthData);
        });


    updateChart(weekData);
</script>
</body>

</html>