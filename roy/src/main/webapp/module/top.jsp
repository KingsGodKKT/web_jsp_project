<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
@import
   url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap')
   ;
nav {
	display: flex;
	flex-direction: row;
	position: fixed;
	width: 100%;
	height: 90px;
	border-bottom: 1px solid #e5e5e5;
	width: 100%;
	background: white;
	z-index: 1;
	font-family: 'Noto Sans KR', sans-serif;
}

.logo {
	margin-left: 40px;
	margin-top: 7px;
	width: 180px;
	height: 70px;
}

ul {
	display: flex;
	flex-direction: row;
	position: absolute;
	list-style: none;
	right: 40px;
	top: 30px;
}

li>a {
	margin-left: 20px;
	margin-top: 20px;
	text-decoration: none;
	font-size: 17px;
	font-weight: bold;
	color: black;
}

li>a:hover {
	text-decoration: underline 2px;
	transition: all 0.3s;
   	transition-timing-function: ease
}

</style>
<%
String path = request.getContextPath();
if (session.getAttribute("m_id") == null) {
%>


</head>
<body>
	<header >
		<nav>
			<a href="../index.jsp"><img class="logo" alt=""
				src="../image/기록새록.png"></a>
			<ul>
				<li><a href="../menber/loginForm.jsp">로그인</a></li>
				<li><a href="../menber/joinForm.jsp">회원가입</a></li>
			</ul>
		</nav>
	</header>
	<%
	} else {
	%>
	<header >
		<nav>
			<a href="../index.jsp"><img class="logo" alt=""
				src="../image/기록새록.png"></a>
			<ul>
				<li><b>${m_id}</b>님  </li>
				<li><a href="../board/list.bo">게시글</a></li>
				<li><a href="../product/productlistview.do">포토북</a></li>
				<li><a href="../logout.do">로그아웃</a></li>
			</ul>
		</nav>
	</header>
	<%
	}
	%>
</body>
</html> 