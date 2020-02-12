package edu.bit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import edu.bit.dto.BDto;

public class BDao {
	DataSource dataSource;
	
	public BDao() {
		try {
			Context context = new InitialContext(); // server에서 context.xml에 있는 정보를 가져와서 메모리에 올리는 것.
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void write(String bName, String bTitle, String bContent) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "insert into mvc_board (bId, bName, bTitle, bContent, bHit, bGroup, bStep, bIndent) values (mvc_board_seq.nextval, ?, ?, ?, 0, mvc_board_seq.currval, 0, 0 )";
			// mvc_board_seq.nextval 오라클에서만 있음. my-sql은 없음. sequence가 가지고 있는 글번호 숫자를 글이 추가 될 때 마다 자동으로 증가시켜 줌. mvc_board_seq.currval 현재 value. 컬럼명과 values는 순서 맞춰 줘야 함.
			
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			
			int rn = preparedStatement.executeUpdate();
			
			if(rn == 1 ) { // 디버깅용
				System.out.println("정상");
			} else {
				System.out.println("비정상 처리");
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}


	public ArrayList<BDto> list() {
		ArrayList<BDto> dtos = new ArrayList<>();
		
		Connection con = null;
		PreparedStatement prstm = null;
		ResultSet res = null;
		
		try {
			
			con = dataSource.getConnection();
			
			String query = "select * from mvc_board order by bGroup desc, bStep asc"; // 시간 순으로 게시글, 댓글 나열 
			prstm = con.prepareStatement(query);
			res = prstm.executeQuery();
			
			while(res.next()) {
				int bId = res.getInt("bId");
				String bName = res.getString("bName");
				String bTitle = res.getString("bTitle");
				String bContent = res.getString("bContent");
				
				Timestamp bDate = res.getTimestamp("bDate"); // 데이터 타입 주의!!!!
				
				int bHit = res.getInt("bHit");
				int bGroup = res.getInt("bGroup");
				int bStep = res.getInt("bStep");
				int bIndent = res.getInt("bIndent");
				
				BDto dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(res != null) res.close();
				if(prstm != null) prstm.close();
				if(con != null) con.close();
			} catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dtos;
	}

	
}
