package com.spacebook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.spacebook.database.DatabaseConnection;
import com.spacebook.model.Passageiro;





public class PassageiroDAO {

	private static String sql;

	private final Connection connection;

	public PassageiroDAO() {
		this.connection = DatabaseConnection.createConnection();
		
	}
	

	// CREATE
	public void createPassageiro(Passageiro passageiro) {

		sql = "INSERT INTO passageiro (emailPassageiro, senhaPassageiro, nomePassageiro, enderecoPassageiro, cpfPassageiro, telefonePassageiro) VALUES (?,?,?,?,?,?)";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setString(1, passageiro.getemailPassageiro());
			stmt.setString(2, passageiro.getsenhaPassageiro());
			stmt.setString(3, passageiro.getnomePassageiro());
			stmt.setString(4, passageiro.getenderecoPassageiro());
			stmt.setString(5, passageiro.getcpfPassageiro());
			stmt.setString(6, passageiro.gettelefonePassageiro());

			stmt.executeUpdate();
			System.out.println("[LOG] Passageiro criado com sucesso! " + "Nome: " + passageiro.getnomePassageiro() + " e " +
					"CPF: " + passageiro.getcpfPassageiro());
		} catch (SQLException e) {
			System.out.println("[LOG] Não foi possivel criar o passageiro. Mensagem: " + e.getMessage());
		}
	}

	
	
	public Passageiro findPassageiro(int id) {
		Passageiro passageiro = null;
		sql = "SELECT * FROM passageiro WHERE id=?";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

			stmt.setInt(1, id);
			ResultSet r = stmt.executeQuery();

			if (r.next()) {
				passageiro = new Passageiro();
				passageiro.setidPassageiro(r.getInt("id"));
				passageiro.setemailPassageiro(r.getString("emailPassageiro"));
				passageiro.setsenhaPassageiro(r.getString("senhaPassageiro"));
				passageiro.setnomePassageiro(r.getString("nomePassageiro"));
				passageiro.setenderecoPassageiro(r.getString("enderecoPassageiro"));
				passageiro.setcpfPassageiro(r.getString("cpfPassageiro"));
				passageiro.settelefonePassageiro(r.getString("telefonePassageiro"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return passageiro;
	}
	
	// READ

	public List<Passageiro> readPassageiros() {

		String sql = "SELECT * FROM passageiro";

		List<Passageiro> passageiros = new ArrayList<Passageiro>();

		ResultSet r = null;

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			r = stmt.executeQuery();

			while (r.next()) {
				Passageiro passageiro = new Passageiro();
				passageiro = new Passageiro();
				passageiro.setidPassageiro(r.getInt("idPassageiro"));
				passageiro.setemailPassageiro(r.getString("emailPassageiro"));
				passageiro.setsenhaPassageiro(r.getString("senhaPassageiro"));
				passageiro.setnomePassageiro(r.getString("nomePassageiro"));
				passageiro.setenderecoPassageiro(r.getString("enderecoPassageiro"));
				passageiro.setcpfPassageiro(r.getString("cpfPassageiro"));
				passageiro.settelefonePassageiro(r.getString("telefonePassageiro"));

				passageiros.add(passageiro);
			}
		} catch (Exception e) {

			e.printStackTrace();

		}
		return passageiros;

	}
	
	
	
	//UPDATE
	public void updatePassageiro (Passageiro passageiro) {
		sql="UPDATE passageiro SET emailPassageiro = ?, senhaPassageiro = ?,nomePassageiro = ?, enderecoPassageiro = ?, cpfPassageiro = ?, telefonePassageiro = ? WHERE idPassageiro = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setString(1, passageiro.getemailPassageiro());
			stmt.setString(2, passageiro.getsenhaPassageiro());
			stmt.setString(3, passageiro.getnomePassageiro());
			stmt.setString(4, passageiro.getenderecoPassageiro());
			stmt.setString(5, passageiro.getcpfPassageiro());
			stmt.setString(6, passageiro.gettelefonePassageiro());
			stmt.setInt(7, passageiro.getidPassageiro());
			
			stmt.executeUpdate();
			System.out.println("[LOG] Passageiro atualizado com sucesso! " + "Email: " + passageiro.getemailPassageiro() + "Senha: " + passageiro.getsenhaPassageiro() + "Nome: " + passageiro.getnomePassageiro() +
					"CPF: " + passageiro.getcpfPassageiro() + "Endereço: " + passageiro.getenderecoPassageiro() + "Telefone: " + passageiro.gettelefonePassageiro());
			
		} catch (SQLException e) {
			System.out.println("[LOG] Não foi possível atualizar o passageiro. Mensagem: " + e.getMessage());
		}
		
	}

	//DELETE
	public void deletePassageiro (int id) {
		sql = "DELETE FROM passageiro WHERE idPassageiro = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setInt(1, id);
			stmt.executeUpdate();
			System.out.println("[LOG] Passageiro DELETADO com sucesso!");
		}catch (SQLException e) {
			System.out.println("[LOG] Não foi possível deletar o passageiro. Mensagem: " + e.getMessage());
			
		}
	}


}

