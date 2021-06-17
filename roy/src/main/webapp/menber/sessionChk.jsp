<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="id" value="${sessionScope.id }"></c:set>
<c:if test="${empty id }">
	<script type="text/javascript">
		location.href="loginForm.jsp";
	</script>
</c:if> --%>
<%
	String id = (String)session.getAttribute("m_id");
	if (id == null || id.equals("")) {
		response.sendRedirect("loginForm.jsp");
		return;
	}
%>