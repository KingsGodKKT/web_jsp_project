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
			alert("상품이 등록되었습니다");
			
			//이 부분 고치기 관리자 화면으로 넘기기
			history.go(-1);
			//location.href = "productlistview.do";
		</script>
	</c:if>
	
	<c:if test="${result == 0 }">
		<script type="text/javascript">
			alert("상품등록 중 에러가 발생했습니다");
			history.go(-1);
		</script>
	</c:if>
</body>
</html>