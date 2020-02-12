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
 * Servlet implementation class FrontControl
 */
@WebServlet("*.do")
public class FrontControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontControl() {
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
		
		if(command.equals("/insert.do")) {
			System.out.println("insert");
			System.out.println("-------------");
		} else if(command.equals("/update.do")) {
			System.out.println("update");
			System.out.println("-------------");
		} else if(command.equals("/select.do")) {
			System.out.println("select");
			System.out.println("-------------");
		} else if(command.equals("/delect.do")) {
			System.out.println("delect");
			System.out.println("-------------");
		} else if(command.equals("/membersAll.do")) {
			response.setContentType("text/html; charset=EUC-KR");
			PrintWriter writer = response.getWriter();
			writer.println("<html><head></head><body>");
			
			// command pattern임. interface로 묶어 준 것.
			Service service = new MembersAllService(); // 부모-자식 관계
			ArrayList<MemberDto> dtos = service.execute(request, response);
			
			for(int i = 0; i < dtos.size(); i++) {
				MemberDto dto = dtos.get(i);
				String id = dto.getId();
				String pw = dto.getPw();
				String name = dto.getName();
				
				writer.println(id + ", " + pw + ", " + name);
				writer.println("<hr />");
			}
			
			writer.println("</body></html>");
		}
	}
}
