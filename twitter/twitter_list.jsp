<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
    <!-- 등록된 글의 목록, 작성자 아이디와 내용 시간 노출 -->
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	
	if(username != null) {
		session.setAttribute("username", username);
	}
%>
<meta charset="UTF-8">
<title>Twiiter</title>
</head>
<body style="margin-left : auto; margin-right : auto; text-align : center">
<div>
	<H3>My Simple Twiiter</H3>
	<HR>
	<form action="tweet.jsp" method="POST">
		@<%=session.getAttribute("username") %> 
		<input type="text" name="msg">
		<input type="submit" value="Tweet">
	</form>
</div>
<HR>
<div align="left">
<ul>
<%
	ArrayList<String>msgs = (ArrayList<String>)application.getAttribute("msgs");
	
	if(msgs != null) {
		for(String msg : msgs) {
			out.println("<li>"+msg+"</li>");
		}
	}
%>
</ul>
</div>
</body>
</html>