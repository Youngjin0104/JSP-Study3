<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag5</title>
</head>
<body>
	<!-- 3행 5열을 for문으로 만들기 -->
	<table border="1">
		<%for(int i=0; i<3; i++){ %>
			<tr>
				<%for(int j=0; j<5; j++){ %>
					<td><%=i+1 %>행 <%=j+1 %>열</td>
				<%} %>
			</tr>
		<%} %>
	</table>
</body>
</html>