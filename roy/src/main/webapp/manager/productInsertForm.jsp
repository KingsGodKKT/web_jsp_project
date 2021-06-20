<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import = "java.sql.Timestamp" %>
<%-- <%@ include file="../managerSessionChk.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<title>상품등록</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="checkScript.js"></script>
</head>
<body>
<jsp:include page="../module/top.jsp" />
	<div align="center">
		<h2>상품 등록</h2>
		<form method="post" name="writeform" action="productInsert.do"
			enctype="multipart/form-data">
			<table width="500" border="1">
				<tr>
					<td align="right" colspan="2"><a href="../managerMain.jsp">
							관리자 메인으로</a></td>
				</tr>
				<tr>
					<td>상품번호</td>
					<td><input type="number" size="50" maxlength="50"
						name="p_num" required="required"></td>
				</tr>
				<tr>
					<td>상품명</td>
					<td><input type="text" size="50" maxlength="50"
						name="p_name" required="required"></td>
				</tr>
				<tr>
					<td>가 격</td>
					<td><input type="number" size="10" maxlength="9"
						name="p_cost" required="required">원</td>
				</tr>
				<tr>
					<td>수량</td>
					<td><input type="number" size="10" maxlength="5"
						name="p_qty" required="required">개</td>
				</tr>
				<tr>
					<td>사이즈</td>
					<td>
						<select name="p_size" required="required">
           					<option value="8x8">8x8</option>
           					<option value="16x16">16x16</option>
           					<option value="4x4">4x4</option>
       					</select>
       				</td>
				</tr>
				<tr>
					<td>커버</td>
					<td>
						<select name="p_cov" required="required">
           					<option value="hard">하드커버</option>
           					<option value="soft">소프트커버</option>
       					</select>
       				</td>
				</tr>
				<tr>
					<td>등록일</td>
					<td>
						<input type="date" name="p_date" required="required">
						<!--등록일 오늘 날짜 입력 -->
						<script>
							document.getElementById('p_date').valueAsDate = new Date();
						</script>
					</td>
				</tr>
				<tr>
					<td>이미지</td>
					<td><input type="file" name="p_img"></td>
				</tr>
				<tr>
					<td colspan=2 align="center"><input
						type="submit" value="상품등록" >
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>