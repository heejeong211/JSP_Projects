package edu.bit.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestObj
 */
@WebServlet("/RequestObj")
public class RequestObj extends HttpServlet { // RequestDispatcher 클래스 사용
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestObj() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		String id = (String)request.getAttribute("id");
		String pw = (String)request.getAttribute("pw");
		
		response.setContentType("text/jhtml; charset=EUC-KR");
		PrintWriter writer = response.getWriter();
		writer.println("<html><head></head><body>");
		writer.println("RequestObj" + "<hr />");
		writer.println("id: " + id + "<br />");
		writer.println("pw: " + pw);
		writer.println("</body></html>");
		
		
//		// RequestDispatcher 클래스 사용
//		request.setAttribute("id","abcde");
//		request.setAttribute("pw","1234");
//		
//		// RequestDispatcher 클래스 사용
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/dispatcher.jsp"); // "/dispatcher.jsp" 폴더명 혹은 파일명 경로를 적어줌.
//		dispatcher.forward(request, response);
	}
}
