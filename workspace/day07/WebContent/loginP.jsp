<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<%if(request.getParameter("id").equals("hds1234")){
		if(request.getParameter("pw").equals("1234")){%>
		<h3>로그인 성공</h3>
		<%}else { %>
			<h1>비밀번호 오류</h1>
		<%} %>
	<%}else{ %>
		<h1>잘못된 아이디</h1>
	<%} %>
</body>
</html>