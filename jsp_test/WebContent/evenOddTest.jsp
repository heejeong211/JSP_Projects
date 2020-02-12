<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>1~10 까지 홀수 짝수 여부 출력</h1>
		<table border="1">
		<%
			
			for(int i = 0; i <= 10; i++) {
				out.println("<tr>");
				out.println("<td>" + i + "</td>");
				
				if(i % 2 == 0) {
					out.println("<td>"+ "짝수 입니다" + "</td>" );
				} else {
					out.println(("<td>"+ "홀수 입니다" + "</td>" ));
			
				}
				out.println("</tr>");
			}
		%>
		</table>
	</body>
</html>