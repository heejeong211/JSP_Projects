package edu.bit.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.bit.dao.DDao;
import edu.bit.dto.DDto;

public class DIndexCommand implements ECommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		DDao dao = new DDao();
		ArrayList<DDto> dtos = dao.dept(); // list.do�� ���� list.jsp�� ���� �� �� ������?? request ��ü �ȿ� scope ����, ������ ������ 
		
		// �ٽ��ڵ�!!!!!!!!!
		request.setAttribute("dept", dtos); // list�� ���� dtos�� ù ��° �ּҸ� ������.

	}

}
