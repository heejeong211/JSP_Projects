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
			out.println("서버: " + request.getServerName() + "<br />"); // request는 객체, 이미 만들어진 객체(내장객체), 자바에서는 new를 해줘야하는데 jsp는 이미 만들어져있는 객체가 있음
			out.println("포트 번호: " + request.getServerPort() + "<br />");
			out.println("요청 방식: " + request.getMethod() + "<br />");
			out.println("프로토콜: " + request.getProtocol() + "<br />");
			out.println("URL: " + request.getRequestURL() + "<br />");
			out.println("URI: " + request.getRequestURI() + "<br />");
		%>
	</body>
</html>