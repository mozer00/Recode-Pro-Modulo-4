<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Viagens - Contato</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./views/contato/index.css">  
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



  <!-- Conteúdo da Página Contato -->
  <main class="contact">
    <div class="container contact-form">
      <div class="contact-image">
        <img src="https://cdn.pixabay.com/photo/2020/03/27/07/22/plane-4972657_1280.png" alt="world_contact" />
      </div>
      <form method="">
        <h3>Entre em contato conosco</h3>
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" name="txtName" class="form-control" placeholder="Seu Nome *" value="" />
            </div>
            <div class="form-group">
              <input type="text" name="txtEmail" class="form-control" placeholder="Seu Email *" value="" />
            </div>
            <div class="form-group">
              <input type="text" name="txtPhone" class="form-control" placeholder="Seu Telefone *" value="" />
            </div>
            <div class="form-group">
              <input type="submit" name="btnSubmit" class="btnContact" value="Enviar" />
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <textarea name="txtMsg" class="form-control" placeholder="Sua Mensagem *"
                style="width: 100%; height: 150px;"></textarea>
            </div>
          </div>
        </div>
      </form>
    </div>
  </main>
  <!-- Rodapé -->

  <footer class="footer text-center">
    <p>&copy; 2023 Copyright: Viagens</p>
    <a href="index.jsp" class="btn btn-success">Voltar a Home</a>
  </footer>

</body>

</html>