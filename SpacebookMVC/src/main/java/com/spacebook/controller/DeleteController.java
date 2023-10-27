package com.spacebook.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spacebook.dao.PassageiroDAO;




@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		try {
			PassageiroDAO passageiroDAO = new PassageiroDAO();
			passageiroDAO.deletePassageiro(id);
			
			res.sendRedirect("ReadController");
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		
	}

}
