<jsp:include page="checkCredentials.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<jsp:include page="resources.jsp"></jsp:include>

<title>Cadastro</title>
</head>
<body>


	<c:set var="identificador" scope="session"
		value="${sessionScope.usuario}" />
	<c:set var="nivelando" scope="page" value='ADMINISTRADOR' />

	<sql:setDataSource var="bd" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/tjwtrab01" user="root" password="123456" />

	<sql:query var="users" dataSource="${bd}">
		SELECT * from usuarios WHERE username = "${identificador}";
	</sql:query>
	<c:forEach var="row" items="${users.rows}">

		<c:if test="${!(nivelando eq row.nivel)}">
			<c:redirect url="erro_acesso_adm.jsp">
				<c:param name="mensagem" value="Muito noob!" />
			</c:redirect>
		</c:if>

	</c:forEach>

	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="container">


		<form action="processar.jsp" method="POST">
			<table border="0" cellspacing="2" cellpadding="5">
				<thead>
					<tr>
						<th colspan="2">Adicionar usuário</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><label>ID</label></td>
						<td><input class="form-control" type="text"
							name="newIdUsuario" required /></td>
					</tr>
					<tr>
						<td><label>Nome</label></td>
						<td><input class="form-control" type="text"
							name="nomeUsuario" required /></td>
					</tr>
					<tr>
						<td><label>Email</label></td>
						<td><input class="form-control" type="email"
							name="emailUsuario" /></td>
					</tr>
					<tr>
						<td><label>Senha</label></td>
						<td><input class="form-control" type="password"
							name="senhaUsuario" required /></td>
					</tr>
					<tr>
						<td><label>Nível</label></td>
						<td><select class="form-control" name="nivel">
								<option value="Funcionario">Nivel 1</option>
								<option value="Gerente">Nivel 2</option>
								<option value="ADMINISTRADOR">ADMINISTRADOR</option>
						</select></td>
					</tr>
					<tr>
						<td><input class="btn btn-primary" type="submit"
							value="Salvar" /></td>
						<td><input class="btn btn-default" type="reset"
							value="Limpar" /></td>
					</tr>
				</tbody>
			</table>
		</form>

		<br />


		<jsp:include page="listar.jsp"></jsp:include>

	</div>
</body>
</html>