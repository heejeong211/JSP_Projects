<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>�ۼ��Ͻ� ������ �Ʒ��� �����ϴ�.</h3>
		
		<%!
			String name, sex, id, ad, num, mail;
			String[] hobby;
		%>
		
		<%
			request.setCharacterEncoding("EUC-KR");
		
			name = request.getParameter("name");
			sex = request.getParameter("sex");
			id = request.getParameter("id");
			ad = request.getParameter("ad");
			num = request.getParameter("num");
			mail = request.getParameter("mail");
			
			hobby = request.getParameterValues("hobby");
		%>
		
		�̸�: <%= name %><br />
		<hr />
		����: <%= sex %><br />
		<hr />
		���̵�: <%= id %><br />
		<hr />
		�ּ�: <%= ad %><br />
		<hr />
		��ȭ��ȣ: <%= num %><br />
		<hr />
		�̸����ּ�: <%= mail %><br />
		<hr />
		�̸�: <%= name %><br />
		<hr />
		���: <%
			if(hobby == null) {
				out.println("[������ ��̰� �����ϴ�.]");
			} else {
				out.println("<table border=\"1\">");
				for(int i = 0; i < hobby.length; i++) {
					out.println("<tr><td>" + hobby[i] + "</tr></td>");
				}
				out.println("</table>");
			}
		%>
	</body>
</html>