<%
	String id = (String) session.getAttribute("m_id");
	if (id == null || id.equals("")) {
		response.sendRedirect("loginForm.jsp");
		return;
	}
%>