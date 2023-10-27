package com.spacebook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spacebook.dao.PassageiroDAO;

import com.spacebook.model.Passageiro;

@WebServlet("/ReadController")
public class ReadController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		try {
			PassageiroDAO passageiroDAO = new PassageiroDAO();
			List<Passageiro> passageiros = passageiroDAO.readPassageiros();
			req.setAttribute("passageiros", passageiros);
			
			RequestDispatcher rd = req.getRequestDispatcher("listar.jsp");
			rd.forward(req, res);

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}

}
