<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="board.css?after" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
</head>
<body>
	<header>
		<nav>
			<a href="index.jsp"><img class="logo" alt=""
				src="../image/기록새록.png"></a>
			<ul>
				<li><a class="active" href=list.bo>게시글</a></li>
				<li><a href="order/orderbuy.jsp">포토북</a></li>
				<li><a href="menber/logout.jsp">로그아웃</a></li>
			</ul>
		</nav>
	</header>
	<div class="bodyContainer">
		<h1>게시글 작성</h1>
		<div class="boardInsertFormWrap">
			<form action="insertBoard.bo" enctype="multipart/form-data"
				method="post">
				<div class="inputWrap">
					<h3>제목</h3>
					<input name="board_subject" value="" class="subjectInput" /><br />
					<h3>내용</h3>
					<textarea name="board_content" class="textarea"
						placeholder="일기내용을 입력하세요!"></textarea>
				</div>
				<div class="fileRadioWrap">
					<h3>첨부파일</h3>
					<div class="fileRadioBox">
						<input type="file" name="file">
						<div class="radioWrap">
							&nbsp;&emsp;&emsp;<input type="radio" name="cs_open" id="cs_open" value="y"
								class="radio" /><label for="cs_open">공개</label>&nbsp;<input
								type="radio" name="cs_open" id="cs_close" value="n"
								class="radio" /><label for="cs_close">비공개</label>
						</div>
					</div>
				</div>
				<div class="submitButtonBox">
					<input type="submit" class="submitButton" value="등록하기">
				</div>
			</form>
		</div>
	</div>
</body>

</html>