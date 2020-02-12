<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Date nowTime= new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
	SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>날짜/시간 출력</h1>
		<h3>현재 날짜: <%= date.format(nowTime) %></h3>
		<h3>현재 시간: <%= time.format(nowTime) %></h3>
	</body>
</html>