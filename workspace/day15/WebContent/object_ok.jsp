<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 request 예제</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>생일</th>
		</tr>
		<tr>
			<th><%=request.getParameter("name") %></th>
			<th><%=request.getParameter("birthday") %></th>
		</tr>
	</table>
</body>
</html>