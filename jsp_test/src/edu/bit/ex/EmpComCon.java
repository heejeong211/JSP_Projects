package edu.bit.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmpComCon
 */
@WebServlet("*.do")
public class EmpComCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpComCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo");
		
		String uri = request.getRequestURI();
		System.out.println("uri: " + uri);
		
		String conPath = request.getContextPath();
		System.out.println("conPath: " + conPath);
		
		String command = uri.substring(conPath.length());
		System.out.println("command: " + command);
		
		if(command.equals("/empAll.do")) {
			response.setContentType("text/html; charset=EUC-KR");
			PrintWriter writer = response.getWriter();
			writer.println("<html><head></head><body>");
			
			Service service = new EmpAllService(); // 부모-자식 관계
			ArrayList<EmpDtoCom> dtos = service.execute(request, response);
			
			for(int i = 0; i < dtos.size(); i++) {
				EmpDtoCom dto = dtos.get(i);
				String empno = dto.getEmpno();
				String ename = dto.getEname();
				String job = dto.getJob();
				String mgr = dto.getMgr();
				String hiredate = dto.getHiredate();
				String sal = dto.getSal();
				String comm = dto.getComm();
				String deptno = dto.getDeptno();
				
				writer.println(empno + ", " + ename + ", " + job + ", " + mgr + ", " + hiredate + ", " + sal + ", " + comm + ", " + deptno);
				writer.println("<hr />");
			}
			
			writer.println("</body></html>");
		}
	}

}
