<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="../css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../module/top.jsp" />
	<input type="button" class="btn black mr5"
		onclick="location.href='mainlist.bo?pageNum=${pageNum}'" value="기록새록">
	<div id="wrap">
		<div id="container">
			<div class="inner">
				<h2>게시글 작성</h2>
				<form action="insertBoard.bo" enctype="multipart/form-data"
					method="post">
					<table width="100%" class="table ">
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tbody id="tbody">

							<tr>
								<th>제목<span class="t_red">*</span></th>
								<td><input id="board_subject" name="board_subject" value=""
									class="tbox01" /></td>
							</tr>
							<tr>
								<th>내용<span class="t_red">*</span></th>
								<td><textarea id="board_content" name="board_content"
										cols="10" rows="5" class="textarea01"></textarea></td>
							</tr>
							<tr>
								<th scope="row">첨부파일</th>
								<td><input type="file" name="file"></td>
							</tr>
							<tr>
								<td class="form-inline"><input type="radio" name="cs_open"
									id="cs_open" value="y" class="radio" /><span class="ml_10">공개</span>&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="cs_open" id="cs_open" value="n"
									class="radio" /><span class="ml_10">비공개</span>&nbsp;</td>
							</tr>
							<tr>
								<th colspan="2"><input type="submit" class="btn black"
									value="등록하기"></th>
								<th><div class="btn_right mt15">
										<input type="button" class="btn black mr5"
											onclick="location.href='mainlist.bo'" value="목록으로">
								</th>
							</tr>
						</tbody>
					</table>
				</form>

			</div>
		</div>
	</div>
	</div>
</body>
</html>