<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	
	<body>
		<%!
			Connection connection;
			Statement statement;
			ResultSet resultSet;
			
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe"; // @localhost, ����Ŭ�� �ִ� IP
			String uid = "scott";
			String upw = "tiger";
			String query = "select * from emp";
		%>
		
		<%
			try {
				Class.forName(driver); // oracle.jdbc.driver.OracleDriver, ��ü�������ϰ� �����(static �Լ��̱� ������), ���� ��ü���� ���
				connection = DriverManager.getConnection(url, uid, upw); // jdbc:oracle:thin:@localhost:1521:xe
				statement = connection.createStatement();// query�� ����� ���� ��ü, ��ɹ�(sql-query(crud, dcl, dml, dbm)) ����
				resultSet = statement.executeQuery(query); // select * from emp, or statement.executeUpdate()
				
				while(resultSet.next()) {// row(��) ����ŭ ����.
					String name = resultSet.getString("ename"); // �÷�(column, ��)
					String job = resultSet.getString("job");
					String mgr = resultSet.getString("mgr");
					
					out.println("�̸�: " + name + ", ��å: " + job + ", �Ŵ���: " + mgr + "<br />");
				}
			} catch(Exception e) { // runtimeException ��ӹ޴� �� �ƴϸ� ������ try~catch�ؾ� ��.
			} finally {
				try {
					if(resultSet != null) resultSet.close();
					if(statement != null) statement.close();
					if(connection != null) connection.close();
				} catch(Exception e){}
			}
		%>
	</body>
</html>