package com.spacebook.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spacebook.dao.PassageiroDAO;

import com.spacebook.model.Passageiro;


@WebServlet("/CreateController")
public class CreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
			
				//CREATE
				Passageiro passageiro = new Passageiro();
				
				passageiro.setemailPassageiro(req.getParameter("email"));
				passageiro.setsenhaPassageiro(req.getParameter("senha"));
				passageiro.setnomePassageiro(req.getParameter("nome"));
				passageiro.setcpfPassageiro(req.getParameter("cpf"));
				passageiro.setenderecoPassageiro(req.getParameter("endereco"));
				passageiro.settelefonePassageiro(req.getParameter("telefone"));
				
				try {
					PassageiroDAO passageiroDAO = new PassageiroDAO();
					passageiroDAO.createPassageiro(passageiro);
					
					res.sendRedirect("success.jsp");
				}catch (Exception e) {
				
				e.printStackTrace();
				
				
		}
				
		
		
		
	}

}
