<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>request 결과</h2>
<hr>
<table border=1 cellspacing="1" cellpadding="5">
<tr>
<td>이름</td>
<td><%=request.getParameter("username") %></td>
<tr>
<td>직업</td>
<td><%=request.getParameter("job") %></td>
<tr>
<td>관심분야</td>
<td>
<%
	String favorites[] = request.getParameterValues("favorite");
	for(String favorite : favorites) {
		out.println(favorite + "<BR>");
	}
%></td>
</table>
<HR>
<h2>request 결과 2</h2>








































<table border=1 cellspacing="1" cellpadding="5">
<tr>
<td> 
1. 클라이언트 IP 주소 : <%=request.getRemoteAddr() %> <BR>
2. 요청 메서드 : <%= request.getMethod() %> <BR>
<%
	Cookie cookie[] = request.getCookies();
%>
3. <%= cookie[0].getName() %>에 설정된 쿠키 값 : <%= cookie[0].getValue() %><BR>
4. 프로토콜 : <%= request.getProtocol() %>
</td></tr> 
</table>
</center>

</body>
</html>
