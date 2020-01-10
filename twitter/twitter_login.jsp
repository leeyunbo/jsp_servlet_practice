<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--  로그인하는 화면, 사용자 이름을 입력 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin-left : auto; margin-right : auto; text-align : center;">
	<h2>트위터 로그인</h2>
	<form name="form1" method="POST" action="twitter_list.jsp">
		<input type="text" name="username"/>
		<input type="submit" value="로그인"/>
	</form>
</body>
</html>