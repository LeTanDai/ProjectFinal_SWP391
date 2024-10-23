<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/quiz.css" rel="stylesheet">
        <style>
            .total_points {
                text-align: center;
                font-size: 40px;
                color: white;
                background-color: #00de7a;
                font-family: sans-serif;
            }

            .restart:hover {
                background: red;
            }

            .result_box .buttons button {
                border: none;
            }

            .buttons button.quit {
                color: #FF6600;
            }

            .buttons button.quit:hover {
                background: #FF6600;
                color: white;
            }

            .quit-quiz {
                background: red;
                color: white;
            }

            .quit-quiz:hover {
                background: #ff00c8;
                color: white;
            }
        </style>

    </head>

    <body>
        <!-- Navbar End -->


        <!-- Header Start -->
        <div class="container-fluid page-header" style="margin-bottom: 90px; background-color: #343a40; color: white;">
            <div class="container">
                <div class="d-flex align-items-left" style="min-height: 300px">
                    <div>
                        <h3 class="display-4 text-white text-uppercase">Quiz</h3>
                        <div class="d-inline-flex text-white">
                            <p class="m-0 text-uppercase">
                                <a class="text-white" href="index.jsp">Trang chủ</a>
                            </p>
                            <i class="fa fa-angle-double-right pt-1 px-3"></i>
                            <p class="m-0 text-uppercase">Quiz</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Header End -->
        <div class="start_btn">
            <button style="color: white">Nhấn để bắt đầu</button>
        </div>

        <!-- Info Box -->
        <div class="info_box">
            <div class="info-title"><span>Lưu ý</span></div>
            <div class="info-list">
                <div class="info">Bạn có <span>30 s</span> để trả lời một câu hỏi.</div>
                <div class="info">Khi bạn đã chọn câu hỏi không thể chọn lại.</div>
                <div class="info">Đã sẵn sàng ? Nhấn tiếp tục để làm bài.</div>
            </div>
            <div class="buttons">
                <button class="quit" style="border: 1px solid   #FF6600">Thoát</button>
                <button class="restart" style="background:  #FF6600">Tiếp tục</button>
            </div>
        </div>

        <!-- Quiz Box -->
        <div class="quiz_box">
            <header>
                <div class="title">Hỏi nhanh đáp gọn</div>
                <div class="timer" style="background: #FD7E14; border: 1px solid #ccffd8">
                    <div class="time_left_txt">Time Left</div>
                    <div class="timer_sec">30</div>
                </div>
                <div class="time_line" style="background: #00de7a"></div>
            </header>
            <section>
                <div class="que_text">
                </div>
                <div class="option_list">
                </div>
            </section>
            <footer>
                <div class="total_que">
                </div>
                <button class="next_btn">Next</button>
            </footer>
        </div>

        <!-- Result Box -->
        <div class="result_box">
            <div class="icon">
                <i style="color: #ffc901" class="fas fa-crown"></i>
            </div>
            <div class="complete_text"> Hoàn thành!!!</div>
            <div class="score_text">
                <!-- Here inserted Score Result from JavaScript -->
            </div>
            <div class="buttons">
                <button class="restart" style="background: #007bff">Làm lại</button>
                <button class="quit quit-quiz" style="background: red; color: white;">Thoát</button>
                <form action="QuizController" method="POST">
                    <input type="hidden" name="point" id="point" value = "0">
                    <input type="hidden" name="totalQuestions" id="totalQuestions" value="">
                    <button type="submit"style="background: #00ed7a">Nộp bài</button>
                </form>
            </div>
        </div>





        <!-- Footer End -->




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
        <script>
            let questions = [
            <c:forEach items="${requestScope.listBank}" var="qu">

                {
                    numb:${qu.index},
                    question: "${qu.questionName}",
                    answer: "${qu.true_answer}",
                    options: [
                        "${qu.option1}",
                        "${qu.option2}",
                        "${qu.option3}",
                        "${qu.option4}"
                    ]
                },

            </c:forEach>

            ];
            let totalQuestions = questions.length;

            const start_btn = document.querySelector(".start_btn button");
            const info_box = document.querySelector(".info_box");
            const exit_btn = info_box.querySelector(".buttons .quit");
            const continue_btn = info_box.querySelector(".buttons .restart");
            const quiz_box = document.querySelector(".quiz_box");
            const result_box = document.querySelector(".result_box");
            const option_list = document.querySelector(".option_list");
            const time_line = document.querySelector("header .time_line");
            const timeText = document.querySelector(".timer .time_left_txt");
            const timeCount = document.querySelector(".timer .timer_sec");


            start_btn.onclick = () => {
                info_box.classList.add("activeInfo");
            };

            exit_btn.onclick = () => {
                info_box.classList.remove("activeInfo");
            };


            continue_btn.onclick = () => {
                info_box.classList.remove("activeInfo");
                quiz_box.classList.add("activeQuiz");
                showQuetions(0);
                queCounter(1);
                startTimer(30);
                startTimerLine(0);
            };

            let timeValue = 30;
            let que_count = 0;
            let que_numb = 1;
            let userScore = 0;
            let counter;
            let counterLine;
            let widthValue = 0;

            const restart_quiz = result_box.querySelector(".buttons .restart");
            const quit_quiz = result_box.querySelector(".buttons .quit");

            restart_quiz.onclick = () => {
                quiz_box.classList.add("activeQuiz");
                result_box.classList.remove("activeResult");
                timeValue = 30;
                que_count = 0;
                que_numb = 1;
                userScore = 0;
                widthValue = 0;
                showQuetions(que_count);
                queCounter(que_numb);
                clearInterval(counter);
                clearInterval(counterLine);
                startTimer(timeValue);
                startTimerLine(widthValue);
                timeText.textContent = "Time Left";
                next_btn.classList.remove("show");
            };


            quit_quiz.onclick = () => {
                window.location.reload();
            };

            const next_btn = document.querySelector("footer .next_btn");
            const bottom_ques_counter = document.querySelector("footer .total_que");

            next_btn.onclick = () => {
                if (que_count < questions.length - 1) {
                    que_count++;
                    que_numb++;
                    showQuetions(que_count);
                    queCounter(que_numb);
                    clearInterval(counter);
                    clearInterval(counterLine);
                    startTimer(timeValue);
                    startTimerLine(widthValue);
                    timeText.textContent = "Time Left";
                    next_btn.classList.remove("show");
                } else {
                    clearInterval(counter);
                    clearInterval(counterLine);
                    showResult();
                }
            };

            function showQuetions(index) {
                const que_text = document.querySelector(".que_text");
                let que_tag = '<span>' + questions[index].numb + ". " + questions[index].question + '</span>';
                let option_tag = '<div class="option"><span>' + questions[index].options[0] + '</span></div>'
                        + '<div class="option"><span>' + questions[index].options[1] + '</span></div>'
                        + '<div class="option"><span>' + questions[index].options[2] + '</span></div>'
                        + '<div class="option"><span>' + questions[index].options[3] + '</span></div>';
                que_text.innerHTML = que_tag;
                option_list.innerHTML = option_tag;
                const option = option_list.querySelectorAll(".option");
                for (i = 0; i < option.length; i++) {
                    option[i].setAttribute("onclick", "optionSelected(this)");
                }
            }

            let tickIconTag = '<div class="icon tick"><i class="fas fa-check"></i></div>';
            let crossIconTag = '<div class="icon cross"><i class="fas fa-times"></i></div>';


            function optionSelected(answer) {
                clearInterval(counter);
                clearInterval(counterLine);
                let userAns = answer.textContent.trim();  
                let correcAns = questions[que_count].answer.trim();
                const allOptions = option_list.children.length;

                if (userAns === correcAns) {
                    userScore += 1;
                    answer.classList.add("correct");
                    answer.insertAdjacentHTML("beforeend", tickIconTag);
                    console.log("Correct Answer");
                } else {
                    answer.classList.add("incorrect");
                    answer.insertAdjacentHTML("beforeend", crossIconTag);
                    console.log("Wrong Answer");
                    for (let i = 0; i < allOptions; i++) {
                        if (option_list.children[i].textContent.trim() === correcAns) {
                            option_list.children[i].classList.add("correct");
                            option_list.children[i].insertAdjacentHTML("beforeend", tickIconTag);
                        }
                    }
                }
                for (let i = 0; i < allOptions; i++) {
                    option_list.children[i].classList.add("disabled");
                }
                next_btn.classList.add("show");
            }


            function showResult() {
                info_box.classList.remove("activeInfo");
                quiz_box.classList.remove("activeQuiz");
                result_box.classList.add("activeResult");
                const scoreText = result_box.querySelector(".score_text");
                let scoreTag = '<span> Bạn làm đúng <p>' + userScore + '</p> trong <p>' + questions.length + '</p></span>';
                scoreText.innerHTML = scoreTag;
                document.getElementById("point").value = userScore;
                document.getElementById("totalQuestions").value = totalQuestions;

            }

            function startTimer(time) {
                counter = setInterval(timer, 1000);
                function timer() {
                    timeCount.textContent = time;
                    time--;
                    if (time < 9) {
                        let addZero = timeCount.textContent;
                        timeCount.textContent = "0" + addZero;
                    }
                    if (time < 0) {
                        clearInterval(counter);
                        timeText.textContent = "Time Off";
                        const allOptions = option_list.children.length;
                        let correcAns = questions[que_count].answer;
                        for (i = 0; i < allOptions; i++) {
                            if (option_list.children[i].textContent === correcAns) {
                                option_list.children[i].setAttribute("class", "option correct");
                                option_list.children[i].insertAdjacentHTML("beforeend", tickIconTag);
                                console.log("Time Off: Auto selected correct answer.");
                            }
                        }
                        for (i = 0; i < allOptions; i++) {
                            option_list.children[i].classList.add("disabled");
                        }
                        next_btn.classList.add("show");
                    }
                }
            }

            function startTimerLine(time) {
                counterLine = setInterval(timer, 59);
                function timer() {
                    time += 1;
                    time_line.style.width = time + "px";
                    if (time > 549) {
                        clearInterval(counterLine);
                    }

                }
            }

            function queCounter(index) {

                let totalQueCounTag = '<span><p>' + index + '</p> of <p>' + questions.length + '</p> Questions</span>';
                bottom_ques_counter.innerHTML = totalQueCounTag;
            }
        </script>
    </body>

</html>