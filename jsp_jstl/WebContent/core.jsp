<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- prefix="c"는 앞에 c: core를 쓰겠다는 의미 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- c:set은 변수선언,  var vatName = varValue -->
		<c:set var="vatName" value="varValue"/>
			vatName : <c:out value="${ vatName }"/> <!-- c:out은 출력 -->
		<br />
		
		<!-- var num = 100 -->
		<c:set var="num" value="100"/>
			num : <c:out value="${ num }"/>
		<br />
		
		변수제거
		<c:remove var="num"/> <!-- num이라는 변수를 삭제한 것임. -->
			vatName : <c:out value="${ vatName }"/>
			num: <c:out value="${ num }"/>
		<hr />
		
		에러 처리 출력 
		<c:catch var="error"> <!-- catch안쓰면 500 내부에러 발생!! -->
			<%= 2/0 %>
		</c:catch>
		<br />
		<c:out value="${ error }"/>
		<hr />
		
		if문 출력<br />
		<c:if test="${ 1+2 == 3 }"> <!-- ${ 1+2 == 3 }이거 대신으로 true나 false가 와야함 -->
			1+2=3
		</c:if>
		<c:if test="${ 1+2 != 3 }">
			1+2=3
		</c:if>
		<hr />
		
		for-each문 출력<br />
		<c:forEach var="feach" begin="0" end="30" step="3">
			${ feach }
		</c:forEach>
		<hr />
		
		swich문 출력<br />
		<c:choose>
			<c:when test="${ 1>0 }">
				1은 0보다 크다 <br />
			</c:when>
			<c:when test="${ 2>0 }">
				2도 0보다 크다 <br />
			</c:when>
			<c:otherwise> <!-- swich문에서 디폴트값 -->
				왠만하면 크다.....ㅎㅎ
			</c:otherwise>
		</c:choose>
	</body>
</html>