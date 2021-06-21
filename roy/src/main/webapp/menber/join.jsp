<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="roy.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result > 0 }">
		<script type="text/javascript">
			alert("회원가입 완료");
			//이 부분 메인으로 보내기
			//history.go(-1);
			location.href = "../index.jsp";
		</script>
	</c:if>
	
	<c:if test="${result == 0 }">
		<script type="text/javascript">
			alert("회원가입 실패");
			//location.href = "product/productlistview.do";
			history.go(-1);
		</script>
	</c:if>
</body>
</html>