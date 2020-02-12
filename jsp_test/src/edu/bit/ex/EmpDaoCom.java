package edu.bit.ex;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class EmpDaoCom { // 目池记 钱苞 command pattern 捞侩
	
	private static EmpDaoCom instance = new EmpDaoCom();
	
	private EmpDaoCom() {
	}
	
	public static EmpDaoCom getInstance() {
		return instance;
	}
	
public ArrayList<EmpDtoCom> empAll() {
		
		ArrayList<EmpDtoCom> dtos = new ArrayList<EmpDtoCom>();
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select * from emp";
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			System.out.println("============");
			while (rs.next()) {
				EmpDtoCom dto = new EmpDtoCom();
				dto.setEmpno(rs.getString("empno"));
				dto.setEname(rs.getString("ename"));
				dto.setJob(rs.getString("job"));
				dto.setMgr(rs.getString("mgr"));
				dto.setHiredate(rs.getString("hiredate"));
				dto.setSal(rs.getString("sal"));
				dto.setComm(rs.getString("comm"));
				dto.setDeptno(rs.getString("deptno"));
				dtos.add(dto);
			}
			System.out.println("--------------------------");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dtos;
		
	}
	
	private Connection getConnection() {
		
		Context context = null;
		DataSource dataSource = null; // 目池记 钱
		Connection connection = null;
		try {
			context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle"); // 目池记 钱
			connection = dataSource.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return connection;
	}
}
