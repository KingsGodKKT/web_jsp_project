<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

</script>
</head>

<body>

	<h3>결제</h3>
	<!-- 상품 -->
	<table class="table table-hover">
		<tr>
			<th width="20%">상품번호</th>
			<th width="20%">상품명</th>
			<th width="20%">판매가격</th>
			<th width="20%">수량</th>
			<th width="20%">총가격</th>
		</tr>
		<tr>
			<td>${porder.p_num }</td>
			<td>${product.p_name }</td>
			<td>${product.p_cost }</td>
			<td>${porder.o_qty }</td>
			<td>${porder.o_cost }</td>
		</tr>
	</table>

	<!-- 게시물 -->
	<table>
		<tr>
			<th width="25%">번호</th>
			<th width="25%">제목</th>
			<th width="25%">내용</th>
			<th width="25%">작성일</th>
		</tr>
		<c:forEach var="olist" items="${olist }">
			<tr>
				<td>${olist.b_num }</td>
				<%-- <td><img alt="${product.p_img }" src="../fileSave/${product.p_img } "></td> --%>
				<td>${olist.b_name }</td>
				<td>${olist.b_cnt  }</td>
				<td>${olist.b_date  }</td>
			</tr>
		</c:forEach>
	</table>
	</form>
</body>
</html>