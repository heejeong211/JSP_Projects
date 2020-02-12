<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="circle" class="edu.bit.ex.Circle" scope="page" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:setProperty name="circle" property="r"/><br /> <!-- form에서 name과 property의 넣은 값이 같을 때 value를 지울 수 있다. name="r", property="r" -->
		<jsp:setProperty name="circle" property="area"/><br />
		원의 넓이는: <jsp:getProperty name="circle" property="area"/>
	</body>
</html>