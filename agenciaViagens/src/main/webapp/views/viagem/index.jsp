<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Viagem</title>
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
	<h1 class='text-center'>VIAGEM</h1>
		<div class="p-4">
			<a  href="get" class="btn btn-primary mb-2 botao1"> Nova
				Viagem </a>
			<table class="table table-responsive table-hover">
				<thead class="table-dark">
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Valor da Diaria</th>
						<th scope="col">Data Ida</th>
						<th scope="col">Data Volta</th>
						<th scope="col">Cliente</th>
						<th scope="col">Destino</th>
						<th scope="col">Ações</th>
					</tr>
				</thead>
				<tbody>

					<jstl:forEach items="${listaViagem}" var="viagem">
						<tr>
							<td>${viagem.id}</td>
							<td><fmt:formatNumber value="${viagem.valorDiaria}" type="currency"/></td>
							<td>${viagem.dataIda}</td>
							<td>${viagem.dataVolta}</td>
							<td>${viagem.cliente.getNome()}</td>
							<td>${viagem.destino.getCidade()}</td>
							<td>
								<a href="viagem-load?id=${viagem.id}" class="btn btn-success">Editar</a> 
								<a href="viagem-delete?id=${viagem.id}" class="btn btn-danger" onclick="return confirm('Deseja excluir a Viagem ${viagem.id} ?')">Excluir</a>
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