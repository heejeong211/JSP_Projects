<%@ page import="edu.bit.ex.Circle" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Circle circle = new Circle();
		%>
		원의 넓이는 <%=circle.getCircleArea(10) %>
	</body>
</html>