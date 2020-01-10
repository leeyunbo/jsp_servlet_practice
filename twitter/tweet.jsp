<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
    <!--  현재 로그인한 사용자 아이디와 작성된 메시지 저장, applicaiton 내장객체를 이용해 모든 사용자가 공유할 수 있는 임시 저장소로 활용 -->
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
	String username = (String)session.getAttribute("username");
	
	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
	
	if(msgs == null) {
		msgs = new ArrayList<String>();
	}
	msgs.add(username+" :: "+msg+" , "+ new java.util.Date());
	application.setAttribute("msgs",msgs);
	application.log(msg+"추가됨");
	
	response.sendRedirect("twitter_list.jsp");
%>
<meta charset="UTF-8">
<title>Tweet</title>
</head>
<body>

</body>
</html>