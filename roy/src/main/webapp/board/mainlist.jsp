<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

		<table class="table table-hover">
			<caption>게시글 목록</caption>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>입력일</th>
				<th>조회수</th>
				<th>작성자 ID</th>
				<th>그림</th>
			</tr>
			<c:forEach var="board" items="${list }">
				<tr
					onClick="location.href='view.bo?b_num=${board.b_num }&pageNum=${currentPage}'">
					<td>${board.b_num }</td>
					<td>${board.b_name }</a></td>
					<td>${board.b_date }</td>
					<td>${board.b_view }</td>
					<td>${board.m_id }</td>
					<td><img alt="" src="upload/${board.f_name }" width="100">
					</td>
				</tr>
			</c:forEach>
		</table>
		<div class="btn_right mt15">
			<input type="button" class="btn black mr5"
				onclick="location.href='boardInsertForm.bo'" value="글쓰기">
		</div>
		<div align="center">
			<c:if test="${startPage > PAGE_PER_BLOCK }">
				<button onclick="location.href='list.bo?pageNum=${startPage - 1}'">이전</button>
			</c:if>
			<c:forEach var="i" begin="${startPage}" end="${endPage}">
				<button onclick="location.href='list.bo?pageNum=${i}'">${i }</button>
			</c:forEach>
			<c:if test="${endPage < totalPage}">
				<button onclick="location.href='list.bo?pageNum=${endPage + 1}'">다음</button>
			</c:if>

		</div>
	</div>
</body>
</html>