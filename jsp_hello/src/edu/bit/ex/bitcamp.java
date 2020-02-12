package edu.bit.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class bitcamp
 */
@WebServlet("/bitcamp")
public class bitcamp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bitcamp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html; charset=euc-kr"); 
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<style>");
		writer.println("p1 {\r\n" + 
				"				color:#ffd800;\r\n" + 
				"			}");
		writer.println("p2 {\r\n" + 
				"				background-color:#FF0000;\r\n" + 
				"			}");
		writer.println("</style>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<p1>안녕하세요.</p1><br />");
		writer.println("<p2>비트캠프입니다.</p2>");
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
