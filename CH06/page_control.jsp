<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
<h2>forward sendRedirect 테스트</h2>
<HR>
<form method=post action=forward_action2.jsp>
forward 액션 : <input type=text name=username>
<input type=submit value="확인">
</form>

<form method=post action=response_sendRedirect.jsp>
response.sendRedirect : <input type=text name=username>
<input type=submit value="확인">
</form>

</body>
</html>