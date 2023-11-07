<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Criar Cliente</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
	<!-- Navbar -->
	<jsp:include page="../../components/navbar.jsp">
		<jsp:param name="home" value="./index.jsp" />
		<jsp:param name="cadastro" value="cadastro" />
		<jsp:param name="lugares" value="lugares" />
		<jsp:param name="promocao" value="promocao" />
		<jsp:param name="contato" value="contato" />
	</jsp:include>

	<div class="container py-3">
		<form action="cliente-create">
			<h2 class="text-center">Criar</h2>
			<div class="form-group mb-3">
				<label for="nome" class="form-label">Nome</label> <input type="text"
					id="nome" name="nome" class="form-control" value="" required />
			</div>

			<div class="form-group mb-3">
				<label for="cpf" class="form-label">CPF</label> <input type="text"
					id="cpf" name="cpf" class="form-control" value="" required />
			</div>

			<div class="form-group mb-3">
				<label for="telefone" class="form-label">Telefone</label> <input
					type="text" id="telefone" name="telefone" class="form-control"
					value="" required />
			</div>

			<button type="submit" class="btn btn-primary">Enviar</button>
			<a href="cliente" class="btn btn-danger"
				style="margin-left: 10px;">Cancelar</a>
		</form>
	</div>

	<br>
  <footer class=" footer text-center ">
    <p>&copy; 2023 Copyright: Viagens</p>

    <a href="cadastro" class="btn btn-outline-success">Voltar</a>
  </footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>