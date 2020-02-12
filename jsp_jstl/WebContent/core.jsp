<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- prefix="c"�� �տ� c: core�� ���ڴٴ� �ǹ� -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- c:set�� ��������,  var vatName = varValue -->
		<c:set var="vatName" value="varValue"/>
			vatName : <c:out value="${ vatName }"/> <!-- c:out�� ��� -->
		<br />
		
		<!-- var num = 100 -->
		<c:set var="num" value="100"/>
			num : <c:out value="${ num }"/>
		<br />
		
		��������
		<c:remove var="num"/> <!-- num�̶�� ������ ������ ����. -->
			vatName : <c:out value="${ vatName }"/>
			num: <c:out value="${ num }"/>
		<hr />
		
		���� ó�� ��� 
		<c:catch var="error"> <!-- catch�Ⱦ��� 500 ���ο��� �߻�!! -->
			<%= 2/0 %>
		</c:catch>
		<br />
		<c:out value="${ error }"/>
		<hr />
		
		if�� ���<br />
		<c:if test="${ 1+2 == 3 }"> <!-- ${ 1+2 == 3 }�̰� ������� true�� false�� �;��� -->
			1+2=3
		</c:if>
		<c:if test="${ 1+2 != 3 }">
			1+2=3
		</c:if>
		<hr />
		
		for-each�� ���<br />
		<c:forEach var="feach" begin="0" end="30" step="3">
			${ feach }
		</c:forEach>
		<hr />
		
		swich�� ���<br />
		<c:choose>
			<c:when test="${ 1>0 }">
				1�� 0���� ũ�� <br />
			</c:when>
			<c:when test="${ 2>0 }">
				2�� 0���� ũ�� <br />
			</c:when>
			<c:otherwise> <!-- swich������ ����Ʈ�� -->
				�ظ��ϸ� ũ��.....����
			</c:otherwise>
		</c:choose>
	</body>
</html>