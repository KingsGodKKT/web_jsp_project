<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="board.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../module/top.jsp" />
	<div class="bodyContainer">
		<form class="deleteForm" action="delete.bo">
			<input type="hidden" name="b_num" value="${b_num}"> <input
				type="hidden" name="pageNum" value="${pageNum}">
			<div>
				<h2>게시물을</h2>
				<h2>삭제하시겠습니까?</h2>
			</div>
			<div>
				<input class="listButton" type="submit" value="확인">
			</div>

		</form>
	</div>
</body>
</html>