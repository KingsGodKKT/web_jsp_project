<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("common.css");</style>
</head>
<body>
<table><caption>게시글 목록</caption>
	<tr><th>번호</th><th>제목</th><th>입력일</th><th>조회수</th><th>작성자 ID</th><th>그림</th></tr>
<c:forEach var="board" items="${list }">
	<tr><td>${board.num }</td>
	<td><a href="view.bo?num=${board.num }&pageNum=${currentPage}">${board.subject }</a></td>
	<td>${board.reg_date }</td>
	<td>${board.readcount }</td>
	<td>${board.userId }</td>
	<td><img alt="" src="upload/${board.filename }"  width="100"> </td></tr>
</c:forEach>
</table>
 <div class="btn_right mt15">
         <input type="button" class="btn black mr5" onclick="location.href='boardInsertForm.bo'" value="글쓰기">
  </div>
  <div align="center">
	<c:if test="${startPage > PAGE_PER_BLOCK }">
		<button onclick="location.href='list.bo?pageNum=${startPage - 1}'">이전</button>
	</c:if>
	<c:forEach var="i" begin="${startPage}" end="${endPage}">
		<button onclick="location.href='list.bo?pageNum=${i}'">${i }</button>
	</c:forEach>
	<c:if test="${endPage < totalPage}">
		<button onclick="location.href='list.bo?pageNum=${endPage + 1}'">다음</button>
	</c:if>
           
</div>
</body>
</html>