<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%!
			String name, id, pw;
		%>
		<%
			name = (String)session.getAttribute("name"); // session.getAttribute는 Object이기 떄문에 형변환(String)으로 시켜줘야 함.
			id = (String)session.getAttribute("id");
			pw = (String)session.getAttribute("pw");
		%>
		
		<%= name %>님 안녕하세요<br />
		<a href="modify.jsp">회원정보 수정</a>
	</body>
</html>

<!-- 로그인에 경우 세션쓰고 장바구니 같은 경우 쿠키 많이 씀 -->