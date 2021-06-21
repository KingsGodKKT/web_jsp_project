<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 로그인이 될 때 -->
<c:set var="m_id" value="${sessionScope['m_id'] }"></c:set>
<!-- 로그인이 안될 때, id가 비어있을 때는 loginForm.do로 넘어감 -->
<%-- <c:if test="${empty m_id }">
	<script type="text/javascript">
		location.href="/loginForm.do";
	</script>
</c:if> --%>
</body>
</html>