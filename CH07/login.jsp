<!-- 입력받은 아이디 정보를 빈즈 클래스를 이용해서 확인하고 처리하는 jsp 파일 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="jspbook.ch07.LoginBean" scope="page"/>
<jsp:setProperty name="login" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin-left :auto; margin-right :auto; text-align : center;">
<h2>로그인 예제</h2>
<HR>
<%
	if(!login.checkUser()) {
		out.println("로그인 실패!");
	} 
	else {
		out.println("로그인 성공");
	}
%>

<HR>
사용자 아이디 : <jsp:getProperty name="login" property="userid"/><BR>
사용자 패스워드 : <jsp:getProperty name="login" property="passwd"/><BR>

</body>
</html>