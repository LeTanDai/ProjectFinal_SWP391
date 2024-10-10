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
    <!-- Navbar Start -->
    <jsp:include page="menu.jsp"/>
    <!-- Navbar End -->


    <!-- Header Start -->
    <div class="container-fluid page-header" style="margin-bottom: 90px;">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase">Quiz</h3>
                <div class="d-inline-flex text-white">
                    <p class="m-0 text-uppercase"><a class="text-white" href="">Trang chủ</a></p>
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Quiz</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->


    <div class="quiz-container">
        <div class="quiz-header">
            <h1>Quiz System</h1>
        </div>
        
        <div id="quiz">
            <div class="question">Question text will go here...</div>
            <div class="choices">
                <!-- Choices will be dynamically inserted here -->
            </div>
        </div>
    
        <button class="next-btn" id="next-btn">Next Question</button>
        <div class="score" id="score"></div>
    </div>
    
    <script>
        // Quiz Data - Array of Questions
        const quizData = [
            {
                question: "What is the capital of France?",
                choices: ["Berlin", "Madrid", "Paris", "Lisbon"],
                correct: 2
            },
            {
                question: "What is 2 + 2?",
                choices: ["3", "4", "5", "6"],
                correct: 1
            },
            {
                question: "What is the capital of Japan?",
                choices: ["Seoul", "Beijing", "Tokyo", "Bangkok"],
                correct: 2
            }
        ];
    
        let currentQuestionIndex = 0;
        let score = 0;
    
        const questionElement = document.querySelector('.question');
        const choicesContainer = document.querySelector('.choices');
        const nextButton = document.getElementById('next-btn');
        const scoreElement = document.getElementById('score');
    
        // Load a question
        function loadQuestion() {
            // Clear previous choices
            choicesContainer.innerHTML = '';
    
            // Get current question data
            const currentQuestion = quizData[currentQuestionIndex];
    
            // Display question text
            questionElement.textContent = currentQuestion.question;
    
            // Create buttons for each choice
            currentQuestion.choices.forEach((choice, index) => {
                const button = document.createElement('button');
                button.classList.add('choice-btn');
                button.textContent = choice;
                button.onclick = () => selectAnswer(index);
                choicesContainer.appendChild(button);
            });
        }
    
        // Handle answer selection
        function selectAnswer(selectedIndex) {
            const currentQuestion = quizData[currentQuestionIndex];
            const buttons = document.querySelectorAll('.choice-btn');
    
            // Disable all buttons after selection
            buttons.forEach(button => button.disabled = true);
    
            // Check if the selected answer is correct
            if (selectedIndex === currentQuestion.correct) {
                buttons[selectedIndex].classList.add('correct');
                score++;
            } else {
                buttons[selectedIndex].classList.add('incorrect');
                buttons[currentQuestion.correct].classList.add('correct');
            }
    
            // Show the "Next" button
            nextButton.style.display = 'inline-block';
        }
    
        // Load the next question
        nextButton.addEventListener('click', () => {
            currentQuestionIndex++;
    
            if (currentQuestionIndex < quizData.length) {
                loadQuestion();
                nextButton.style.display = 'none';
            } else {
                showFinalScore();
            }
        });
    
        // Show the final score
        function showFinalScore() {
            questionElement.textContent = 'Quiz Completed!';
            choicesContainer.innerHTML = '';
            nextButton.style.display = 'none';
            scoreElement.textContent = `Your score is ${score}/${quizData.length}`;
        }
    
        // Start the quiz
        loadQuestion();
    </script>
    


    <!-- Footer Start -->
    <jsp:include page="footer.jsp"/>
<!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


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