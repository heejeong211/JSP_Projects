<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- ǥ����(��Ʈ���ø�) -->
		
		<%= 10 %>
		
		<hr />
		<!-- EL -->
		
		${10} <br />
		${99.99}<br /> <!-- el�� �Ǽ� Ÿ�Ե� ������ ���� -->
		${"ABC"}<br /> <!-- ����ǥ �����ָ� ���� �ȳ��� -->
		${'ABC'}<br /> <!-- '' �ص� ������ �ǵ��� "" �̷��� ����! -->
		${true}<br />
		
		${1+2}<br />
		${1-2}<br />
		${1*2}<br />
		${1/2}<br /> <!-- �Ǽ������� ���� -->
		
		${1>2}<br />
		${1<2}<br />
		
		${(1>2) ? 1 : 2}<br /> <!-- 3�� ������ ��� ���� -->
		
		${(1>2) || (1<2)}<br />
		
		<hr />
		<!-- �׼��±�  -->
		
		<!-- MemberInfo member = new MemeberInfo(); -->
		<jsp:useBean id="member" class="edu.bit.ex.MemberInfo" scope="page"/> <!-- scope�� �������� ��ȿ ����(����) -->
		<jsp:setProperty name="member" property="name" value="ȫ�浿"/> <!-- member.setName("ȫ�浿"); -->
		<jsp:setProperty name="member" property="id" value="abc"/>
		<jsp:setProperty name="member" property="pw" value="1234"/>
		
		�̸�: <jsp:getProperty name="member" property="name" /><br /> 
		���̵�: <jsp:getProperty name="member" property="id" /><br /> 
		��й�ȣ: <jsp:getProperty name="member" property="pw" /><br /> 
		
		<hr />
		<!-- EL -->
		<!-- getProperty�� EL�� �ٲ� setProperty�� �ؾ���... -->
		
		�̸�: ${ member.name }<br />
		���̵�: ${ member.id }<br />
		��й�ȣ: ${ member.pw }<br />
		
	</body>
</html>