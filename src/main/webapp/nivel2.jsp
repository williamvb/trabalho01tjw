<jsp:include page="checkCredentials.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:include page="resources.jsp"></jsp:include>

<title>Nível 2</title>
</head>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>

	<h1 align="center" style="padding-top: 10px">Nível 2</h1>
	<c:set var="identificador" scope="session"
		value="${sessionScope.usuario}" />
	<c:out value="Olá, ${sessionScope.usuario}!"></c:out>
	<c:set var="nivelando1" scope="page" value='ADMINISTRADOR' />
	<c:set var="nivelando2" scope="page" value='Gerente' />

	<sql:setDataSource var="bd" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/tjwtrab01" user="root" password="123456" />

	<sql:query var="users" dataSource="${bd}">
		SELECT * from usuarios WHERE username = "${identificador}";
	</sql:query>
	<c:forEach var="row" items="${users.rows}">

		<c:if test="${!(nivelando1 eq row.nivel)}">
			<c:if test="${!(nivelando2 eq row.nivel)}">
				<c:redirect url="erro_acesso_gerente.jsp">
					<c:param name="mensagem" value="Muito noob!" />
				</c:redirect>
			</c:if>
		</c:if>

	</c:forEach>

</body>
</html>