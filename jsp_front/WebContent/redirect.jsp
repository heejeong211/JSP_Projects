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

<!-- ��� �׽�Ʈ?? -->
<!-- ������ redirect.jsp�� �ؾ� ��. �ֳ��ϸ� set�� �� ���Ͽ� �����ϱ� -->
<!-- �׸��� sendRedirect�� ���ؼ� ������ RequestObj�� ����. get�������(����Ʈ�� get�����) -->
<!-- �̷��� �Ǹ� writer.println("id: " + id + "<br />"); id�� pw�� null�� ����. -->
<!-- request�� ������ �ޱ� ������(response�� �������� ���� ������) �����Ͱ� ��ȿ�ϱ� ������ null�� ����-->
<!-- �־��ϸ� response.sendRedirect("RequestObj"); �� ���� ������ Ŭ���̾�Ʈ���� ��û�� ���� ������ ����� ������ -->