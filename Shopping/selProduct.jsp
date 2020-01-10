<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 상품을 선택하는 화면으로, 리스트에서 원하는 상품을 선택하고 <추가> 버튼을 클릭하여 상품을 추가한다. -->
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");
	session.setAttribute("username",request.getParameter("username"));
%>
<meta charset="UTF-8">
<title>상품 선택</title>
</head>
<body style="margin-left : auto; margin-right : auto; text-align : center;">
	<H2>상품 선택</H2>
	<HR>
	<%=session.getAttribute("username") %> 님이 로그인한 상태입니다.
	<HR>
	<form name="form1" method="POST" action="add.jsp">
		<select name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</select>
		<input type="submit" value="추가"/>
	</form>
	<a href="checkOut.jsp">계산</a>
</body>
</html>