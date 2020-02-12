<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- 표현식(스트릿플릿) -->
		
		<%= 10 %>
		
		<hr />
		<!-- EL -->
		
		${10} <br />
		${99.99}<br /> <!-- el이 실수 타입도 가지고 있음 -->
		${"ABC"}<br /> <!-- 따옴표 안해주면 문자 안나옴 -->
		${'ABC'}<br /> <!-- '' 해도 되지만 되도록 "" 이렇게 쓰자! -->
		${true}<br />
		
		${1+2}<br />
		${1-2}<br />
		${1*2}<br />
		${1/2}<br /> <!-- 실수형으로 나옴 -->
		
		${1>2}<br />
		${1<2}<br />
		
		${(1>2) ? 1 : 2}<br /> <!-- 3항 연산자 사용 가능 -->
		
		${(1>2) || (1<2)}<br />
		
		<hr />
		<!-- 액션태그  -->
		
		<!-- MemberInfo member = new MemeberInfo(); -->
		<jsp:useBean id="member" class="edu.bit.ex.MemberInfo" scope="page"/> <!-- scope란 데이터의 유효 범위(영역) -->
		<jsp:setProperty name="member" property="name" value="홍길동"/> <!-- member.setName("홍길동"); -->
		<jsp:setProperty name="member" property="id" value="abc"/>
		<jsp:setProperty name="member" property="pw" value="1234"/>
		
		이름: <jsp:getProperty name="member" property="name" /><br /> 
		아이디: <jsp:getProperty name="member" property="id" /><br /> 
		비밀번호: <jsp:getProperty name="member" property="pw" /><br /> 
		
		<hr />
		<!-- EL -->
		<!-- getProperty를 EL로 바꿈 setProperty는 해야함... -->
		
		이름: ${ member.name }<br />
		아이디: ${ member.id }<br />
		비밀번호: ${ member.pw }<br />
		
	</body>
</html>