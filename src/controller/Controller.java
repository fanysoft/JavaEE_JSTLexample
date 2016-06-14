package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Map<String, String> actionMap = new HashMap<>();

	
	public Controller() {
		super();

		actionMap.put("image", "/image.jsp");
		actionMap.put("rate", "/image.jsp");
		actionMap.put("home", "/home.jsp");

	}
	
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	private void doForward(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Servlet > doForward");
		 
		String action = request.getParameter("action");
		System.out.println("Servlet > action="+ action);

		// default
		if (action == null || !actionMap.containsKey(action))
			action = "home";

		request.getRequestDispatcher(actionMap.get(action)).forward(request, response);
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("Servlet > doGet");
		doForward(request, response);

	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("Servlet > doPost");
		doForward(request, response);

	}

}
