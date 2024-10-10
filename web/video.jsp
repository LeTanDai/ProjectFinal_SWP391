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
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <style>
          .next-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: orange;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .video-section {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            margin-top: 20px;
        }
    
        iframe {
            width: 80%; 
            height: 600px; 
            max-width: 100%;
            border-radius: 10px;
        }
    
        .video-links {
            margin-top: 20px; 
            font-size: 1.2em;
            text-align: left; 
            width: 80%; 
        }
    
        .video-links a {
            display: block; 
            margin-bottom: 10px; 
            color: orange; 
            text-decoration: none; 
        }
    
        .video-links a:hover {
            text-decoration: underline; 
        }
    </style>
</head>

<body>
    <!-- Navbar start-->
    <jsp:include page="menu.jsp"/>
    <!-- Navbar End -->

   
     
     <main>
        <div class="video-section">
            <h4 class="media-heading text-primary" id="video-title">Chương 1. Ứng dụng đạo hàm để khảo sát và vẽ đồ thị hàm số</h4>           
            <iframe id="video-frame" src="https://www.youtube.com/embed/zsxktJWNxVI?autoplay=1" frameborder="0" allowfullscreen></iframe>
    
            <!-- Nút Next -->
            <button class="next-button" id="next-button" onclick="nextVideo()">Next</button>
    
            <!-- Danh sách các bài học -->
            <div class="video-links">
                <a href="#" id="bai1" onclick="showVideo(event, 0)">Bài 1: Tính đơn điệu của hàm số</a>
                <a href="#" id="bai2" onclick="showVideo(event, 1)">Bài 2: Giá trị lớn nhất và nhỏ nhất</a>
                <a href="#" id="bai3" onclick="showVideo(event, 2)">Bài 3: Đường tiệm cận của đồ thị hàm số</a>
                <a href="#" id="bai4" onclick="showVideo(event, 3)">Bài 4: Khảo sát sự biến thiên của đồ thị hàm số</a>
                <a href="#" id="bai5" onclick="showVideo(event, 4)">Bài 5: Ứng dụng đạo hàm để giải quyết bài toán thực tiễn</a>
            </div>
        </div>
    </main>
    
    
    
    <!-- Footer Start -->
    <jsp:include page="footer.jsp"/>
    <!-- Footer End -->

    <!-- JavaScript to change video -->
    <script>
        const videoUrls = [
            { url: 'https://www.youtube.com/embed/zsxktJWNxVI?autoplay=1', title: 'Chương 1. Ứng dụng đạo hàm để khảo sát và vẽ đồ thị hàm số' },
            { url: 'https://www.youtube.com/embed/WsMJEaCQsoA', title: 'Chương 2. Đạo hàm và ứng dụng của đạo hàm' },
            { url: 'https://www.youtube.com/embed/o6g5ZpOczLc', title: 'Chương 3. Tích phân và ứng dụng của tích phân' },
            { url: 'https://www.youtube.com/embed/990wEB5yo2k', title: 'Chương 4. Giới hạn và tính liên tục' },
            { url: 'https://www.youtube.com/embed/DYFeDU9oFG4', title: 'Chương 5. Hàm số và đồ thị hàm số' }
        ];

        let currentIndex = 0;

        function showVideo(event, index) {
            event.preventDefault();
            currentIndex = index;
            const videoFrame = document.getElementById('video-frame');
            const videoTitle = document.getElementById('video-title');
            videoFrame.src = videoUrls[index].url;
            videoTitle.textContent = videoUrls[index].title;
        }

        function nextVideo() {
            currentIndex = (currentIndex + 1) % videoUrls.length;
            showVideo(event, currentIndex);
        }
    </script>


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <!-- Template JavaScript -->
    <script src="js/main.js"></script>
</body>

</html>
