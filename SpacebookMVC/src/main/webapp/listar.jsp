<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Clientes</title>
<!-- Inclua o link para o Bootstrap via CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
	
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
<body class="text-center">
    <!-- Cabeçalho -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark text-light">
            <div class="container">
                <a class="navbar-brand" href="ReadController">SPACEBOOK system</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
	<h1 class="mt-5">Lista de Passageiros</h1>
	<div class="container mt-5" style="margin-bottom: 100px;">
	<a href="./Cadastro.jsp" class="btn btn-primary mb-5">Criar novo</a>
		<table class="table table-bordered justify-content-center">
			<thead>
				<tr>
					<th>ID</th>
					<th>Email</th>
					<th>Senha</th>
					<th>Nome</th>
					<th>Endereco</th>
					<th>Cpf</th>
					<th>Telefone</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${passageiros}" var="passageiro">
					<tr>
						<td>${passageiro.idPassageiro}</td>
						<td>${passageiro.emailPassageiro}</td>
						<td>${passageiro.senhaPassageiro}</td>
						<td>${passageiro.nomePassageiro}</td>
						<td>${passageiro.enderecoPassageiro}</td>
						<td>${passageiro.cpfPassageiro}</td>
						<td>${passageiro.telefonePassageiro}</td>
						 <td>
							<a href="UpdateController?id=${passageiro.idPassageiro}" class="btn btn-success">Editar</a></td>
							<td><a href="DeleteController?id=${passageiro.idPassageiro}" class="btn btn-danger" onclick="return confirm('Tem certeza que deseja excluir este passageiro?');">Excluir</a>
						</td> 
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	 <!-- Rodapé -->
    <footer class="bg-dark text-light text-center py-3 fixed-bottom">
        &copy; SPACEBOOK 2023 Todos os direitos reservados.
    </footer>
	<!-- Inclua os scripts do Bootstrap via CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
</body>
</html>