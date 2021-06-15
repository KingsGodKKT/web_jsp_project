<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("common.css");</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$('#disp').load('list.bo');
	});
</script></head><body>
<table><caption>게시글 상세 보기</caption>
	<tr><th width="100">제목</th><td>${board.subject }</td></tr>
	<tr><th>작성자id</th><td>${board.userId }</td></tr>
	<tr><th>조회수</th><td>${board.readcount }</td></tr>
	<tr><th>작성일</th><td>${board.reg_date }</td></tr>
	<tr><th>내용</th><td><pre>${board.content }</pre></td></tr>
	<tr><td>사진</td><td><img alt="" src="upload/${board.filename }"  width="400"> </td></tr>
</table>
	<div class="btn_right mt15">
    	<input type="button" class="btn black mr5" onclick="location.href='list.bo&pageNum=${pageNum}'" value="게시글 목록">
    	<input type="button" class="btn black mr5" onclick="location.href='updateForm.bo?num=${board.num}&pageNum=${pageNum}'" value="수정">
    	<input type="button" class="btn black mr5" onclick="location.href='deleteForm.bo?num=${board.num}&pageNum=${pageNum}'" value="삭제">
	</div>
</body>
</html>