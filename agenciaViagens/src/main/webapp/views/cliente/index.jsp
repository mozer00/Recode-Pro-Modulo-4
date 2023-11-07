<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cliente</title>
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
	<section class="container">
	<h1 class='text-center'>CLIENTE</h1>
		<div class="p-4">
			<a href="cliente-load?id=0"
				class="btn btn-primary mb-2 botao1"> Novo Cliente </a>
			<table class="table table-responsive table-hover">
				<thead class="table-dark">
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Nome</th>
						<th scope="col">CPF</th>
						<th scope="col">Telefone</th>
						<th scope="col">Ações</th>
					</tr>
				</thead>
				<tbody>

					<jstl:forEach items="${listaCliente}" var="cliente">
						<tr>
							<td>${cliente.id}</td>
							<td>${cliente.nome}</td>
							<td>${cliente.cpf}</td>
							<td>${cliente.telefone}</td>
							<td>
							<a href="cliente-load?id=${cliente.id}"	class="btn btn-success">Editar</a> 
							<a href="cliente-delete?id=${cliente.id}" class="btn btn-danger" onclick="return confirm('Deseja excluir o Cliente ${cliente.nome} ?')">Excluir</a>
							</td>
						</tr>
					</jstl:forEach>

				</tbody>
			</table>
		</div>

	</section>


	<br>
  <footer class=" footer text-center ">
    <p>&copy; 2023 Copyright: Viagens</p>

    <a href="cadastro" class="btn btn-outline-success">Voltar</a>
  </footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>