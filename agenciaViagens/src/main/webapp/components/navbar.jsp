<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<nav class="navbar navbar-expand-lg navbar-light">
	<div class="container">
		<a class="navbar-brand" href="./index.jsp">Viagens</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getParameter("home")%>">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getParameter("cadastro")%>">Cadastrar</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getParameter("lugares")%>">Lugares</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getParameter("promocao")%>">Promoções</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getParameter("contato")%>">Contato</a></li>
			</ul>
			<div class="col">
				<form class="d-flex offset-md-6 ">
					<input class="form-control me-2" type="search"
						placeholder="Para onde vamos?" aria-label="Pesquisar">
					<button class="btn btn-light" type="submit">Buscar</button>
				</form>
			</div>
		</div>
	</div>
</nav>
