<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<jsp:forward page="loginP.jsp">
		<jsp:param value="hds1234" name="id"/>
		<jsp:param value="123" name="pw"/>
	</jsp:forward>
</body>
</html>