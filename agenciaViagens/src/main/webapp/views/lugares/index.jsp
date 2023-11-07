<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Viagens - Lugares</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./views/lugares/index.css">
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

	<!-- Conteúdo da Página Destino -->
	<main>
		<section class="destinos">
			<div class="caixaDestino">
				<img src="./assets/img/portugal.jpg"> <br>
				<p class="cidade_destino">Portugal</p>
				<hr>
				<p class="cidade_descricao">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Officia, repellat.</p>
				<hr>
				<p class="valor">R$ 2.734,00</p>
			</div>
			<div class="caixaDestino">
				<img src="./assets/img/Andorra.jpg"> <br>
				<p class="cidade_destino">Andorra</p>
				<hr>
				<p class="cidade_descricao">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Officia, repellat.</p>
				<hr>
				<p class="valor">R$ 3.741,00</p>
			</div>
			<div class="caixaDestino">
				<img src="./assets/img/machu.webp"> <br>
				<p class="cidade_destino">Machu Picchu</p>
				<hr>
				<p class="cidade_descricao">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Officia, repellat.</p>
				<hr>
				<p class="valor">R$ 2.400,00</p>
			</div>
			<div class="caixaDestino">
				<img src="./assets/img/japao.webp"> <br>
				<p class="cidade_destino">Japão</p>
				<hr>
				<p class="cidade_descricao">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Officia, repellat.</p>
				<hr>
				<p class="valor">R$ 2.800,00</p>
			</div>
			<div class="caixaDestino">
				<img src="./assets/img/canada.jpg"> <br>
				<p class="cidade_destino">Canadá</p>
				<hr>
				<p class="cidade_descricao">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Officia, repellat.</p>
				<hr>
				<p class="valor">R$ 4.296,00</p>
			</div>
			<div class="caixaDestino">
				<img src="./assets/img/eua.webp"> <br>
				<p class="cidade_destino">Estados Unidos</p>
				<hr>
				<p class="cidade_descricao">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Officia, repellat.</p>
				<hr>
				<p class="valor">R$ 2.600,00</p>
			</div>
			<div class="caixaDestino">
				<img src="./assets/img/egito.jpg"> <br>
				<p class="cidade_destino">Egito</p>
				<hr>
				<p class="cidade_descricao">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Officia, repellat.</p>
				<hr>
				<p class="valor">R$ 3.500,00</p>
			</div>
			<div class="caixaDestino">
				<img src="./assets/img/gales.webp"> <br>
				<p class="cidade_destino">País de Gales</p>
				<hr>
				<p class="cidade_descricao">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Officia, repellat.</p>
				<hr>
				<p class="valor">R$ 3.460,00</p>
			</div>
			<div class="caixaDestino">
				<img src="./assets/img/salvador.jpg"> <br>
				<p class="cidade_destino">Salvador / BA</p>
				<hr>
				<p class="cidade_descricao">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Officia, repellat.</p>
				<hr>
				<p class="valor">R$ 776,00</p>
			</div>
			<div class="caixaDestino">
				<img src="./assets/img/gramado.jpg"> <br>
				<p class="cidade_destino">Gramado / SC</p>
				<hr>
				<p class="cidade_descricao">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Officia, repellat.</p>
				<hr>
				<p class="valor">R$ 1.000,00</p>
			</div>
		</section>
	</main>
	<!-- Rodapé -->
	<br>
	<footer class=" footer text-center ">
		<p>&copy; 2023 Copyright: Viagens</p>

		<a href="index.jsp" class="btn btn-outline-success">Voltar a Home</a>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>