<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="loginOk.jsp" methode="post"> <!-- 아이디랑 비밀번호는 get방식(url로 보내는 법)으로 보내면 큰일남 -->
		아이디: <input type="text" name="id" size="10"><br />
		비밀번호: <input type="password" name="pw" size="10"><br />
		<input type="submit" value="로그인">
		</form>
	</body>
</html>