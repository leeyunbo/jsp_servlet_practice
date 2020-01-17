<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp" import="board.DAO.AddrBean, board.DO.AddrBook"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="ab" scope="page" class="board.DAO.AddrBean"/>
<jsp:useBean id="addrbook" class="board.DO.AddrBook"/>
<jsp:setProperty name="addrbook" property="*"/>

<%
	String action = request.getParameter("action");
	if(action.equals("list")) {
		request.setAttribute("dbList",ab.getDBList());
		pageContext.forward("addrbook.jsp");
	} else if(action.equals("insert")) {
		if(ab.insertDB(addrbook)) {
			response.sendRedirect("addrbook_control.jsp?action=list");
		} else {
			throw new Exception("DB 입력 오류");
		}
	} else if(action.equals("edit")) {
		addrbook = ab.getDB(addrbook.getAb_id());
		if(!request.getParameter("upasswd").equals("1234")) {
			out.println("<script>alert('비밀번호가 틀렸습니다'); history.go(-1);</script>");
		}
		else {
			request.setAttribute("ab",addrbook);
			pageContext.forward("addrbook_edit_form.jsp");
		}
	} else if(action.equals("update")) {
		if(ab.updateDB(addrbook)) {
			response.sendRedirect("addrbook_control.jsp?action=list");
		} else {
			throw new Exception("DB 업데이트 오류");
		}
	} else if(action.equals("delete")) {
		if(ab.deleteDB(addrbook.getAb_id())) {
			response.sendRedirect("addrbook_control.jsp?action=list");
		}
		else {
			throw new Exception("DB 삭제 오류");
		}
	} else {
		return;
	}
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
