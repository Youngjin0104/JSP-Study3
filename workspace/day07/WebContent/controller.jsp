<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		String site = request.getParameter("site");
		String url = null;
	
		switch(site){
		case "naver":
			url = "forward_naver.jsp";
			break;
		case "daum":
			url = "forward_daum.jsp";
			break;
		case "google":
			url = "forward_google.jsp";
			break;
		}
	%>
	<jsp:forward page="<%=url %>"></jsp:forward>
</body>
</html>