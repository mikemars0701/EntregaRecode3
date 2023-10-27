<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPACEBOOK - Cadastro de Passageiros</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
	margin-bottom: 50px;
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
	<!-- Cabeçalho -->
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark text-light">
			<div class="container">
				<a class="navbar-brand" href="ReadController">SPACEBOOK system</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link"href="Cadastro.jsp">Novo Passageiro</a></li>
						<li class="nav-item"><a class="nav-link"href="ReadController">Lista de Passageiros</a></li>
						<li class="nav-item"><a class="nav-link" href="update.jsp">Atualizar Passageiro</a></li>
						
					</ul>
				</div>
			</div>
		</nav>
	</header>
	
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				
				<form class="mt-4 m-5"  action="UpdateController" method="post">
				<div class="form-group">
				<h2>Atualizar Passageiro</h2></div>
				<div class="form-group">
						<label for="nome">ID:</label> <input type="text"
							class="form-control" id="id" name="id" value="${passageiro.id}" required>
					</div>
					<div class="form-group">
						<label for="nome">Email:</label> <input type="text"
							class="form-control" id="email" name="email" value="${passageiro.email}" required>
					</div>
					<div class="form-group">
						<label for="login">Senha:</label> <input type="password"
							class="form-control" id="senha" name="senha" value="${passageiro.senha}" required>
					</div>
					<div class="form-group">
						<label for="senha">Nome:</label> <input type="text"
							class="form-control" id="nome" name="nome" value="${passageiro.nome}" required>
					</div>
					<div class="form-group">
						<label for="senha">Endereco:</label> <input type="text"
							class="form-control" id="endereco" name="endereco" value="${passageiro.endereco}" required>
					</div>
					<div class="form-group">
						<label for="senha">Cpf:</label> <input type="text"
							class="form-control" id="cpf" name="cpf" value="${passageiro.cpf}" required>
					</div>
					<div class="form-group">
						<label for="senha">Telefone:</label> <input type="text"
							class="form-control" id="telefone" name="telefone" value="${passageiro.telefone}" required>
					</div>
					
					<div class="form-group"><button type="submit" class="btn btn-primary">Atualizar</button></div>
				</form>
			</div>
		</div>
	</div>

	<!-- Rodapé -->
	<footer class="bg-dark text-light text-center py-3 fixed-bottom">
		&copy; SPACEBOOK 2023 Todos os direitos reservados. </footer>
	<!-- Inclua os scripts do Bootstrap via CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>