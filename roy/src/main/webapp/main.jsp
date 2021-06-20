
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">

</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("m_id") != null) {
		userID = (String) session.getAttribute("m_id");
	}
	%>

	<header>
		<nav>
			<a href="index.jsp"><img class="logo" alt="" src="image/기록새록.png"></a>
			<%
			if (userID == null) {
			%>

			<ul>
				<li><a href="menber/loginForm.jsp">로그인</a></li>
				<li><a href="menber/joinForm.jsp">회원가입</a></li>
			</ul>
			<%
			} else {
			%>
			<ul>
				<li><a href="">게시글</a></li>
				<li><a href="menber/loginForm.jsp">포토북</a></li>
				<li><a href="menber/logout.jsp">로그아웃</a></li>
			</ul>
			<%
			}
			%>
		</nav>
	</header>
	<section class="posts">
		<div class="post">
			<div class="thumbnail">사진</div>
			<div class="write">글</div>
		</div>
		<div class="post">
			<div class="thumbnail">사진</div>
			<div class="write">글</div>
		</div>
		<div class="post">
			<div class="thumbnail">사진</div>
			<div class="write">글</div>
		</div>
		<div class="post">
			<div class="thumbnail">사진</div>
			<div class="write">글</div>
		</div>

	</section>
	<div class="counter"></div>

	<script type="text/javascript">
		
	</script>
</body>
</html>