package edu.bit.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormEx
 */
@WebServlet("/FormEx")
public class FormEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
		
		String id = getServletContext().getInitParameter("id");
		String pw = getServletContext().getInitParameter("pw");
		String path = getServletContext().getInitParameter("path");
		
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html><head></head><body>");
		writer.println("ID: " + id + "<br />");
		writer.println("PASSWORD: " + pw + "<br />");
		writer.println("path: " + path + "<br />");
		writer.println("</body></html>");
		
		writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		
		req.setCharacterEncoding("EUC-KR"); // �ѱ�ó�� ���
		
		String id = req.getParameter("id"); // �Ķ���� �ȿ� ������ �ֵ��� html���Ͽ��� name �Ӽ��� �����ش�.
		String pw = req.getParameter("pw");
		
		String[] hobbys = req.getParameterValues("hobby"); // checkbox, �ߺ������� �����ؼ� �迭�� ����.
		
		String major = req.getParameter("major");
		String protocol = req.getParameter("protocol");
		////////////////////////////////////////////////////////
		
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html><head></head><body>");
		writer.println("ID: " + id + "<br />");
		writer.println("PASSWORD: " + pw + "<br />");
		writer.println("���: " + Arrays.toString(hobbys) + "<br />");
		writer.println("����: " + major + "<br />");
		writer.println("��������: " + protocol);
		writer.println("</body></html>");
		
		writer.close();
	}

}
