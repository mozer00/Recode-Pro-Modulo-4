<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Viagens - Promoções</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="./views/promocao/index.css">
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

  

  <!-- Conteúdo da Página Promoções -->
  <div class="container text-center">
    <h1>Promoções</h1>
    <p>Aproveite nossas promoções especiais e economize em sua próxima viagem.</p>
  </div>

  <section>
    <div class="container py-5">
      <div class="d-flex justify-content-between flex-column flex-lg-row align-items-center">
        <div class="card text-center mb-3" style="width:15rem;">
          <img src="./assets/img/portugal.jpg" class="card-img-top">
          <div class="card-body">
            <p class="card-text fw-bold">
              de <s class="text-danger">R$ 2.734,00</s>
            </p>
            <p class="card-text fw-bold">
              por <span class="text-success fs-3">R$ 2.490,00</span>
              <span class="text-secundary">ou 10x de R$ 249,00</span>
            </p>
            <p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit.</p>
            <hr>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, veritatis.</p>
            <button class="btn btn-success" type="button">
              Compre aqui
            </button>
          </div>
        </div>
        <div class="card text-center mb-3" style="width:15rem;">
          <img src="./assets/img/Andorra.jpg" class="card-img-top">
          <div class="card-body">
            <p class="card-text fw-bold">
              de <s class="text-danger">R$ 4.741,00</s>
            </p>
            <p class="card-text fw-bold">
              por <span class="text-success fs-3">R$ 3.900,00</span>
              <span class="text-secundary">ou 10x de R$ 390,00</span>
            </p>
            <p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit.</p>
            <hr>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, veritatis.</p>
            <button class="btn btn-success" type="button">
              Compre aqui
            </button>
          </div>
        </div>
        <div class="card text-center mb-3" style="width:15rem;">
          <img src="./assets/img/machu.webp" class="card-img-top">
          <div class="card-body">
            <p class="card-text fw-bold">
              de <s class="text-danger">R$ 2.400,00</s>
            </p>
            <p class="card-text fw-bold">
              por <span class="text-success fs-3">R$ 1.990,00</span>
              <span class="text-secundary">ou 10x de R$ 199,00</span>
            </p>
            <p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit.</p>
            <hr>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, veritatis.</p>
            <button class="btn btn-success" type="button">
              Compre aqui
            </button>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Rodapé -->
  <footer class=" footer text-center ">
    <p>&copy; 2023 Copyright: Viagens</p>

    <a href="index.jsp" class="btn btn-outline-success">Voltar a Home</a>
  </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>