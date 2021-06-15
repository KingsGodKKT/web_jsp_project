<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function chk() {
		if (!frm.id.value) {	alert('아이디를 입력하고 체크하시오');
			frm.id.focus();		return false;		}
// 변수 id에 입력한 id을 담아서 포스트방식으로 confirm.jsp을 실행하고 결과르 받아서 data저장하고
// 그 값을 id가 err인 곳에 html형식으로 넣어라
		$.post("confirm.do", "id="+frm.id.value, function(data) {
			$('#err').html(data);
		});
	}
	function chk2() {
		if (frm.password.value != frm.confirmPass.value) {
			alert("암호와 암호 확인이 다릅니다");		frm.password.focus();
			frm.password.value = "";			return false;		}
	}
</script></head><body>
<!-- onsubmit="return chk2()"는 submit를 눌렀을 때 chk2를 실행하고 에러가 없으면 action에 있는 join.jsp실행
에러가 있으면 action을 하지 마라 -->
<form action="join.do" method="post" name="frm" onsubmit="return chk2()">
<table>
<div class="navbar-header">
  <a class="navbar-brand" href="main.jsp">기록새록</a>
			</div>
<caption>회원 가입</caption>
	<tr><th>아이디</th><td><input type="text" name="id" required="required"
		autofocus="autofocus"><input type="button" value="중복체크" onclick="chk()">
		<div id="err"></div></td></tr>
	<tr><th>암호</th><td><input type="password" name="password" 
		required="required"></td></tr>
	<tr><th>암호확인</th><td><input type="password" name="confirmPass" 
		required="required"></td></tr>
	<tr><th>이름</th><td><input type="text" name="name" 
		required="required"></td></tr>
	<tr><th>주소</th><td><input type="text" name="address" 
		required="required"></td></tr>
<!-- title="전화형식 3-3,4-4" : 에러가 발생하면 보여줄 메세지에 추가
	 pattern="\d{3}-\d{3,4}-\d{4}" : 	숫자3-숫자3또는4-숫자4자리
	 placeholder="010-1111-1111" : 초기화면에 보여주고 데이터 입력하면 사라져라	 -->
	<tr><th>전화</th><td><input type="tel" name="tel" title="전화형식 3-3,4-4"
		required="required" pattern="\d{3}-\d{3,4}-\d{4}" placeholder="010-1111-1111"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
<button onclick="location.href='loginForm.jsp'">로그인</button>
</body>
</html>