<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%request.setCharacterEncoding("UTF-8"); %>
<%response.setCharacterEncoding("UTF-8"); %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 페이지</title>
</head>
<body>
	<form action="response_test.jsp">
		<input type="text" name="name">
		<button>전송</button>
	</form>
	<%
		String name = request.getParameter("name");
		if(name != null) {
			out.println(name);
		}
	%>
</body>
</html>