<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--  login 하는 화면, 이름만 입력을 받는다.   -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body style="margin-left : auto; margin-right : auto; text-align : center;">
	<H2>로그인</H2>
	<HR>
	<form name="form1" method="POST" action="selProduct.jsp">
		<input type="text" name="username"/>
		<input type="submit" value="로그인"/>
	</form>
</body>
</html>