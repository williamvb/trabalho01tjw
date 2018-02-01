<jsp:include page="checkCredentials.jsp"></jsp:include>

<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:include page="resources.jsp"></jsp:include>

<title>Página Inicial</title>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>

<h1 align="center" style="padding-top: 10px">Sistema de Usuários</h1>

<br/>

<c:if test="${empty sessionScope.nomeUsuario}">
	<c:out value="${sessionScope.nomeUsuario}"/>
</c:if>
<p>

</body>
</html>