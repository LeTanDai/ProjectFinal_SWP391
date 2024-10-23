<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
    User user = (User) request.getAttribute("userInfo");
    if (user == null) {
        out.println("<p>User information not available. Please log in again.</p>");
        response.sendRedirect("login.jsp");
        return; // Ngừng xử lý trang
    }
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
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <style>
        .user-info {
            border: 2px solid #ff6600; /* Đường viền khung */
            border-radius: 10px; /* Bo góc cho khung */
            padding: 20px; /* Khoảng cách giữa nội dung và viền */
            margin-bottom: 30px; /* Khoảng cách dưới khung */
            background-color: #f9f9f9; /* Màu nền cho khung */
            max-width: 800px; /* Độ rộng tối đa của khung */
            margin-left: auto; /* Canh giữa khung */
            margin-right: auto; /* Canh giữa khung */
            display: flex; /* Sử dụng Flexbox */
            justify-content: space-between; /* Đặt khoảng cách giữa hai cột */
        }
        .user-info div {
            flex: 1; /* Chia đều không gian cho các cột */
            text-align: left; /* Căn trái nội dung */
            padding: 10px; /* Khoảng cách giữa nội dung và viền cột */
        }
        #qrcode img {
            width: 256px; /* Kích thước mã QR */
            height: 256px; /* Kích thước mã QR */
        }
        h1 {
            text-align: left; /* Căn trái tiêu đề */
        }
    </style>
</head>

<body>
    <!-- Navbar start-->
    <jsp:include page="menu.jsp"/>
    <!-- Navbar End -->

   <div class="container-payment" style="text-align: center; margin-top: 50px;">
    <h2 style="color: #ff6600;">Check for user và quét mã thanh toán!</h2>

    <div class="user-info">
        <!-- Hiển thị thông tin người dùng -->
        <div>
            <h1>User Information</h1>
            <p>Full Name: <%= user.getfName() %></p>
            <p>Username: <%= user.getUserName() %></p>
            <p>Email: <%= user.getEmail() %></p>
            <p>Phone: <%= user.getPhone() %></p>
            <p>Address: <%= user.getAddress() %></p>
        </div>

        <!-- Hiển thị mã QR thanh toán -->
        <div id="qrcode" style="text-align: center;">
            <img src="https://img.vietqr.io/image/MB-0702795560-compact.png?amount=30000&addInfo=<%= user.getPhone() %>" alt="QR Code" /> 
            <div style="margin-top: 20px;">
                <p id="paid_content"><%= user.getfName() %> update account</p>
                <p id="paid_price">Price: 30000</p>
            </div>

            <!-- Thêm thông báo đếm ngược 30 giây -->
            <div id="qr-timer" class="alert alert-warning" role="alert" style="margin-top: 20px;">
                Mã QR sẽ hết hạn trong <span id="timer">40</span> giây
            </div>
        </div>
    </div>
</div>

<!-- Thêm jQuery và JavaScript để thực hiện đếm ngược -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    // Hàm đếm ngược 30 giây cho mã QR
    function startTimer(duration, display) {
        let timer = duration, seconds;

        const interval = setInterval(function () {
            seconds = parseInt(timer % 60, 10);
            display.textContent = seconds;

            // Giảm thời gian mỗi giây
            if (--timer < 0) {
                clearInterval(interval); // Dừng đếm khi hết thời gian
                $('#qr-timer').html('Mã QR đã hết hạn'); // Thay đổi nội dung khi hết thời gian
            }
        }, 1000);
    }

    // Khi trang được tải
    $(document).ready(function() {
        const thirtySeconds = 40; // 30 giây
        const display = document.querySelector('#timer'); // Vị trí hiển thị số giây
        startTimer(thirtySeconds, display); // Bắt đầu đếm ngược
    });
</script>
    <!-- Footer Start -->
    <jsp:include page="footer.jsp"/>
    <!-- Footer End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>

  <script>
    let isSuccess = false; // Thay đổi trạng thái thanh toán
    let paid_price = 30000; // Số tiền cần thanh toán
    let Phone = "<%= user.getPhone() %>";
      
    // Gọi hàm checkPaid khi trang đã tải xong
    window.onload = function() {
        setTimeout(() => {
            setInterval(() => {
                checkPaid(paid_price);
            }, 5000);
        }, 30000); // Thay đổi thời gian delay tại đây
    };

    async function checkPaid(price) {
        if (isSuccess) {
            return; // Nếu đã thành công thì không kiểm tra nữa
        }

        try {
            const response = await fetch(
                "https://script.google.com/macros/s/AKfycbzb-NqVK3hb3DiGAQl-hxd3KBjsxdE_ogOJacaswhCPD61zJZfuq2tQn4OdlXI4FPR1VA/exec"
            );

            const responseData = await response.json();
            const lastPaid = responseData.data[responseData.data.length - 1]; // Lấy dữ liệu thanh toán cuối cùng

            // Kiểm tra xem lastPaid có tồn tại và có thuộc tính timestamp không
            if (!lastPaid || !lastPaid.timestamp) {
                alert("Không có dữ liệu thanh toán hợp lệ.");
                return;
            }
            console.log(lastPaid.content);
            const LastPrice = lastPaid.price; // Lưu giá thanh toán gần nhất
            const LastContent = lastPaid.content;
            // Chuyển đổi thời gian từ chuỗi sang đối tượng Date
            const lastPaidTime = new Date(lastPaid.timestamp.replace(' ', 'T')); // Thay đổi định dạng 'YYYY-MM-DD HH:mm:ss' thành 'YYYY-MM-DDTHH:mm:ss'
            const currentTime = new Date(); // Thời gian hiện tại

            // Kiểm tra nếu thanh toán xảy ra trong vòng 5 phút (300000 ms)
            if (LastPrice >= price && (currentTime - lastPaidTime) <= 3000000 && LastContent.includes(Phone)) {
                alert("Thanh toán thành công");
                isSuccess = true;

                // Cập nhật UI (nếu cần)
                updateUI(); // Cập nhật UI
                 window.location.href = "premiumUpgrade";
            } else {
                
                alert("Thanh toán thất bại" + LastContent);
            }
        } catch (error) {
            console.error("Lỗi", error);
        }
    }

    // Hàm cập nhật UI (nếu cần)
    function updateUI() {
        // Cập nhật giao diện hiển thị dữ liệu nếu cần
    }
</script>





    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
