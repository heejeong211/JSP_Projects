<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>1~10 ���� Ȧ�� ¦�� ���� ���</h1>
		<table border="1">
		<%
			
			for(int i = 0; i <= 10; i++) {
				out.println("<tr>");
				out.println("<td>" + i + "</td>");
				
				if(i % 2 == 0) {
					out.println("<td>"+ "¦�� �Դϴ�" + "</td>" );
				} else {
					out.println(("<td>"+ "Ȧ�� �Դϴ�" + "</td>" ));
			
				}
				out.println("</tr>");
			}
		%>
		</table>
	</body>
</html>