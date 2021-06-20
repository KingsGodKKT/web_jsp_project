<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head><body>
<form action="update.bo" enctype="multipart/form-data" method="post" name="frm">
	<input type="hidden" name="num" value="${board.b_num }">
	<input type="hidden" name="pageNum" value="${pageNum}">
<table><caption>게시글 수정</caption>
	<tr><th>제목</th><td><input type="text" name="subject" value="${board.b_name}"
		required="required" autofocus="autofocus"></td></tr>
	<tr><th>내용</th><td><textarea rows="5" cols="30" name="content" 
		required="required">${board.b_cnt }</textarea></td></tr>
	<tr><th scope="row">첨부파일</th>
   	<td><input type="file"  name="filename"><img alt="" src="upload/${board.f_name }"  width="400"></td></tr>
   		<tr>
        <td class="form-inline">
        <input type="radio" name="cs_open" id="cs_open" value="y" class="radio" /><span class="ml_10">공개</span>&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="radio" name="cs_open" id="cs_open" value="n" class="radio" /><span class="ml_10">비공개</span>&nbsp;
	</td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
	 
</table></form>
		<div class="btn_right mt15">
		<input type="button" class="btn black mr5" onclick="location.href='list.bo'" value="목록으로">
               
            </div>
</body></html>