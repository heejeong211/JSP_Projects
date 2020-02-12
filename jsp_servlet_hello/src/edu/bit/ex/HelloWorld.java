package edu.bit.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HellowWorld
 */
@WebServlet("/HelloWorld") // URL에 이걸 치고 들어오면 HelloWorld 실행됨.
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWorld() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    // request객체 안에 웹브라우저 정보와 IP등등이 들어가 있음. response 요청에 대한 응답
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Hello World!!!!!!!!!!"); // 이건 콘솔에 뿌림
		
		response.setContentType("text/html; charset=euc-kr"); 
		PrintWriter writer = response.getWriter(); // PrintWriter도 하나의 문자Stream이다.
		
		writer.println("<html>"); // 이건 웹브라우저한테 뿌림.
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>Hello World!!!!!!!</h1>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
