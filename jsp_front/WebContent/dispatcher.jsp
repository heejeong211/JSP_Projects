<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		dispatcherJsp.jsp
		<hr />
		
		id: <%= request.getAttribute("id") %> <br />
		pw: <%= request.getAttribute("pw") %> 
	</body>
</html>

<!-- 유저가 form으로 보낸 건 parameter로, setAttribute로 보낸건 getAttribute로 받음 -->
<!-- request는 응답을 받기 전까지(response로 유저한테 가기 전까지) 데이터가 유효하다. -->