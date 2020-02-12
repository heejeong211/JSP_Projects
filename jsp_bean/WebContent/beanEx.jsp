<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- id는 객체생성 -->
<jsp:useBean id="student" class="edu.bit.ex.Student" scope="page" /> <!-- jsp: 액션태그 사용 -->
<!-- edu.bit.ex.Student student = new edu.bit.ex.Student(); 위에 줄인 말 -->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:setProperty name="student" property="name" value="홍길동"/> <!-- student.setName("홍길동"); -->
		<jsp:setProperty name="student" property="age" value="13" /> <!-- age는 int형인데 "13"은 String임. 하지만 자기가 알아서 변환해줌. -->
		<jsp:setProperty name="student" property="grade" value="6"/>
		<jsp:setProperty name="student" property="studentNum" value="7"/>
		
		이름: <jsp:getProperty name="student" property="name"/><br /> <!-- student.getName(); -->
		나이: <jsp:getProperty name="student" property="age"/><br />
		학년: <jsp:getProperty name="student" property="grade"/><br />
		번호: <jsp:getProperty name="student" property="studentNum"/><br />
	</body> 
</html>