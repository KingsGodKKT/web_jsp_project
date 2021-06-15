<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="roy.member.*"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
<%	String id = request.getParameter("id"); %>
<script type="text/javascript">
	function cl() {
		opener.frm.id.value="<%=id%>";
		window.close();
	}
</script></head><body>
<%	MemberDao md = MemberDao.getInstance();
	int result   = md.confirm(id);
	if (result > 0) {  %>
<h2>이미 있는 아이디입니다</h2>
<h2>다른 아이디를 입력하세요</h2>
<form><table>
	<tr><th>아이디</th><td><input type="text" name="id" 
		required="required"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table></form>
<%  } else { %>
<h2>사용 가능한 아이디 입니다</h2>
<button onclick="cl()">닫기</button>
<%  } %>
</body>
</html>