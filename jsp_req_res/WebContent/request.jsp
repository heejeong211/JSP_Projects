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
			out.println("����: " + request.getServerName() + "<br />"); // request�� ��ü, �̹� ������� ��ü(���尴ü), �ڹٿ����� new�� ������ϴµ� jsp�� �̹� ��������ִ� ��ü�� ����
			out.println("��Ʈ ��ȣ: " + request.getServerPort() + "<br />");
			out.println("��û ���: " + request.getMethod() + "<br />");
			out.println("��������: " + request.getProtocol() + "<br />");
			out.println("URL: " + request.getRequestURL() + "<br />");
			out.println("URI: " + request.getRequestURI() + "<br />");
		%>
	</body>
</html>