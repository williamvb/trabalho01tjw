<jsp:include page="checkCredentials.jsp"></jsp:include>

<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>

<!-- Usado para entender o $ como expressão -->
<%@ page isELIgnored="false" %>

<c:if test="${empty param.nomeUsuario}">
	<c:redirect url="cadastro.jsp" >
         <c:param name="mensagem" value="Algo em branco" />
     </c:redirect>
</c:if>


<c:set var="idUser" value="${param.newIdUsuario}" scope="page" />
<c:set var="nameUser" value="${param.nomeUsuario}" scope="page" />
<c:set var="mailUser" value="${param.emailUsuario}" scope="page" />
<c:set var="passUser" value="${param.senhaUsuario}" scope="page" />
<c:set var ="levelUser" value="${param.nivel}" scope="page" />
<<c:out value="${param.idUsuario}"></c:out>
<c:set var="mensagem" value="" scope="session" />

<sql:setDataSource var = "bd" driver = "com.mysql.jdbc.Driver"
	url = "jdbc:mysql://localhost/tjwtrab01"
	user = "root" password = "123456"
/>

<% System.out.println( "counter = " + pageContext.findAttribute("idUser") ); %>
<% System.out.println( "counter = " + pageContext.findAttribute("levelUser") ); %>

<sql:update dataSource="${bd}" var="result">

    INSERT INTO usuarios (username, nome, email, senha, nivel) VALUES (?,?,?,?,?);
    <sql:param value="${param.newIdUsuario}" />
	<sql:param value="${param.nomeUsuario}" />
	<sql:param value="${param.emailUsuario}"  />
	<sql:param value="${param.senhaUsuario}" />
	<sql:param value="${param.nivel}" />
</sql:update>

<c:if test="${result>=1}">
	<font size="5" color='green'> Dados inseridos com sucesso!</font>

	<c:redirect url="cadastro.jsp">
		<c:param name="mensagem" value="Dados inseridos com sucesso!" />
	</c:redirect>
	
</c:if>
