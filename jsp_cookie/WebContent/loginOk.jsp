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
				
				// 쿠키 생성하는 방법
				Cookie cookie = new Cookie("id", id);
				cookie.setMaxAge(60); // 쿠키 유효기간, 유효기간 지나면 사라짐. 초단위, 60초, 60*60면 한시간임.
				response.addCookie(cookie); // 이렇게 되면 id가 클라이언트로 감. 왜냐하면 쿠키는 클라이언트에 데이터를 저장하는 애이기 때문에
				
				response.sendRedirect("welcome.jsp"); // 클라이언트한테 abcde라는 id가 저장됨. Redirect 클라이언트한테 갔다가 클라이언트가 welcome.jsp를 다시 요청.
			} else {
				response.sendRedirect("login.jsp");
			}
		%>
	</body>
</html>