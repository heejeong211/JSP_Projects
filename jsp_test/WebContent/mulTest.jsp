<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style>
		  h3 {
		  	color:#ff848f;
		  }
		  
		  table {
		  	border-color:#50bcdf;
		  }
		</style>
	</head>
	<body>
	
	<h3>구구단 출력</h3>
	
	<table border="1"> 
	<%
	/*
		for(int i = 0; i < 10; i++) {
			out.println("<tr>");
		
		for(int j = 2; j < 10; j++) {
			
			if(i == 0) { // 안쪽 폼
				out.println("<td>" + j + "단" + "</td>");
			} else {
				out.println("<td>" + j + " X " + i + " = " + (i*j) + "</td>");
			}
		  }
		  out.println("</tr>");
		}
	*/
		out.println("<tr>");
		
		for(int i = 2; i <= 9; i++) {
			out.println("<td>" + i + "단" + "</td>"); 
		}
		
		out.println("</tr>");
		
		for(int i = 1; i <= 9; i++) {
			out.println("<tr>");
			
			for(int j = 2; j <= 9; j++) {
				out.println("<td>" + j + " X " + i + " = " + (i*j) + "</td>");
			}
			
			out.println("</tr>");
		}
	%>
	</table>
	
	</body>
</html>