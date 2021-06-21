<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="board.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$('#disp').load('list.bo');
	});
</script>
</head>
<body>
	<jsp:include page="../module/top.jsp" />
	<div class="bodyContainer">
		<div>
			<div>
				<h2>${board.b_name }</h2>
			</div>
			<div id="detailView">아이디&nbsp;${board.m_id }&emsp;조회수&nbsp;${board.b_view }&emsp;작성일자&nbsp;${board.b_date }</div>
			<div>
				<img class="detailImg" alt="" src="/roy/upload/${board.f_name }"
					width="600" height="400">
			</div>
			<div id="detailCnt">${board.b_cnt }</div>

		</div>
		<div class="fileRadioBox">
			<input type="button" class="prettyButton"
				onclick="location.href='mainlist.bo?pageNum=${pageNum}'"
				value="게시글 목록">

			<div>
				<input type="button" class="nomalButton"
					onclick="location.href='updateForm.bo?b_num=${board.b_num}&pageNum=${pageNum}'"
					value="수정" > <input type="button" class="nomalButton"
					onclick="location.href='deleteForm.bo?b_num=${board.b_num}&pageNum=${pageNum}'"
					value="삭제">
			</div>
		</div>
	</div>
</body>
</html>