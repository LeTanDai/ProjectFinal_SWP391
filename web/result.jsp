<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Điểm bài học</title>
        <link rel="icon" href="../Assets/icon/favicon.png">
        <!-- link bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
        <style>
            
            .center {
                border-radius: 10px;
                padding: 3em 10em;
                text-align: center;
                font-family: sans-serif;
                background: url('https://png.pngtree.com/background/20210714/original/pngtree-happy-birthday-yellow-background-picture-image_1209780.jpg') no-repeat center center;
                background-size: cover;
            }

            h1 {
                font-size: 36px;
                margin-bottom: 0.5em;
            }

            h2 {
                font-size: 24px;
                margin-top: 0;
            }
        </style>
    </head>

    <body>
        <div style="display: flex;
             flex-direction: column;
             justify-content: center;
             align-items: center;
             height: 100vh;">
            <div class="center">
                <h1 style="color: red;">CHÚC MỪNG BẠN HOÀN THÀNH BÀI HỌC</h1>
                <h2>Điểm số</h2>
                <p>${percentage}</p>
              
                 <h3 style="font-size: 3em; font-weight: bold;color: orange">100</h3>

                <a class="btn btn-success" href="ModuleController">
                    Tiếp tục
                </a>
            </div>
        </div>
    </body>

</html>