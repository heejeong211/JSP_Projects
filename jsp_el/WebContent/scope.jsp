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
			pageContext.setAttribute("name", "hong gil dong"); // scope�� �ִ� pageContext�� scope2�� �ִ� pageContext�� �ٸ���(�ּҰ� �ٸ�.)
			request.setAttribute("id", "abcde"); // scope�� �ִ� request�� scope2�� �ִ� request�� �ٸ�. �ֳ��ϸ� scope���� Ŭ���̾�Ʈ�� ��û�߰� �� scope2���� �ٽ� Ŭ���̾�Ʈ�� ���û�߱� ������(��ü�� �ٸ�.)
		%>
		
		<h2>����� ���� ����غ���</h2>
			pageContext: <%= pageContext.getAttribute("name") %><br />
			request: <%= request.getAttribute("id") %><br />
			
		<a href="scope2.jsp">�̵��ϱ�</a>
		<jsp:forward page="scope2.jsp"/> <!-- forward �ּҴ� �ȹٲ�� �������� �ٲ�. --> <!-- forward�ϸ�  �������� request��ü�� �״�� scope2�� �Ѹ��� ������ request�� ������ ����. -->
	</body>
</html>