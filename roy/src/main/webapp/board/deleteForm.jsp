<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("common.css");</style>
</head><body>
<form action="delete.bo">
	<input type="hidden" name="b_num" value="${b_num}">
	<input type="hidden" name="pageNum" value="${pageNum}">
<table><caption>게시글을 삭제하시겠습니까?</caption>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
</body>
</html>