package org.zhaw.airticket;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public HelloServlet() {
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("hello my Friend: " + request.getRemoteUser());
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("This is the Test Servlet");

		Enumeration headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String headerName = (String) headerNames.nextElement();
			out.print("<br/>Header Name: <em>" + headerName);
			String headerValue = request.getHeader(headerName);
			out.print("</em>, Header Value: <em>" + headerValue);
			out.println("</em>");
		}
	}

}