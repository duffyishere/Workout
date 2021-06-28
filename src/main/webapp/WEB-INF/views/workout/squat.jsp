<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>push Up</title>
    <link rel="icon" type="image/x-icon" href="assets/dumbel.png" />
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
    <script src="/resources/js/squataimodel.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="/resources/css/styles.css" rel="stylesheet" />
    <link href="/resources/css/main.css" rel="stylesheet" />
    <link rel="stylesheet" href="/resources/css/idpw.css">
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Barlow:wght@700&display=swap');
      </style>
    
      </head>
      <body id="page-top">
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
        <header style="height: 1000px;" class="masthead d-flex align-items-center">
          <div class="container px-4 px-lg-5 text-center">
              <div class="title" onclick="init()" ><p id="workout" style="margin-top: 130px;">workout!</p></div>
              <div id="titleWorkoutEnd" style= "height: 0px;"></div>
                <div id="idcontainer" class="idcontainer" style="margin-left: 480px; visibility: hidden;width: 400px; height: 0px;">   
                   <form id="idform">
                     <div class="group">      
                       <input type="text" required>
                       <span class="highlight"></span>
                       <span class="bar"></span>
                       <label>ID</label>
                     </div>
             
                     <div class="group">      
                       <input type="text" required>
                       <span class="highlight"></span>
                       <span class="bar"></span>
                       <label>PW</label>
                     </div>
             
                   </form>   
                <!-- </div> -->
            
          </div>
            <div><canvas style="border-radius: 4px;" height="0" id="canvas"></canvas></div>
            <div style="font-family: 'Barlow', sans-serif; font-size: 60px;" id="workout-count">0</div>
            <div class="progress">
              <div id="progress-bar" class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
                
              </div>
              
            </div>           
            <div style="margin-top : 10px; text-align: right;">
              <button id="countPerSet" class="btn-primary" style="border-radius: 5px; height: 35px; width: 80px; font-weight: bold"onclick="countPerSet()" >목표 개수</button>
              <button id="countLoop" class="btn-primary" style="border-radius: 5px; height: 35px; width: 50px; font-weight: bold"  onclick="loopSelect()">반복</button>
              <button id="countLoop" class="btn-primary" style="border-radius: 5px; height: 35px; width: 80px; font-weight: bold;"  onclick="countLoop()">무한반복</button>
            </div> 
            <link rel="apple-touch-icon" type="image/png" href="static.codepen.io/assets/favicon/apple-t...f7a952f3060705ee.png" />
            <meta name="apple-mobile-web-app-title" content="CodePen">
            <link rel="shortcut icon" type="image/x-icon" href="static.codepen.io/assets/favicon/favicon...7743096d55480f33.ico" />
            <link rel="mask-icon" type="" href="static.codepen.io/assets/favicon/logo-pi...5596661b4e2132cc.svg" color="#111" />
            <link href="/resources/css/stopwatch.css" rel="stylesheet" />
            <!-- <script>
              window.console = window.console || function(t) {};
            </script> -->
            
            <!-- <script>
              if (document.location.search.match(/type=embed/gi)) {
                window.parent.postMessage("resize", "*");
              }
            </script> -->
            
            
            <link
            href="fonts.googleapis.com/css2?family=Montser...200;900&display=swap"
            rel="stylesheet"
            />
            <link
            href="fonts.googleapis.com/css2?family=Roboto+...0;1,300&display=swap"
            rel="stylesheet"
            />
              
            <div class="stopwatch">
              <!-- <h1><span class="gold">GOLD</span> STOPWATCH</h1> -->
              <span style="font-family: 'Barlow', sans-serif; font-size: 20px;" class="time" id="stopwatchCount">0</span>
              <span style="font-family: 'Barlow', sans-serif; font-size: 30px;" class="time" id="display">00:00:00</span>
              <div class="controls">
                <button class="buttonPlay">
                  <!-- <img id="playButton" src="res.cloudinary.com/https-tinloof-com/ima...ay-button_opkxmt.svg" /> -->
                  <button id="playButton" class="btn-primary" style="border-radius: 5px;  width: 50px; height: 30px; font-size: 17px;">시작</button>
                  <button id="pauseButton" class="btn-primary" style="border-radius: 5px; width: 50px; height: 30px; font-size: 17px;">중단</button>
                  <!-- <img id="pauseButton" src="res.cloudinary.com/https-tinloof-com/ima...se-button_pinhpy.svg" /> -->
                </button>
                
                <button class="buttonReset">
                </button>
              </div>
            </div>
            <link href="/resources/css/stopWorkout.css" rel="stylesheet" />
            <div id="stopWorkout" class="stopWorkout">
              <button id="workoutEnd"style=" border-radius: 7px; height: 50px; width: 130px; font-size: 30px;" class="btn-primary" style="border-radius: 5px;">끝내기</button>
            </div>
            <script src="/resources/js/scripts.js"></script>
            <!-- <script src="static.codepen.io/assets/common/stopExec...6915e8726e5d9f147.js"></script> -->

            <script src="/resources/js/render.js"></script>

<script src="static.codepen.io/assets/editor/iframe/i...aadaa63ed5d970b37.js"></script>
</div>

<div style="visibility: hidden;" id="label-container"></div>
<div style="visibility: hidden;" id="vlabel-count">0</div>
<div style="visibility: hidden;" id="galabel-count">0</div>
<div style="visibility: hidden;" id="last-count">0</div>
<!-- <div style="visibility: visible;" id="label-container"></div>
  <div style="visibility: visible;" id="vlabel-count">0</div>
  <div style="visibility: visible;" id="galabel-count">0</div>
  <div style="visibility: visible;" id="last-count">0</div> -->
  
  <form action="/workout/insert" method="post" class="myForm">
    <input type="hidden" name="userid" value="<c:out value='${userName}'/>">
    <input type="hidden" name="workoutName" value="squat">
    <input type="hidden" name="workoutTime" value="">
    <!-- <input name="calorie" value=""> -->
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
  
</header>
<footer class="footer text-center">
  <div class="container px-4 px-lg-5">
    <ul class="list-inline mb-5">
      <li class="list-inline-item">
        <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-facebook"></i></a>
      </li>
      <li class="list-inline-item">
        <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-twitter"></i></a>
      </li>
      <li class="list-inline-item">
        <a class="social-link rounded-circle text-white" href="#!"><i class="icon-social-github"></i></a>
      </li>
    </ul>
  </div>
  <p class="text-muted small mb-0">Copyright &copy; Your Website 2021</p>
  
</footer>
<!-- Scroll to Top Button-->
<!-- Bootstrap core JS-->
<a class="scroll-to-top rounded" href="#page-top"><i class="fas fa-angle-up"></i></a>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="/resources/js/scripts.js"></script>

<script>
  var progressbar = document.getElementById("progress-bar")
  progressbar.style.width = "0%";
  </script>
    </body>
    </html>
    <script src="/resources/js/main.js"></script>
    <script src="/resources/js/workoutend.js"></script>
    <script src="/resources/js/stopwatchCount.js"></script>