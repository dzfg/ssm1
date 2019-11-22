<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/user/addUser.action" method="post">
		<input type="text" name="username" placeholder="username">
		<br>
		<input type="password" name="password" placeholder="password">
		<br>
		<input type="number" name="age" placeholder="age">
		<br>
		<input type="submit">
	</form>
 
</body>
</html>