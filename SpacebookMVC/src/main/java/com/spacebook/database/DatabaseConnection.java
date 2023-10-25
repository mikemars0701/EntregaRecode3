package com.spacebook.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

	private static final String url = "jdbc:mysql://localhost:3306/spacebook";

	private static final String user = "root";

	private static final String password = "root123";

	public static Connection createConnection() {

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver encontrado!");

		} catch (ClassNotFoundException e) {

			System.out.println("Driver não encontrado! Mensagem: " + e.getMessage());

		}

		try {
			Connection connection = DriverManager.getConnection(url, user, password);
			System.out.println("Conectado com sucesso!");

			return connection;
		} catch (SQLException e) {
			System.out.println("Não foi possivel conectar ao banco! Mensagem: " + e.getMessage());
		}
		return null;

	}
}