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
			String url = "jdbc:oracle:thin:@localhost:1521:xe"; // @localhost, 오라클이 있는 IP
			String uid = "scott";
			String upw = "tiger";
			String query = "select * from emp";
		%>
		
		<%
			try {
				Class.forName(driver); // oracle.jdbc.driver.OracleDriver, 객체생성안하고 써먹음(static 함수이기 때문에), 동적 객체생성 방법
				connection = DriverManager.getConnection(url, uid, upw); // jdbc:oracle:thin:@localhost:1521:xe
				statement = connection.createStatement();// query를 만들기 위한 객체, 명령문(sql-query(crud, dcl, dml, dbm)) 선언
				resultSet = statement.executeQuery(query); // select * from emp, or statement.executeUpdate()
				
				while(resultSet.next()) {// row(행) 수만큼 돌림.
					String name = resultSet.getString("ename"); // 컬럼(column, 열)
					String job = resultSet.getString("job");
					String mgr = resultSet.getString("mgr");
					
					out.println("이름: " + name + ", 직책: " + job + ", 매니저: " + mgr + "<br />");
				}
			} catch(Exception e) { // runtimeException 상속받는 애 아니면 무조건 try~catch해야 함.
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