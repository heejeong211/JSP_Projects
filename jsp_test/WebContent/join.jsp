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
		<h3>작성하신 내용은 아래와 같습니다.</h3>
		
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
		
		이름: <%= name %><br />
		<hr />
		성별: <%= sex %><br />
		<hr />
		아이디: <%= id %><br />
		<hr />
		주소: <%= ad %><br />
		<hr />
		전화번호: <%= num %><br />
		<hr />
		이메일주소: <%= mail %><br />
		<hr />
		이름: <%= name %><br />
		<hr />
		취미: <%
			if(hobby == null) {
				out.println("[선택한 취미가 없습니다.]");
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