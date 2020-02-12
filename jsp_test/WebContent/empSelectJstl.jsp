<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.bit.ex.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		
		
	  	<%
			EmpPoolDAO empPoolDAO = new EmpPoolDAO();
			ArrayList<EmpDTO> dtos = empPoolDAO.empSelect();
			
			out.println("<table border = \"3\">");
			
			for(int i = 0; i < dtos.size(); i++) {
				EmpDTO dto = dtos.get(i);
				String ename = dto.getEname();
				String hiredate = dto.getHiredate();
				
				out.println("<tr>");
				out.println("<td>" + ename + "</td>");
				out.println("<td>" + hiredate + "</td>");
				out.println("</tr>");
			}
			
			out.println("</table>");
		%> 
	</body>
</html>