<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Usado para entender o $ como expressão -->
<%@ page isELIgnored="false" %>

<c:set var="nameUser" value="${param.nomeUsuario}" scope="page" />
<c:set var="passUser" value="${param.senhaUsuario}" scope="page" />

<c:set var="destinatarioPage" value="" scope="session" />
<c:set var="mensagem" value="" scope="session" />

<c:if test="${empty param.nameUser}">
	<c:set var="destinatarioPage" value="login" />
	<c:set var="mensagem" value="Usuario ou senha em branco" />  
</c:if>


<sql:setDataSource var = "bd" driver = "com.mysql.jdbc.Driver"
	url = "jdbc:mysql://localhost/tjwtrab01"
	user = "root" password = "123456"
/>

<sql:query dataSource="${bd}"
	sql = "SELECT * FROM usuarios"
	var = "result"
/>

<c:forEach var="row" items="${result.rows}">

	<c:choose>
		<c:when test="${nameUser == row.username && passUser == row.senha}">

			<c:set var="usuario" value="${row.username}" scope="session" />
			<c:set var="nomeCompleto" value="${row.nome}" scope="session" />
			<c:set var="email" value="${row.email}" scope="session" />

			<c:set var="destinatarioPage" value="home.jsp" />
			<c:set var="mensagem" value="Voce foi logado com sucesso!" />
			
		</c:when>
		<c:otherwise>
		
			<c:set var="destinatarioPage" value="login" />
			<c:set var="mensagem" value="Voce nao possui cadastro" />
			
		</c:otherwise>
	</c:choose>

</c:forEach>

<c:redirect url = "${destinatarioPage}">
	<c:param name="mensagem" value="${mensagem}"/>
</c:redirect>