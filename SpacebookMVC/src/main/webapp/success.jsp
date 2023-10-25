<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SPACEBOOK - Sucesso</title>
    <style>
     body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        
        form {
            max-width: 500px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
       input {
            width: 100%;
            padding: 10px 1px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input[type="button"] {
        	margin-top: 50px;
            background: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 15px;
            border-radius: 3px;
            cursor: pointer;
        }
        input[type="button"]:hover {
            background: #0056b3;
        }
        
        </style>
</head>
<body>
<form> 
    <h1>Passageiro criado com sucesso!</h1>
    <p>Seu passageiro foi registrado com sucesso. Você pode voltar para a página de cadastro.</p>
   <input type="button" value="Voltar para o cadastro" onclick="window.location.href='Cadastro.jsp';">

    </form>
</body>
</html>