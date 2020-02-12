<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%!
		Connection connection;
		PreparedStatement preparedStatement ;
		ResultSet resultSet;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "scott";
		String upw = "tiger";
		%>
		<%
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, uid, upw); // 이 때 시간에 제일 많기 걸림. 메모리 많이 잡아 먹고, cost가 많이 소모됨. 서버 죽을 때 여기서 대부분 죽음...
			String query = "insert into member (id, pw, name) values (?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			
			int n;
			preparedStatement.setString(1, "abc");
			preparedStatement.setString(2, "123");
			preparedStatement.setString(3, "홍길동");
			
			n = preparedStatement.executeUpdate();
			
			preparedStatement.setString(1, "abc");
			preparedStatement.setString(2, "1234");
			preparedStatement.setString(3, "홍두깨");
			
			n = preparedStatement.executeUpdate();
			
			if(n == 1) {
				out.println("insert success");
			} else {
				out.println("insert fail");
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			} catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		%>
	</body>
</html>

