<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPACEBOOK - Cadastro de Passageiros</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        h2 {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 50px;
        }
        form {
            max-width: 500px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        
        input {
            width: 100%;
            padding: 10px 1px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input[type="submit"] {
        	margin-top: 50px;
            background: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 15px;
            border-radius: 3px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
	
	<form action="CreateController" method="POST">
		<h2>SPACEBOOK</h2>
		<h2>Formulário de Registro de Passageiros</h2>
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required>
		<br><br>
		<label for="senha">Senha:</label>
		<input type="password" id="senha" name="senha" required>
		<br><br>
		<label for="nome">Nome:</label>
		<input type="text" id="nome" name="nome" required>
		<br><br>
		<label for="endereco">Endereço:</label>
		<input type="text" id="endereco" name="endereco" required>
		<br><br>
		<label for="cpf">CPF:</label>
		<input type="text" id="cpf" name="cpf" required>
		<br><br>
		<label for="telefone">Telefone:</label>
		<input type="tel" id="telefone" name="telefone" required>
		<br><br>
		
		<input type="submit" value="Registrar">
	</form>
</body>
</html>