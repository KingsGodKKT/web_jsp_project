<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="product.css?after" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style>
header {
	height: 100px;
	border-radius: 15px;
	font-family: 'Nanum Gothic', sans-serif;
	text-align: center;
}

footer {
	font-family: 'Nanum Gothic', sans-serif;
	text-align: center;
}

ul.nav {
	background-color: rgba(201, 201, 201, .5);
	padding: 10px;
	border-radius: 10px;
}
</style>
<title>Insert title here</title>
<script type="text/javascript">
	function order() {
		frm.action = "order.do";
		frm.submit();
	}
</script>
</head>

<body>
	<jsp:include page="../module/top.jsp" />
	<div class="container">
		<h3 align="center">포토북 인화 사진 선택</h3>
		<form action="" name="frm">
			<input type="hidden" name="p_num" value="${product.p_num }">
			<input type="hidden" name="p_name" value="${product.p_name }">
			<input type="hidden" name="p_cost" value="${product.p_cost}">
			<input type="hidden" name="p_qty" value="${product.p_qty }">
			<input type="hidden" name="p_size" value="${product.p_size }">
			<input type="hidden" name="p_cov" value="${product.p_cov }">
			<input type="hidden" name="p_date" value="${product.p_date }">
			<input type="hidden" name="p_img" value="${product.p_img }">
			<input type="hidden" name="m_id" value="${m_id }">
			<div class="col-md-4">
				<table>
					<tr>
						<td align="center"><img alt="${product.p_img }"
							src="../fileSave/${product.p_img}"></td>
						<td>
					<tr>
				</table>
			</div>
			<div class="col-md-6">
				<table class="table">
					<tr>
						<td><b>상품번호</b></td>
						<td>${product.p_num }</td>
					</tr>

					<tr>
						<td><b>상품명</b></td>
						<td>${product.p_name }</td>
					</tr>

					<tr>
						<td><b>커버</b></td>
						<td>${product.p_cov }</td>
					</tr>

					<tr>
						<td><b>사이즈</b></td>
						<td>${product.p_size }</td>
					</tr>
					<tr>
						<td><b>구입수량</b></td>
						<td><input type="number" size="2" min="1" name="o_qty"
							required="required" value="1"></td>
					</tr>
				</table>
				<br> <b>인화글 선택</b> </br> <br>
				<table class="table table-hover">
					<thead>
						<th width="10%">번호</th>
						<th width="25%">제 목</th>
						<th width="60%">내용</th>
						<th width="5%">작성일</th>
					</thead>
					<tbody>
						<c:if test="${empty blist}">
							<tr>
								<th colspan=5">등록된 상품이 없습니다</th>
							</tr>
						</c:if>
						<c:if test="${not empty blist }">
							<c:forEach var="blist" items="${blist }">
								<tr>
									<td><input type="checkbox" name="oboard" id="oboard"
										value="${blist.b_num }"> ${blist.b_num }</td>
									<%-- <td><img alt="${product.p_img }" src="../fileSave/${product.p_img } "></td> --%>
									<td>${blist.b_name }</td>
									<td>${blist.b_cnt  }</td>
									<td>${blist.b_date  }</td>
								</tr>
							</c:forEach>
						</c:if>
						<tr>
							<td colspan="4">
								<div class="submitButtonBox">
									<input type="submit" class="submitButton" onclick="order()"
										value="구매">
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
	</div>
</body>
</html>