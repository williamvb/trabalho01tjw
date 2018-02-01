<%
	String identificacao = (String) request.getSession().getAttribute("usuario");
	if (identificacao == null) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("login");
		dispatcher.forward(request, response);
	}
%>