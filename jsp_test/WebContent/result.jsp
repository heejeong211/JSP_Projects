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
		<jsp:setProperty name="circle" property="r"/><br /> <!-- form���� name�� property�� ���� ���� ���� �� value�� ���� �� �ִ�. name="r", property="r" -->
		<jsp:setProperty name="circle" property="area"/><br />
		���� ���̴�: <jsp:getProperty name="circle" property="area"/>
	</body>
</html>