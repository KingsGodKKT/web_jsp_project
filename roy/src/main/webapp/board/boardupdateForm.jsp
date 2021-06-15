<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head><body>
<form action="update.bo" enctype="multipart/form-data" method="post" name="frm">
	<input type="hidden" name="num" value="${board.num }">
	<input type="hidden" name="pageNum" value="${pageNum}">
<table><caption>게시글 수정</caption>
	<tr><th>제목</th><td><input type="text" name="subject" value="${board.subject}"
		required="required" autofocus="autofocus"></td></tr>
	<tr><th>내용</th><td><textarea rows="5" cols="30" name="content" 
		required="required">${board.content }</textarea></td></tr>
	<tr><th scope="row">첨부파일</th>
   	<td><input type="file"  name="filename"><img alt="" src="upload/${board.filename }"  width="400"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr> 
</table></form></body></html>