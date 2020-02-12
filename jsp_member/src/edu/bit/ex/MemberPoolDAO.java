package edu.bit.ex;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

// Data Access Object // 커넥션 풀 사용
public class MemberPoolDAO {
	
//	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
//	private String uid = "scott";
//	private String upw = "tiger";
	
	private DataSource dataSource; // 커넥션 풀
	
	public MemberPoolDAO() {
		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle"); // Java Naming and Directory interface 명명 및 디렉토리 서비스에 접근하기 위한 API이다.
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MemberDTO> memberSelect() { // DAO에서 오라클을 통해 DTO정보 가져옴.
		
		ArrayList<MemberDTO> dtos = new ArrayList<MemberDTO>();
		
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		try {
//			connection = DriverManager.getConnection(url, uid, upw);
			connection = dataSource.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from member");
			
			while(resultSet.next()) {
				String name = resultSet.getString("name");
				String id = resultSet.getString("id");
				String pw = resultSet.getString("pw");
				String phone1 = resultSet.getString("phone1");
				String phone2 = resultSet.getString("phone2");
				String phone3 = resultSet.getString("phone3");
				String gender = resultSet.getString("gender");
				
				MemberDTO dto = new MemberDTO(name, id, pw, phone1, phone2, phone3, gender);
				dtos.add(dto);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(resultSet != null) resultSet.close();
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			} catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dtos;
	}
}
