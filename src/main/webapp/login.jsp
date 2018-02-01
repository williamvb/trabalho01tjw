<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<title>Iniciar Sessão</title>

<jsp:include page="resources.jsp"></jsp:include>

<link rel="stylesheet" href="css/style.css">

</head>

<body>

	<div class="wrapper">
		<form class="form-signin" action="validateCredentials.jsp" method="POST" name="form_login">
			<h2 class="form-signin-heading">TJW Users</h2>
			<input type="text" class="form-control" name="nomeUsuario" placeholder="Nome de Usuário" required="" autofocus="" /> 
			<input type="password" class="form-control" name="senhaUsuario"	placeholder="Senha" required="" />
			<!--
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
       -->
			<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
		</form>
	</div>


</body>

</html>