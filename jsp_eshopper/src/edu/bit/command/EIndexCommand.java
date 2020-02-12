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
		ArrayList<EDto> dtos = dao.index(); // list.do�� ���� list.jsp�� ���� �� �� ������?? request ��ü �ȿ� scope ����, ������ ������ 
		
		// �ٽ��ڵ�!!!!!!!!!
		request.setAttribute("index", dtos); // list�� ���� dtos�� ù ��° �ּҸ� ������.

	}

}
