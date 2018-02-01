<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">
	//Função confimação de saída
	function confirmaSair() {
		var resp = confirm("Deseja realmente sair?");
		if (resp == true) {
			location.href = "logout";
		}
	}
</script>

<nav class="navbar navbar-expand-lg navbar-light bg-success"
	style="padding-left: 8%; padding-right: 8%;">
	<a class="navbar-brand" href="home.jsp"> <img src="" width="30"
		height="30" class="d-inline-block align-top" alt=""> TJW Users
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarText" aria-controls="navbarText"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarText">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="nivel1.jsp"><i class="far fa-clock" aria-hidden="true"></i>
					Funcionário</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="nivel2.jsp"><i class="far fa-file-pdf" aria-hidden="true"></i>
					Gerente</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="cadastro.jsp"><i class="far fa-calendar-check"
					aria-hidden="true"></i> Administrador - Cadastro</a></li>
		</ul>

		<ul class="navbar-nav">
			<li class="nav-item active">
				<!-- Exibe nome do usuário --> <a class="nav-link"><i
					class="fas fa-user"></i> <c:out value='${sessionScope.nomeUsuario}' /></a>
			</li>
			<li class="nav-item active"><a class="nav-link" href="#"
				onclick="confirmaSair();"><i class="fas fa-sign-out-alt"></i>
					Sair</a></li>
		</ul>
	</div>
</nav>