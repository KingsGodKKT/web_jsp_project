<%@page import="roy.model.Board"%>
<%@page import="roy.dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	BoardDao bd = BoardDao.getInstance();
	for (int i = 0; i <250; i++) {
		Board board = new Board();
		board.setUserId("k"+i);
		board.setSubject("대박"+i);
		board.setContent("좋아"+i);
		board.setFilename("KakaoTalk_20210603_151622816_02.jpg");
		bd.insert(board);
	}

%>
입력성공
</body>
</html>