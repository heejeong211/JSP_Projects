package edu.bit.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.bit.dao.EDao;
import edu.bit.dto.EDto;

public class EIndexCommand implements ECommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		EDao dao = new EDao();
		ArrayList<EDto> dtos = dao.index(); // list.do로 가면 list.jsp가 전달 될 수 있을까?? request 객체 안에 scope 범위, 응답할 때까지 
		
		// 핵심코드!!!!!!!!!
		request.setAttribute("index", dtos); // list에 대한 dtos의 첫 번째 주소를 가져옴.

	}

}
