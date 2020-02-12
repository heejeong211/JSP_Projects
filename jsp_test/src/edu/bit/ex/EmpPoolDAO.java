package edu.bit.ex;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

// Data Access Object // 目池记 钱 荤侩
public class EmpPoolDAO {
	
	private DataSource dataSource; // 目池记 钱
	
	public EmpPoolDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<EmpDTO> empSelect() { 
		
		ArrayList<EmpDTO> dtos = new ArrayList<EmpDTO>();
		
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from emp");
			
			while(resultSet.next()) {
				String empno = resultSet.getString("empno");
				String ename = resultSet.getString("ename");
				String job = resultSet.getString("job");
				String mgr = resultSet.getString("mgr");
				String hiredate = resultSet.getString("hiredate");
				String sal = resultSet.getString("sal");
				String comm = resultSet.getString("comm");
				String deptno = resultSet.getString("deptno");
				
				EmpDTO dto = new EmpDTO(empno, ename, job, mgr, hiredate, sal, comm, deptno);
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
