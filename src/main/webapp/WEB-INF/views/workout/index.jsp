<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>workout!</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/resources/assets/dumbel.png" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15. /js/all.js" crossorigin="anonymous"></script>
    <script src="/resources/js/main.js"></script>
    <!-- Simple line icons-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css"
        rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
        rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/resources/css/styles.css" rel="stylesheet" />
    <link href="/resources/css/main.css" rel="stylesheet" />
    <link href="/resources/css/slider.css" rel="stylesheet" />
    <link href="/resources/css/HW.css" rel="stylesheet" />
</head>

<body id="page-top" style="background-color: black;">
    <!-- Navigation-->
    <a class="menu-toggle rounded" href="#"><i class="fas fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand"><a href="workout/index">workout!</a></li>
            <li class="sidebar-nav-item"><a href="workout/push-up">push-up</a></li>
            <li class="sidebar-nav-item"><a href="workout/squat">Squats</a></li>
            <li class="sidebar-nav-item"><a href="workout/sit-up">sit-up</a></li>
            <li class="sidebar-nav-item"><a href="workout/howto">HowTo?</a></li>
        </ul>
    </nav>
    <!-- Header-->
    <header class="masthead d-flex align-items-center" style="height : 1000px;">
        <div class="container px-4 px-lg-5 text-center">
            <p class="title" onclick="location.href = '/' ">workout!</p>
            <div class="dropdown">
                <a class="btn btn-primary btn-xl workout" href="workout/push-up">
                    <p style="margin-bottom: 230px; font-size: 55px; font-weight: bolder;">push-up</p><img
                        style="width: 280px; margin-bottom: 30px;" src="/resources/assets/img/pushup.png" />
                </a>
                <div class="dropdown-content">
                    <a href="workout/Howto#HTpushup">how to Push-up?</a>
                </div>
            </div>
            <div class="dropdown">
                <a class="btn btn-primary btn-xl workout" href="workout/squat">
                    <p style="margin-bottom: 210px; font-size: 55px; font-weight: bolder;">squat</p><img
                        style="width: 270px; margin-bottom: 30px;" src="/resources/assets/img/squats.png" />
                </a>
                <div class="dropdown-content">
                    <a href="workout/Howto#HTsquat">how to Squat?</a>
                </div>
            </div>
            <div class="dropdown">
            <a class="btn btn-primary btn-xl workout" href="workout/sit-up">
                <p style="margin-bottom: 210px; font-size: 55px; font-weight: bolder;">sit-up</p> <img
                    style="width: 290px; margin-bottom: 30px;" src="/resources/assets/img/situp.png" />
            </a>
            <div class="dropdown-content">
                <a class="asd" href="workout/Howto#HTsitup">how to Sit-up?</a>
            </div>
        </div>
        </div>

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    </header>
    
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top"><i class="fas fa-angle-up"></i></a>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="/resources/js/scripts.js"></script>
</body>

</html>