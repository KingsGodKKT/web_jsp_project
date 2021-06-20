<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../module/top.jsp" />
	<div class="container">

		<input type="button" class="btn black mr5"
			onclick="location.href='mainlist.bo?pageNum=${pageNum}'" value="기록새록">
		<form action="delete.bo">
			<input type="hidden" name="b_num" value="${b_num}"> <input
				type="hidden" name="pageNum" value="${pageNum}">
			<table class="table table-hover">
				<caption>게시글을 삭제하시겠습니까?</caption>
				<tr>
					<th colspan="2"><input type="submit" value="확인"></th>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>