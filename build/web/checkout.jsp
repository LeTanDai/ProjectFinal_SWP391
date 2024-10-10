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
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Navbar start-->
        <jsp:include page="menu.jsp"/>
        <!-- Navbar End -->

        <!-- Checkout Form Start -->
        <div class="checkout-container">
            <div class="checkout-payment">
                <div class="payment-options">
                    <div class="payment-option">
                        <input type="radio" id="credit-card" name="payment" checked>
                        <label for="credit-card">Thẻ tín dụng hoặc thẻ ghi nợ</label>
                        <div>
                            <img src="img/card_icon/visa.png" alt="Visa">
                            <img src="img/card_icon/mastercard.png" alt="MasterCard">
                            <img src="img/card_icon/amex.png" alt="Amex">
                            <img src="img/card_icon/discovercard.png" alt="Discover">
                        </div>
                    </div>
                    <div class="payment-option">
                        <input type="radio" id="momo" name="payment">
                        <label for="momo">Momo</label>
                        <img src="img/momo-primary-logo/MoMo Primary Logo/png/momo_icon_square_pinkbg_RGB.png" alt="MoMo">
                    </div>
                </div>
                <form action="paymentNotification.html" method="GET" class="payment-form">
                    <label for="card-number">Số Thẻ:</label>
                    <input type="text" id="card-number" placeholder="0000 - 0000 - 0000 - 0000" class="input-field" required>

                    <label for="card-holder">Tên chủ thẻ:</label>
                    <input type="text" id="card-holder" placeholder="Tên chủ thẻ" class="input-field" required>

                    <label for="expiry-date">Ngày hết hạn:</label>
                    <input type="text" id="expiry-date" placeholder="MM/YY" class="input-field" required>

                    <label for="cvv">Mã bảo mật:</label>
                    <input type="text" id="cvv" placeholder="CVC" class="input-field" required>

                    <label for="nationality">Quốc tịch:</label>
                    <input type="text" id="nationality" placeholder="Quốc tịch" class="input-field" value="Viet Nam" required>

                    <button type="submit" class="purchase-button">Thanh toán</button>
                </form>
            </div>

            <div class="checkout-summary">
                <h2 class="checkout-title" style="color: #ff6600;">Hoàn tất giao dịch</h2>
                <div class="pricing-info">
                    <p>250.000 VNĐ/Năm</p>
                    <p>Giá: 250.000 VNĐ</p>
                    <p>VAT: 25.000 VNĐ (10% của giá tiền)</p>
                    <p>Tổng: 275.000 VNĐ</p>
                </div>
                <div class="premium-benefits">
                    <h3>Đặc quyền tài khoản premium</h3>
                    <ul>
                        <li>Truy cập không giới hạn các bài học VIP</li>
                        <li>Ôn tập bằng các bài test</li>
                        <li>Đọc và tải các tài liệu Premium</li>
                    </ul>
                </div>
                <div class="note">
                     (*) Ngân hàng của bạn có thể tính phí xử lý giao dịch tại nước ngoài hoặc phí giao dịch hối đoái.
                </div>
            </div>
        </div>


        <!-- Footer Start -->
        <jsp:include page="footer.jsp"/>
        <!-- Footer End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
                class="fa fa-angle-double-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>