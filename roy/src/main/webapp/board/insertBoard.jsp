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
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("게시글 작성 성공");
		location.href="list.bo";
	</script>	
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("게시글 작성 실패");
		history.go(-1);
	</script>
</c:if>
</body>
</html>