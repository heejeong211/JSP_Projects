<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- id�� ��ü���� -->
<jsp:useBean id="student" class="edu.bit.ex.Student" scope="page" /> <!-- jsp: �׼��±� ��� -->
<!-- edu.bit.ex.Student student = new edu.bit.ex.Student(); ���� ���� �� -->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:setProperty name="student" property="name" value="ȫ�浿"/> <!-- student.setName("ȫ�浿"); -->
		<jsp:setProperty name="student" property="age" value="13" /> <!-- age�� int���ε� "13"�� String��. ������ �ڱⰡ �˾Ƽ� ��ȯ����. -->
		<jsp:setProperty name="student" property="grade" value="6"/>
		<jsp:setProperty name="student" property="studentNum" value="7"/>
		
		�̸�: <jsp:getProperty name="student" property="name"/><br /> <!-- student.getName(); -->
		����: <jsp:getProperty name="student" property="age"/><br />
		�г�: <jsp:getProperty name="student" property="grade"/><br />
		��ȣ: <jsp:getProperty name="student" property="studentNum"/><br />
	</body> 
</html>