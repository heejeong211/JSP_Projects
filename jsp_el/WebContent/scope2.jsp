<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
			pageContext: <%= pageContext.getAttribute("name") %><br />
			request: <%= request.getAttribute("id") %><br />
			
		<a href="scope.jsp">���ư���</a>
	</body>
</html>