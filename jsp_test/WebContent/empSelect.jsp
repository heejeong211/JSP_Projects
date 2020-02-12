<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.bit.ex.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style>
			table {
				border-color:green;
				border-collapse:collapse;
			}
		</style>
	</head>
	<body>
		<%
			EmpDAO empDAO = new EmpDAO();
			ArrayList<EmpDTO> dtos = empDAO.empSelect();
			
			out.println("<table border = \"3\">");
			
			for(int i = 0; i < dtos.size(); i++) {
				EmpDTO dto = dtos.get(i);
				String ename = dto.getEname();
				String hiredate = dto.getHiredate();
				String comm = dto.getComm();
				
				out.println("<tr>");
				out.println("<td>" + ename + "</td>");
				out.println("<td>" + hiredate + "</td>");
				out.println("<td>" + comm + "</td>");
				out.println("</tr>");
			}
			
			out.println("</table>");
		%>
	</body>
</html>