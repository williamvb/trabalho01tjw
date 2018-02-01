<jsp:include page="checkCredentials.jsp"></jsp:include>

<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>

<sql:setDataSource var = "bd" driver = "com.mysql.jdbc.Driver"
	url = "jdbc:mysql://localhost/tjwtrab01"
	user = "root" password = "123456"
/>

<sql:query var="users" dataSource="${bd}">
select* from usuarios;
</sql:query>
<table class="table table-bordered">
	<thead>
		<tr>
			<th scope="col">Username</th>
			<th scope="col">Nome</th>
			<th scope="col">Email</th>
			<th scope="col">Nível</th>
		</tr>
	</thead>

	<c:forEach var="row" items="${users.rows}">
		<tr>
			<td><c:out value="${row.username}" /></td>
			<td><c:out value="${row.nome}" /></td>
			<td><c:out value="${row.email}" /></td>
			<td><c:out value="${row.nivel}" /></td>
		</tr>
	</c:forEach>
</table>