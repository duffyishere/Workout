<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html lang="id" dir="ltr">

<head>
     <meta charset="utf-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
     <meta name="description" content="" />
     <meta name="author" content="" />

     <!-- Title -->
     <title>Sorry, This Page Can&#39;t Be Accessed</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous" />
     <style>
     	.myBack{
     		background-color: #fcf8e3;
     	}
     
     	#footer{
     		text-align: center;
     		position: fixed;
     		margin-left: 530px;
     		bottom: 0px
		}
     </style>
</head>

<body class="text-black-50 py-5 myBack">
     <div class="container py-5">
          <div class="row">
               <div class="col-md-2 text-center">
                    <p><i class="fa fa-exclamation-triangle fa-5x"></i><br/>Status Code: 403</p>
               </div>
               <div class="col-md-10">
                    <h3>해당 서비스는 로그인을 하신 뒤에 이용하실 수 있습니다</h3>
                    <p>Sorry, your access is refused due to security reasons of our server and also our sensitive data.<br/>Please go back to the previous page to continue browsing.</p>
                    <a class="btn btn-danger" href="/customLogin">Login</a>
               </div>
          </div>
     </div>

     <div id="footer" class="text-center">
          Hak Cipta 2018, Garuda Cyber Technologies
     </div>
</body>

</html>