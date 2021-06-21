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
<script type="text/javascript">
	$(function() {
		$('#disp').load('list.bo');
	});
</script>
</head>
<body>
	<jsp:include page="../module/top.jsp" />
	<div class="container">

		<input type="button" class="btn black mr5"
			onclick="location.href='mainlist.bo?pageNum=${pageNum}'" value="기록새록">

		<table class="table table-hover">
			<caption>게시글 상세 보기</caption>
			<tr>
				<th width="100">제목</th>
				<td>${board.b_name }</td>
			</tr>
			<tr>
				<th>작성자id</th>
				<td>${board.m_id }</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${board.b_view }</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${board.b_date }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><pre>${board.b_cnt }</pre></td>
			</tr>
			<tr>
				<td>사진</td>
				<td><img alt="" src="/roy/upload/${board.f_name }" width="400">
				</td>
			</tr>
		</table>
		<div class="btn_right mt15">
			<input type="button" class="btn black mr5"
				onclick="location.href='mainlist.bo?pageNum=${pageNum}'" value="게시글 목록">
			<input type="button" class="btn black mr5"
				onclick="location.href='updateForm.bo?b_num=${board.b_num}&pageNum=${pageNum}'"
				value="수정"> <input type="button" class="btn black mr5"
				onclick="location.href='deleteForm.bo?b_num=${board.b_num}&pageNum=${pageNum}'"
				value="삭제">
		</div>
	</div>
</body>
</html>