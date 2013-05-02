<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.zhaw.airticket.database.*"%>

<%
	int ticketId = -1;
	int reihenr = -1;
	int sitznr = -1;

	try { 
		 ticketId = Integer.parseInt(request.getParameter("ticketId"));
		 reihenr = Integer.parseInt(request.getParameter("reihenr")) + 1;
		 sitznr = Integer.parseInt(request.getParameter("sitznr")) + 1;
	} catch (NumberFormatException e) {
		//TODO
	}
	
	if (ticketId >= 0 && reihenr >= 0 && sitznr >= 0){
		Database database = new Database();
		database.updateTicket(ticketId, reihenr, sitznr);
		
		//force refresh
		session.setAttribute("Benutzer", null);
		response.sendRedirect(request.getContextPath()+"/benutzer_konto/konto.jsp");
		
	} else {
	
		//force refresh
		session.setAttribute("Benutzer", null);
		response.sendRedirect(request.getContextPath()+"/benutzer_konto/konto.jsp");
	
	}
	%>
