<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%request.setCharacterEncoding("UTF-8"); %>
<%response.setCharacterEncoding("UTF-8"); %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답 페이지</title>
</head>
<body>
	<!-- 이름 전달받기 -->
	<%-- <%out.println(request.getParameter("name")); %> --%>
	
	<!-- 전달받은 이름을 request_test.jsp로 다시 전달 -->
	<%-- <form action="request_test.jsp">
		<input type="text" name="name" value="<%=request.getParameter("name")%>">
		<button>전송</button>
	</form> --%>
	<%
		String name = request.getParameter("name");
	%>
	<%response.sendRedirect("request_test.jsp?name=" + URLEncoder.encode(name, "UTF-8")); %>
</body>
</html>