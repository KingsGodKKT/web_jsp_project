<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="../css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<body>
<form action="productlistview.do">
	<input type="submit" value="확인">
</form>
	<table class="table table-hover">
		<tr>
			<th width="25%">상품번호</th>
			<th width="25%">이미지</th>
			<th width="25%">상품명</th>
			<th width="25%">가격</th>
		</tr>
		<c:if test="${empty list}">
			<tr>
				<th colspan=5">등록된 상품이 없습니다</th>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="product" items="${list }">
				<tr>
					<td>${product.p_num }</td>
					<td><img alt="${product.p_img }" src="../fileSave/${product.p_img } "></td>
					<td><a href="productview.do?p_num=${product.p_num }">${product.p_name }</a></td>
					<td>${product.p_cost }</td>
<%-- 					<td>${product.p_date }</td> --%>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</body>
</html>