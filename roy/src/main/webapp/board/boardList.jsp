<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="board.css?after" rel="stylesheet">
</head>
<body class="darkContainer">
	<jsp:include page="../module/top.jsp" />
	<div class="bodyContainer">
		<h1>내 게시글</h1>
		<div class="writeButtonBox">
			<input type="button" class="wirteButton"
				onclick="location.href='boardInsertForm.bo'" value="글쓰기">
		</div>
		<section class="posts">
			<c:forEach var="board" items="${list }">
				<div class="post"
					onClick="location.href='view.bo?b_num=${board.b_num }&pageNum=${currentPage}'">
					<div class="thumbnail-wrapper">
						<div class="thumbnail">
							<div class="thumbnail-centered">
								<img class="thumbnail-img" alt=""
									src="/roy/upload/${board.f_name }">
							</div>
						</div>
					</div>
					<div class="write">
						<div class="bNamedateBox">${board.b_name }</div>
						<div class="bCntBox">${board.b_cnt}</div>
						<button class="ReadButton">Read More</button>
						<div class="bIdViewBox">아이디${board.m_id }&emsp;조회수${board.b_view }&emsp;작성일${board.b_date }</div>
					</div>
				</div>
			</c:forEach>
		</section>
		<div align="center" class="counter">
			<c:if test="${startPage > PAGE_PER_BLOCK }">
				<button class="num"
					onclick="location.href='list.bo?pageNum=${startPage - 1}'">이전</button>
			</c:if>
			<c:forEach var="i" begin="${startPage}" end="${endPage}">
				<button class="num" onclick="location.href='list.bo?pageNum=${i}'">${i }</button>
			</c:forEach>
			<c:if test="${endPage < totalPage}">
				<button class="num"
					onclick="location.href='list.bo?pageNum=${endPage + 1}'">다음</button>
			</c:if>
		</div>
	</div>
</body>
</html>