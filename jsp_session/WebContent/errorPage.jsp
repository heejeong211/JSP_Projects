<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>

<% response.setStatus(200); %> <!-- 200을 주는 이유, 서버가 요청을 제대로 처리했다는 뜻임. -->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		에러 발생<br />
		<%= exception.getMessage() %>
	</body>
</html>