<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:if test="${result > 0  }">
	<script type="text/javascript">
		alert("수정 성공");
		location.href="view.do";
	</script>
</c:if>
<c:if test="${result == 0  }">
	<script type="text/javascript">
		alert("수정 실패");
		history.go(-1);
	</script>
</c:if>
</body>
</html>