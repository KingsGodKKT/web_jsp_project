<%@page import="roy.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%	String m_id = request.getParameter("m_id");
	String m_pass = request.getParameter("m_pass");
	MemberDao md = MemberDao.getInstance();
	int result   = md.loginChk(m_id, m_pass); 
	%>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("로그인 성공");
		location.href="main.jsp";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("암호가 다릅니다");
		history.go(-1);
	</script>
</c:if>
<c:if test="${result == -1 }">
	<script type="text/javascript">
		alert("없는 아이디 입니다");
		history.go(-1);
	</script>
</c:if>
</body>
</html>