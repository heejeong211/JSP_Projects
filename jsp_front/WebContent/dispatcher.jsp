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

<!-- ������ form���� ���� �� parameter��, setAttribute�� ������ getAttribute�� ���� -->
<!-- request�� ������ �ޱ� ������(response�� �������� ���� ������) �����Ͱ� ��ȿ�ϴ�. -->