<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Viagens - Cadastro</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./assets/css/style.css">
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

	<!-- Conteúdo da Página Cadastro -->
	<main>
		<div class="container">
			<div class=" d-flex justify-content-between flex-column flex-lg-row align-items-center">
				<div class="card text-center mb-3" style="width: 20rem;">
					<div class="card-body">
						<img src="./assets/img/negocios.png" class="card-img-top" alt="cliente">
						<h3 class="card-title fw-bold mt-3">Cliente</h3>
						<a href="cliente" class="btn btn-success mt-3 btn-block fw-bold">Listar/Cadastrar
							Cliente</a>
					</div>
				</div>

				<div class="card text-center mb-3" style="width: 20rem;">
					<div class="card-body">
						<img src="./assets/img/destino.png" class="card-img-top"
							alt="destino">
						<h3 class="card-title fw-bold mt-3">Destino</h3>
						<a href="destino" class="btn btn-success mt-3 btn-block fw-bold">Listar/Cadastrar
							Destino</a>
					</div>
				</div>

				<div class="card text-center mb-3" style="width: 20rem;">
					<div class="card-body">
						<img src="./assets/img/mala.png" class="card-img-top" alt="viagem">
						<h3 class="card-title fw-bold mt-3">Viagem</h3>
						<a href="viagem" class="btn btn-success btn-block mt-3 fw-bold">Listar/Cadastrar
							Viagem</a>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- Rodapé -->
	<br>
	<br>
	<footer class=" footer text-center ">
		<p>&copy; 2023 Copyright: Viagens</p>

		<a href="index.jsp" class="btn btn-outline-success">Voltar a Home</a>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>