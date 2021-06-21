<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="board.css?after" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
</head>
<body>
	<jsp:include page="../module/top.jsp" />
	<div class="bodyContainer">
		<h1>게시물 수정</h1>
		<div class="boardInsertFormWrap">
			<form action="update.bo" enctype="multipart/form-data" method="post"
				name="frm">
				<input type="hidden" name="num" value="${board.b_num }"> <input
					type="hidden" name="pageNum" value="${pageNum}">
				<div class="inputWrap">
					<h3>제목</h3>
					<input type="text" class="subjectInput" name="subject"
						value="${board.b_name}" required="required" autofocus="autofocus">
					<h3>내용</h3>
					<textarea cols="10" rows="5" class="textarea" name="content"
						required="required">${board.b_cnt }</textarea>
				</div>
				<div class="fileRadioWrap">
					<h3>첨부파일</h3>
					<div class="fileRadioBox">
						<input type="file" name="filename">
						<div class="radioWrap">
							<input type="radio" name="cs_open" id="cs_open" value="y"
								class="radio" /><label for="cs_open">공개</label><input
								type="radio" name="cs_open" id="cs_close" value="n"
								class="radio" /><label for="cs_close">비공개</label>
						</div>
					</div>
				</div>
				<div class="updateButtonBox">
					<input type="button" class="listButton"
						onclick="location.href='mainlist.bo'" value="목록으로"> <input
						class="submitButton" type="submit" value="확인">
				</div>
			</form>
		</div>
	</div>
</body>
</html>