<!--  주소록 입력 화면   번호,이름,전화번호,생일,회사,메모... 주소록 작성/수정/삭제를 위해 번호를 클릭할 수 있는 링크 작성 
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2> 주수록 : 작성화면</h2>
<hr>
<a href=addrbook_control.jsp?action=list>[주소록 목록 보기]</a><p>
<form name=form1 method=post action=addrbook_control.jsp>
<input type=hidden name=action value="insert">
<table border="1">
<tr>
	<th>이름</th>
	<td><input type=text name=ab_name></td>
</tr>
<tr>
	<th>email</th>
	<td><input type=text name=ab_email></td>
</tr>
<tr>
	<th>전화번호</th>
	<td><input type=text name=ab_tel></td>
</tr>
<tr>
	<th>생일</th>
	<td><input type=date name=ab_birth></td>
</tr>
<tr>
	<th>회사</th>
	<td><input type=text name=ab_comdept maxlength="20"></td>
</tr>
<tr>
	<th>메모</th>
	<td><input type=text name=ab_memo></td>
</tr>
<tr>
	<td colspan=2 align=center><input type=submit value="저장"><input type=reset value="취소"></td>
</tr>
</table>


</form>
</div>
</body>
</html>