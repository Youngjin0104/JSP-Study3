<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag 실습</title>
</head>
<body>
	<!-- 아래 모양과 같이 테이블 만들기 -->
	<!-- 
		□
		□□
		□□□
		□□□□
		□□□□□
		□□□□
		□□□
		□□
		□
	 -->
	 <table border="1">
	 	<%for(int i=0; i<5; i++){ %>
	 	<tr>
	 		<%for(int j=4-i; j<5; j++){ %>
	 			<td><%=i+1 %>행<%= i+2-(5-j) %>열</td>
	 		<%} %>
	 	</tr>
	 	<%} %>
	 	
	 	<%for(int i=0; i<4; i++){ %>
	 	<tr>
	 		<%for(int j=i; j<4; j++){ %>
	 			<td><%=i+6 %>행<%= j-i+1 %>열</td>
	 		<%} %>
	 	</tr>
	 	<%} %>
	 </table>
</body>
</html>