<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%!
			String id, pw;
		%>
		<%
			id = request.getParameter("id");
			pw = request.getParameter("pw");
			
			if(id.equals("abcde") && pw.equals("12345")) {
				
				// ��Ű �����ϴ� ���
				Cookie cookie = new Cookie("id", id);
				cookie.setMaxAge(60); // ��Ű ��ȿ�Ⱓ, ��ȿ�Ⱓ ������ �����. �ʴ���, 60��, 60*60�� �ѽð���.
				response.addCookie(cookie); // �̷��� �Ǹ� id�� Ŭ���̾�Ʈ�� ��. �ֳ��ϸ� ��Ű�� Ŭ���̾�Ʈ�� �����͸� �����ϴ� ���̱� ������
				
				response.sendRedirect("welcome.jsp"); // Ŭ���̾�Ʈ���� abcde��� id�� �����. Redirect Ŭ���̾�Ʈ���� ���ٰ� Ŭ���̾�Ʈ�� welcome.jsp�� �ٽ� ��û.
			} else {
				response.sendRedirect("login.jsp");
			}
		%>
	</body>
</html>