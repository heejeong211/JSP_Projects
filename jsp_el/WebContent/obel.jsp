<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="objelOk.jsp" methoe="post">
		���̵�: <input type="text" name="id" size="10"><br />
		��й�ȣ: <input type="password" name="pw" size="10"><br />
		<input type="submit" value="login">
	</form>
	
	<%
		application.setAttribute("application_name", "application_value");
		session.setAttribute("session_name", "session_value");
		pageContext.setAttribute("page_name", "page_value");
		request.setAttribute("request_name", "request_value");
	%>
	</body>
</html>