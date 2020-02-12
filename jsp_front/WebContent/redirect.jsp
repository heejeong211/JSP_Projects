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
			request.setAttribute("id", "abcde");
			request.setAttribute("pw", "1234");
			
			response.sendRedirect("RequestObj");
		%>
	</body>
</html>

<!-- 어떻게 테스트?? -->
<!-- 접속을 redirect.jsp로 해야 함. 왜냐하면 set이 이 파일에 있으니까 -->
<!-- 그리고 sendRedirect를 통해서 서블릿이 RequestObj로 보냄. get방식으로(디폴트가 get방식임) -->
<!-- 이렇게 되면 writer.println("id: " + id + "<br />"); id랑 pw가 null이 찍힘. -->
<!-- request는 응답을 받기 전까지(response로 유저한테 가기 전까지) 데이터가 유효하기 때문에 null이 찍힘-->
<!-- 왜야하면 response.sendRedirect("RequestObj"); 로 인해 서버가 클라이언트한테 요청에 대한 응답을 해줬기 때문에 -->