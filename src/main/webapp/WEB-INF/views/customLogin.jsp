<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<h1>Custom Login Page</h1>
	<h2><c:out value='${error}'/></h2>
	<h2><c:out value='${logout}'/></h2>
	
	<form action="/login" method="post" role="form">
		<input type='text' name="username"><br />
		<input type='password' name="password"/><br />
		<input type='checkbox' name="remember-me">Remember Me<br />
		<input type='submit'>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form>
</body>
</html>