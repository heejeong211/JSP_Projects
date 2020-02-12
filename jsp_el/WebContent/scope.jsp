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
			pageContext.setAttribute("name", "hong gil dong"); // scope에 있는 pageContext랑 scope2에 있는 pageContext랑 다르다(주소가 다름.)
			request.setAttribute("id", "abcde"); // scope에 있는 request와 scope2에 있는 request랑 다름. 왜냐하면 scope에서 클라이언트가 요청했고 또 scope2에서 다시 클라이언트가 재요청했기 때문에(객체가 다름.)
		%>
		
		<h2>저장된 정보 출력해보기</h2>
			pageContext: <%= pageContext.getAttribute("name") %><br />
			request: <%= request.getAttribute("id") %><br />
			
		<a href="scope2.jsp">이동하기</a>
		<jsp:forward page="scope2.jsp"/> <!-- forward 주소는 안바뀌고 페이지는 바뀜. --> <!-- forward하면  서버에서 request객체를 그대로 scope2에 뿌리기 때문에 request는 변하지 않음. -->
	</body>
</html>