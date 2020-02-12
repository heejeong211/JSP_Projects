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
			String id, pw;
		%>
		<%
			id = request.getParameter("id");
			pw = request.getParameter("pw");
			
			if(id.equals("abcde") && pw.equals("12345")) {
				
				session.setAttribute("id", id); // session 내장객체 new를 할 필요가 없음. 서버(톰캣)에 id 저장
				
				response.sendRedirect("welcome.jsp"); // 클라이언트한테 abcde라는 id가 저장됨. Redirect 클라이언트한테 갔다가 클라이언트가 welcome.jsp를 다시 요청.
			} else {
				response.sendRedirect("login.jsp");
			}
		%>
	</body>
</html>