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

<link href="../css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function order() {
		frm.action = "order.do";
		frm.submit();
	}
</script>
</head>

<body>
	<div class="container">

		<h3>포토북 인화 사진 선택</h3>
		<form action="" name="frm">
			<input type="hidden" name="p_num" value="${product.p_num }">
			<input type="hidden" name="p_name" value="${product.p_name }">
			<input type="hidden" name="p_cost" value="${product.p_cost}">
			<input type="hidden" name="p_qty" value="${product.p_qty }">
			<input type="hidden" name="p_size" value="${product.p_size }">
			<input type="hidden" name="p_cov" value="${product.p_cov }">
			<input type="hidden" name="p_date" value="${product.p_date }">
			<input type="hidden" name="p_img" value="${product.p_img }">
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
						<td>상품번호</td>
						<td>${product.p_num }</td>
					</tr>

					<tr>
						<td>상품명</td>
						<td>${product.p_name }</td>
					</tr>

					<tr>
						<td>커버</td>
						<td>${product.p_cov }</td>
					</tr>

					<tr>
						<td>사이즈</td>
						<td>${product.p_size }</td>
					</tr>
					<tr>
						<td>수량</td>
						<td><input type="number" size="2" min="1" name="o_qty"
							required="required" value="1"></td>
					</tr>
				</table>
				<br> <b>인화글 선택</b> </br> <br>
				<table class="table table-hover">
					<thead>
						<th width="7%">번호</th>
						<th width="25%">제 목</th>
						<th width="60%">내용</th>
						<th width="8%">작성일</th>
					</thead>
					<tbody>
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
						<tr>
							<td colspan="4"><input type="submit" onclick="order()"
								value="구매"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
	</div>
</body>
</html>