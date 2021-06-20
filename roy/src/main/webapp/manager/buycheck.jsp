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
			alert("결제가 완료 되었습니다");
			//이 부분 메인으로 보내기
			//history.go(-1);
			location.href = "buycheckForm.do";
		</script>
	</c:if>
	
	<c:if test="${result == 0 }">
		<script type="text/javascript">
			alert("결제오류");
			//location.href = "product/productlistview.do";
			history.go(-1);
		</script>
	</c:if>
</body>
</html>