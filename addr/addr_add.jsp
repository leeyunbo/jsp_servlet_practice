<!--  addr_form.html에서 입력된 내용을 AddrBean으로 매핑하고 
	  AddrManager를 이용해 데이터 추가 기능을 수행한다.
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<%
	am.add(addr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin-left:auto; margin-right:auto; text-align:center;">
<h2>등록내용</h2>
이름 : <jsp:getProperty property="username" name="addr"/><BR>
전화번호 : <jsp:getProperty property="tel" name="addr"/><BR>
이메일 : <jsp:getProperty property="email" name="addr"/><BR>
성별 : <jsp:getProperty property="sex" name="addr"/>
<HR>
<a href="addr_list.jsp">목록 보기</a>
</body>
</html>