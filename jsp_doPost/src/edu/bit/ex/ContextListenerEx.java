package edu.bit.ex;

import java.io.IOException;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebListener;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContextListenerEx
 */
@WebListener
public class ContextListenerEx implements ServletContextListener {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContextListenerEx() {
        
    }
    
    @Override
    public void contextDestroyed(ServletContextEvent arg0) { // ≈Ëƒπ¿Ã »£√‚«ÿ¡‹. Ω««‡ ¡ﬂ¡ˆ Ω√≈∞∏È ≥™ø».
    	System.out.println("contextDestroyed");
    }
    
    @Override
    public void contextInitialized(ServletContextEvent arg0) { // ≈Ëƒπ¿Ã »£√‚«ÿ¡‹.
    	System.out.println("contextInitialized");
    }
	
}
