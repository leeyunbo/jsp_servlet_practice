<!-- application scope에 저장된 AddrManager 객체를 통해 저장된 데이터를 가져와서 화면에 출력  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*" %>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin-left:auto; margin-right:auto; text-align:cetner;">
<h2>주소록</h2>
<hr>
<a href="addr_form.html">주소 추가</a>
<table border=1 width=500 align="center">
<%
	for(AddrBean ab : am.getAddrList()) {
		System.out.println(ab.getUsername());
%>
	<tr>
	<td><%=ab.getUsername() %></td>
	<td><%=ab.getTel() %></td>
	<td><%=ab.getEmail() %></td>
	<td><%=ab.getSex() %></td></tr>
<%
	}
%>



</table>
</body>
</html>