<%@ page import="edu.bit.ex.Rectangle" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
	
		<%!
			int width,height;
			int area;
		%>
		<%
			String str1 = request.getParameter("width");
			String str2 = request.getParameter("height");
			
			width = Integer.parseInt(str1);
			height = Integer.parseInt(str1);
			area = width * height;
			
			Rectangle rec = new Rectangle(width, height);
			
			out.println("사각형의 넓이는 " +rec.getRectangleArea() + "<br />");
		%>
			사격형의 넓이는 <%= area %>
	</body>
</html>