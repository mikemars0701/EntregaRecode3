package com.spacebook.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spacebook.dao.PassageiroDAO;

import com.spacebook.model.Passageiro;


@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		try {
			PassageiroDAO passageiroDAO = new PassageiroDAO();
			Passageiro passageiro = passageiroDAO.findPassageiro(id);

			req.setAttribute("passageiro", passageiro);

			RequestDispatcher rd = req.getRequestDispatcher("update.jsp");
			rd.forward(req, res);

			
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		try {
			Passageiro passageiro = new Passageiro();
			passageiro.setidPassageiro(Integer.parseInt(req.getParameter("id")));
			passageiro.setemailPassageiro(req.getParameter("email"));
			passageiro.setsenhaPassageiro(req.getParameter("senha"));
			passageiro.setnomePassageiro(req.getParameter("nome"));
			passageiro.setenderecoPassageiro(req.getParameter("endereco"));
			passageiro.setcpfPassageiro(req.getParameter("cpf"));
			passageiro.settelefonePassageiro(req.getParameter("telefone"));

			PassageiroDAO passageiroDAO = new PassageiroDAO();
			passageiroDAO.updatePassageiro(passageiro);

			res.sendRedirect("success.jsp");
		} catch (Exception e) {

		}

	}

}
