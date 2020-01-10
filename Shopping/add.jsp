<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList" %>
    <!-- setProduct.jsp에서 선택된 상품을 세션에 넣는다. ArrayList에 상품들을 리스트 형식으로 저장하고 
         상품이 추가되었다는 alert를 띄운다. 그리고 다시 setProduct.jsp로 돌아간다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
<%
	request.setCharacterEncoding("UTF-8");
	String productname = request.getParameter("product");
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	if(list == null) {
		list = new ArrayList();
	}
	list.add(productname);
	session.setAttribute("productlist", list);
%>
<script>
	alert("<%=productname %> 이(가) 추가되었습니다.");
	history.go(-1); //전 페이지로 이동 
</script>
</html>