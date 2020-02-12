package edu.bit.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.bit.command.BCommand;
import edu.bit.command.BListCommand;
import edu.bit.command.BWriteCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.do")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDO(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDO(request,response);
	}
	
	protected void actionDO(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo!");
		
		request.setCharacterEncoding("EUC-KR");
		
		String viewPage = null;
		BCommand command = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		System.out.println("테스트 URI: " + uri + ":" + conPath + ":" + com); // 테스트용
		
		if(com.equals("/write_view.do")) {
			
			viewPage = "write_view.jsp";
			
		} else if(com.equals("/write.do")) { // FrontController 에서 Command 객체 생성 하는 것.
			
			command = new BWriteCommand(); // 다형성 적용. 폴리모피즘.
			command.execute(request, response);
			
			viewPage = "list.do"; // 목록보기 파일!!
			
		}else if(com.equals("/list.do")) {
			command = new BListCommand();
			command.execute(request, response);
			
			viewPage = "list.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); // viewPage에서 .do url이 오면 이 서블릿을 한 번 더 탐.
		dispatcher.forward(request, response);
		
	}

}
