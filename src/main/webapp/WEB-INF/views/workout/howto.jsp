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
    <link rel="icon" type="image/x-icon" href="assets/dumbel.png" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
    <script src="/resources/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js"></script>
    <script src="/resources/js/squataimodel.js"></script>
    <script src="/resources/js/stopwatch.js"></script>
    <script src="/resources/js/scripts.js"></script>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


    <script>
		$(function() {
        	$("button").on("click", function() {
            	$("HTbody").html("<div class='wrap'>devkuma입니다.</div>");
			});
      	});
    </script>

   



</head>

<body>
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
    <div class="HTMain">
        <div class="HTbody">
            <div style="position:fixed; display: flex; background-color: rgb(160, 160, 160); width: 1000px;height: 80px;">
                    
                <div class="headertitle"> 
                    운동방법!
                </div>
                <div class="headerbox" onclick="location.href='#HTpushup'">
                <P>푸시업</P>
                </div>
                <div class="headerbox" onclick="location.href='#HTsquat'">
                <P>스쿼트</a>
            </div>
            <div class="headerbox" onclick="location.href='#HTsitup'">
                <P>윗몸일으키기</P>
            </div>
            </div>
            <div class="HTpushup" id="HTpushup">
                <div style="text-align: center;font-size: 60px;font-weight: bold;">푸시업</div>

                <b>푸시업의 기본 동작</b><br>
                <p>바닥에 엎드린 자세에서 ▶ 몸통을 일직선으로 하고▶ 팔로 바닥을 밀어내는 동작을 반복하는 것이다.</p>
                <p>손은 어깨보다 약간 넓게, 손바닥은 약간 바깥쪽으로 향한다. 몸통을 반듯하게 하되
                    엉덩이를 내밀어선 안된다. 허리가 처지거나 휘어서도 안된다. 몸을 내리면서 들이쉬고, 숨을 내쉬면서 몸통을 들어 올린다.</p>

                <img src="/resources/assets/img/HTpushup.jpg" style="width: 100%;" />

                <p><b>주의사항</b></p>
                <p><b>첫째</b>, 팔꿈치와 몸통의 각도를 90도로 벌리지 말고, 45도 정도로 유지해야 한다. 자칫 어깨부상이 올 수 있기 때문이다. 팔을 어깨 높이로 올리면 어깨관절이 불안정한
                    위치에 오게 된다.</p>



                <p><b>둘째</b>, 바닥을 짚는 손목에 무리가 올 수 있으므로 바닥에 부드러운 수건을 깔고 주먹 바닥에 대고 하거나, 시중에 판매하는 푸시업바를 사용하기를 권한다. 푸시업바 대신
                    아령을 쥐고 해도
                    좋다.</p>



                <p><b>셋째</b>, 너무 빠르게 하거나 반동을 이용하지 않도록 한다. 필요한 부분의 근육에 자극을 주기 위해서는 적절한 속도로 푸시업을 수행해야 한다. 빠른 속도로 하는 것이
                    스피드와 순발력 향상에
                    도움이 되나 이는 어디까지나 올바른 동작을 유지한다는 전제하에서다. 개인마다 다르겠지만 한 번 할 때 2~3초 정도 하는 것이 적당하다.</p>

            </div>

            <div class="HTsquat" id="HTsquat">
                <div style="text-align: center;font-size: 60px;font-weight: bold;">스쿼트</div>

                <p><b>스쿼트의 기본 동작</b></p>
                <p>어깨 넓이로 발을 벌리고 서서 발가락이 전면을 향하도록 선 후 ▶ 허리는 곧게 펴고, 상체도 최대한 꼿꼿하게 피고 ▶ 무릎의 위치를 신경 쓰기보다는 의자에 앉는다는 느낌으로
                    자연스럽게 엉덩이를 낮춘다</p>
                <p>개인마다 신체 비율이 다르기 때문에 스쿼트를 처음 시작할 때는 옆에서 동작을 지켜봐 주는 사람이 있으면 도움이 됩니다.</p>

                <img src="/resources/assets/img/HTsquat.jpg" style="width: 100%;" />

                <p><b>주의사항</b></p>
                <p><b>첫째</b>, 스쿼트에서 가장 중요한 것은 엉덩이를 낮췄다가 일어나는 동작에서 반동으로 움직이는 것이 아니라 복부와 엉덩이의 힘으로 일어나야 하는데요. 반동을 주며 횟수를 많이
                    하는 것은 운동 효과에 도움이 되지 않으며, 천천히 바른 자세로 제대로 하는 것이 중요합니다.</p>



                <p><b>둘째</b>, 앉았다가 일어서는 동작을 계속해서 반복하는 과정에서 엉덩이를 쪼이는 동작을 추가하면, 운동 효과를 높일 수 있는데요. 앉았다가 일어선 후, 엉덩이를 쪼이고 다시
                    앉는 스쿼트 운동을 반복하는 것이 좋습니다. 엉덩이를 쪼이는 것은 근육을 자극하여 둔근 발달에 도움이 되는 동작입니다.
                </p>

            </div>

            <div class="HTsitup" id="HTsitup">
                <div style="text-align: center;font-size: 60px;font-weight: bold;">윗몸일으키기</div>

                <p><b>윗몸일으키기의 기본 동작</b></p>
                <p>등을 대고 바닥에 누워 무릎을 구부린후 손을 머리 뒤로 깍지 껴줍니다. ▶ 팔꿈치가 무릎에 닿을 정도로 숨을 뱉으며 복근을 수축시켜줍니다. ▶ 숨을 마시며 다시 누워줍니다. ▶
                    복근의 수축과 이완을 느끼며 반복해줍니다.(10~15회 3세트)</p>
                <p>개인마다 신체 비율이 다르기 때문에 스쿼트를 처음 시작할 때는 옆에서 동작을 지켜봐 주는 사람이 있으면 도움이 됩니다.</p>

                <img src="/resources/assets/img/HTsitup.jpg" style="width: 100%;" />

                <p><b>주의사항</b>
                </p>
                <p><b>첫째</b>, 많은 사람이 목을 조심하지 않는 위험한 실수를 한다. 앞으로 올라오면서 절대 목을 잡아당겨서는 안 된다. 올바른 자세는 손을 절대 목이 아닌 머리 뒤에 둬야한다.
                </p>
                <p><b>둘째</b>, 허리의 반동을 이용하는 동작은 , 윗몸 일으키기 본연의 효과를 내기 어렵기에 자제해주세요.
                    <p><b>셋째</b>,복근의 힘이 없는 상태에서 실시하게 되면 허리 통증을 유발할 수 있으니 주의해주세요.
                    </p>

            </div>
        </div>
    </div>





</body>

</html>