<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<%
String path = request.getContextPath();
if (session.getAttribute("m_id") == null) {
%>

<style type="text/css">

nav {
   display: flex;
   flex-direction: row;
   position: fixed; width : 100%;
   height: 90px;
   border-bottom: 1px solid #e5e5e5;
   width: 100%;
   background: white;
   z-index: 1;
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
   transition : 0.5 ease;
}

.active {
   color: rgb(000, 000, 153);   
   font-weight: 600;
   cursor: pointer;
}
</style>
</head>
<body>
	<header>
		<nav>
			<a href="index.jsp"><img class="logo" alt=""
				src="../image/기록새록.png"></a>
			<ul>
				<li><a href="loginForm.do">로그인</a></li>
				<li><a href="joinForm.jsp">회원가입</a></li>
			</ul>
		</nav>
	</header>
	<%
	} else {
	%>
	
	<nav>
			<a href="../index.jsp"><img class="logo" alt=""
				src="../image/기록새록.png"></a>
			<ul>
				<li><a class="active" href="">게시판</a></li>
				<li><b>${m_id}님</b></li>
				<li><a href="../logout.do">로그아웃</a></li>
			</ul>
		</nav>
	
	<%
	}
	%>
</body>
</html>