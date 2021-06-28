<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>workout!</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
    <script src="/resources/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js"></script>
    <script src="/resources/js/squataimodel.js"></script>
    <script src="/resources/js/stopwatch.js"></script>
    <script src="/resources/js/scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
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
    <link href="/resources/css/LU.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    

    <style>
        *{
            font-weight: bold;
            font-size: 18px;
        }
        table.type {
            /* border-collapse: separate; */
            border-collapse: collapse;
            border-spacing: 1px;
            text-align: center;
            line-height: 1.5;
            margin: 50px auto;
            width: 100%;
        }

        table.type th {
            border-collapse: collapse;
            width: 155px;
            padding: 10px;
            font-weight: bold;
            vertical-align: top;
            color: #fff;
            background: #1D809F;
            border: 1px solid #1D809F;
            border-right: 1px solid #ffffff;
        }

        table.type td {
            width: 155px;
            padding: 10px;
            vertical-align: top;
            /* border-bottom: 1px solid #ccc; */
            background: #eee;
            border-bottom: 0.5px solid #000000;
        }
    </style>


</head>

<body>
    <!-- Navigation-->
    <a class="menu-toggle rounded" href="#"><i class="fas fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand"><a href="./index.html">workout!</a></li>
            <li class="sidebar-nav-item"><a href="./push-up.html">push-up</a></li>
            <li class="sidebar-nav-item"><a href="./squat.html">Squats</a></li>
            <li class="sidebar-nav-item"><a href="./sit-up.html">sit-up</a></li>
            <li class="sidebar-nav-item"><a href="./lookup.html">lookup</a></li>
            <li class="sidebar-nav-item"><a href="./howto.html">HowTo?</a></li>
        </ul>
    </nav>
    <!-- Header-->
    <div class="LUMain">
        <div class="LUbody">
            <div style=" display: flex; background-color: rgb(160, 160, 160); width: 1000px;height: 80px;">
                <div class="headertitle">운동 기록장</div>
            </div>
            <div class="loopupMain" id="loopupMain">
                <!-- <div class="table-responsive"> -->
                <table class="table table-hover type">
                    <thead>
                        <tr>
                            <th scope="cols">사용자 이름</th>
                            <th scope="cols">날짜</th>
                            <th scope="cols">운동</th>
                            <!-- <th scope="cols">목표 횟수</th> -->
                            <!-- <th scope="cols">칼로리</th> -->
                            <th scope="cols" style="border-right: 1px solid #000000;">걸린시간</th>
                        </tr>
                    </thead>
                    <tbody id="workoutDiv">

                    </tbody>
                </table>
                <!-- </div> -->
            </div>
        </div>

    </div>


<script>
    $(document).ready(function (){
        let userID = "<c:out value="${userName}"/>";

        // console.log(userID);

            $.ajax({
                url: '/memberData',
                type: 'POST',
                data: {
                    userID: userID
                },
                beforeSend : function(xhr)
                {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                    xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                },
                success: function (data){
                    // alert(data)
                    console.log(data)
                    
                    for(var i=0; i<data.length; i++){
                        var tags = [];

                        tags.push("<tr>");
                        tags.push("<td>"+data[i].userid+"</td>");
                        tags.push("<td>"+data[i].workoutDate+"</td>");
                        tags.push("<td>"+data[i].workoutName+"</td>");
                        tags.push("<td>"+data[i].workoutTime+"</td>");
                        tags.push("</tr>");

                        $("#workoutDiv").append(tags)
                    }
                }
            })
    })
</script>

</body>

</html>