<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
    <!-- 세션이 살아 있고, 하나 이상의 상품을 선택한 상태면 상품의 목록을 보여준다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="margin-left : auto; margin-right : auto; text-align : center;">
<h2>계산</h2>
선택한 상품 목록 
<hr>
<%
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	if(list == null) {
		out.println("선택한 상품이 없습니다.");
	} else {
		for(Object productname : list) {
			out.println(productname + "<BR>");
		}
	}
%>
</body>
</html>