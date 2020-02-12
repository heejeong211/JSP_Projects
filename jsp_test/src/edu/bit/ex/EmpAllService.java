package edu.bit.ex;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmpAllService implements Service {

	@Override
	public ArrayList<EmpDtoCom> execute(HttpServletRequest request, HttpServletResponse response) {
		EmpDaoCom dao = EmpDaoCom.getInstance();
		return dao.empAll();
	}

}
