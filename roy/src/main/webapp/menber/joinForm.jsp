<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
<script type="text/javascript">
	function chk() {
		if (!frm.id.value) {
			alert("아이디 입력후에 체크하세요");
			frm.id.focus();
			return false;
		}
		window.open("confirm.jsp?id=" + frm.id.value, "",
				"width=300 height=300");
	}
</script>

</head>
<body>
	<header>
		<nav>
			<a href="index.jsp"><img class="logo" alt=""
				src="../image/기록새록.png"></a>
			<ul>
				<li><a href="menber/loginForm.jsp">로그인</a></li>
				<li><a class="active" href="menber/joinForm.jsp">회원가입</a></li>
			</ul>
		</nav>
	</header>

	<form action="join.jsp" method="post" name="frm">
		<div class="joinBox">
			<table class="joinTable">
		<caption>회원가입</caption>
				<tr>
					<th>아이디</th>
					<td><input class="joinInput" type="text" name="m_id"
						required="required"></td>
				</tr>
				<tr>
					<th></th>
					<td><input class="checkInput" type="button" value="중복체크"
						onclick="return chk()"></td>
				</tr>
				<tr>
					<th>암호</th>
					<td><input class="joinInput" type="password" name="m_pass"
						required="required"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input class="joinInput" type="text" name="m_name"
						required="required"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input class="joinInput" type="text" name="m_addr"
						required="required"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input class="joinInput" type="tel" name="m_tel"
						required="required" pattern="\d{3}-\d{3,4}-\d{4}"
						title="전화번호 형식 3-3,4-4" placeholder="010-1111-1111"></td>
				</tr>
			</table>
			<div class="buttonBox">
				<button type="submit" value="확인">회원가입</button>
			</div>
		</div>
	</form>
</body>
</html>