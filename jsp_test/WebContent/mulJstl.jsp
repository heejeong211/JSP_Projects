<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<style>
			table {
				background-color:green;
			}
		</style>
	</head>
	<body>
		<table border="1">
			<c:forEach var="i" begin="1" end="9">
				<tr>
					<c:forEach var="j" begin="2" end="9">
						<td>${ j } X ${ i } = ${ i*j }</td>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
		
		<hr />
		
		<table border="1">
			<c:forEach var="i" begin="1" end="9">
				<tr>
					<c:forEach var="j" begin="2" end="9">
						<c:if test="${ j % 2 == 0 }">
						<td>${ j } X ${ i } = ${ i*j }</td>
						</c:if>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>