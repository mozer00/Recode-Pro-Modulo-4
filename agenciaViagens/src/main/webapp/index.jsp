<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Viagens - Home</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
	<!-- Navbar -->

	<jsp:include page="./components/navbar.jsp">
		<jsp:param name="home" value="./index.jsp" />
		<jsp:param name="cadastro" value="cadastro" />
		<jsp:param name="lugares" value="lugares" />
		<jsp:param name="promocao" value="promocao" />
		<jsp:param name="contato" value="contato" />
	</jsp:include>



	<!-- Conteúdo da Página Home -->
	<div class="foto-home position-relative">
		<!-- Inicio da sessão banner -->
		<section class="banner">
			<div class="container py-5 text-light">
				<form
					class="z-10 position-relative row g-3 p-3 mt-2 rounded-3 bg-light text-dark">
					<div class="col-md-4">
						<label for="validation01" class="form-label">De onde você
							está saindo?</label> <input type="search" class="form-control"
							id="validation01" placeholder="Busque um aeroporto">
					</div>
					<div class="col-md-4">
						<label for="validation02" class="form-label">Qual o seu
							destino?</label> <input type="search" class="form-control"
							id="validation02" placeholder="Indo pra onde?">
					</div>
					<div class="col-md-4">
						<label for="validationdate" class="form-label">Data de
							partida</label> <input type="date" class="form-control"
							id="validationdate" aria-describedby="inputGroupPrepend">
					</div>
					<div class="col-md-6">
						<label for="validation03" class="form-label">Data de
							retorno</label> <input type="date" class="form-control" id="validation03">
					</div>
					<div class="col-md-3">
						<label for="validation04" class="form-label">Passageiros</label> <input
							type="number" min="1" max="4" maxlength="1" class="form-control"
							id="validation04" placeholder="N° passageiros">
					</div>
					<div class="col-md-12 d-flex justify-content-end">
						<button class="btn btn-success fw-bold px-5 " type="submit">Pesquisar</button>
					</div>
				</form>
			</div>
		</section>
	</div>

	<!--Final da sessão Banner-->


	<!-- Cards de Destinos -->
	<div class="row container">
		<div class="col-sm-4">
			<div class="card">
				<img src="./assets/img/portugal.jpg" class="card-img-top"
					alt="Destino 1">
				<div class="card-body">
					<h5 class="card-title fw-bold">Portugal</h5>
					<hr>
					<p class="card-text ">Indicado para viajantes que desejam
						conhecer Portugal.</p>
					<hr>
					<p class="card-text fw-bold">
						de <s class="text-danger">R$ 2.734,00</s>
					</p>
					<p class="card-text fw-bold">
						por <span class="text-success fs-3">R$ 2.490,00</span> <span
							class="text-secundary">ou 10x de R$ 249,00</span>
					</p>
					<a href="./src/pages/destino/index.html" class="btn btn-primary">Saiba
						mais</a>
				</div>
			</div>
		</div>

		<div class="col-sm-4">
			<div class="card">
				<img src="./assets/img/Andorra.jpg" class="card-img-top"
					alt="Destino 2">
				<div class="card-body">
					<h5 class="card-title fw-bold">Andorra</h5>
					<hr>
					<p class="card-text ">Indicado para viajantes que desejam
						conhecer Andorra.</p>
					<hr>
					<p class="card-text fw-bold">
						de <s class="text-danger">R$ 4.741,00</s>
					</p>
					<p class="card-text fw-bold">
						por <span class="text-success fs-3">R$ 3.900,00</span> <span
							class="text-secundary">ou 10x de R$ 390,00</span>
					</p>
					<a href="./src/pages/promocoes/index.html" class="btn btn-primary">Saiba
						mais</a>
				</div>
			</div>
		</div>

		<div class="col-sm-4">
			<div class="card">
				<img src="./assets/img/machu.webp" class="card-img-top"
					alt="Destino 3">
				<div class="card-body">
					<h5 class="card-title fw-bold">Machu Picchu</h5>
					<hr>
					<p class="card-text ">Indicado para viajantes que desejam
						conhecer Machu Picchu.</p>
					<hr>
					<p class="card-text fw-bold">
						de <s class="text-danger">R$ 2.400,00</s>
					</p>
					<p class="card-text fw-bold">
						por <span class="text-success fs-3">R$ 1.990,00</span> <span
							class="text-secundary">ou 10x de R$ 199,00</span>
					</p>
					<a href="./src/pages/promocoes/index.html" class="btn btn-primary">Saiba
						mais</a>
				</div>
			</div>
		</div>
	</div>
	<br>
	<footer class="footer text-center ">
		<p>&copy; 2023 Copyright: Viagens</p>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>