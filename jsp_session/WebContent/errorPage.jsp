<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>

<% response.setStatus(200); %> <!-- 200�� �ִ� ����, ������ ��û�� ����� ó���ߴٴ� ����. -->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		���� �߻�<br />
		<%= exception.getMessage() %>
	</body>
</html>