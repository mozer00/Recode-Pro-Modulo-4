<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Criar Viagem</title>
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
		<form action="viagem-create">
			<h2 class="text-center">Criar</h2>
			<div class="form-group mb-3">
				<label for="valorDiaria" class="form-label">Valor da Diaria</label>
				<input type="number" id="valorDiaria" name="valorDiaria"
					class="form-control" value="" step='0.01' required />
			</div>

			<div class="form-group mb-3">
				<label for="dataIda" class="form-label">Data Ida</label> <input
					type="date" id="dataIda" name="dataIda" class="form-control"
					value="" required />
			</div>

			<div class="form-group mb-3">
				<label for="dataVolta" class="form-label">Data Volta</label> <input
					type="date" id="dataVolta" name="dataVolta" class="form-control"
					value="" required />
			</div>
			<div class="form-group mb-3">
				<label for="cliente" class="form-label">Cliente</label> <select
					id="cliente" name="cliente_id" class="form-control"><option
						value="DEFAULT">Escolha o Cliente</option>
					<jstl:forEach items="${listaCliente}" var="cliente">
						<option value="${cliente.id}">${cliente.nome}</option>
					</jstl:forEach>
				</select>
			</div>
			<div class="form-group mb-3">
				<label for="destino" class="form-label">Destino</label> <select
					id="destino" name="destino_id" class="form-control"><option
						value="DEFAULT">Escolha o Destino</option>
					<jstl:forEach items="${listaDestino}" var="destino">
						<option value="${destino.id}">${destino.cidade}</option>
					</jstl:forEach>
				</select>
			</div>

			<button type="submit" class="btn btn-primary">Enviar</button>
			<a href="viagem" class="btn btn-danger" style="margin-left: 10px;">Cancelar</a>
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