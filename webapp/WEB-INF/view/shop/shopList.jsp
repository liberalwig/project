<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 설명</title>
	<!-- CSS-->
	<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/css/shopList.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

	<!-- JS -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>
	<div id="wrap">
		<div id="container" class="clearfix">
			<div id="itemArea">
				<div class="item">
					<a href="${pageContext.request.contextPath}/shop/info">
						<img src="${pageContext.request.contextPath}/assets/images/shopinfo_sample.png">
					</a>
					<h4>상품제목</h4>
					<p>상품가격</p>
				</div>
				<div class="item">
					<a href="${pageContext.request.contextPath}/shop/info">
						<img src="${pageContext.request.contextPath}/assets/images/shopinfo_sample.png">
					</a>
					<h4>상품제목</h4>
					<p>상품가격</p>
				</div>
				<div class="item">
					<a href="${pageContext.request.contextPath}/shop/info">
						<img src="${pageContext.request.contextPath}/assets/images/shopinfo_sample.png">
					</a>
					<h4>상품제목</h4>
					<p>상품가격</p>
				</div>
				<div class="item">
					<a href="${pageContext.request.contextPath}/shop/info">
						<img src="${pageContext.request.contextPath}/assets/images/shopinfo_sample.png">
					</a>
					<h4>상품제목</h4>
					<p>상품가격</p>
				</div>
				<div class="item">
					<a href="${pageContext.request.contextPath}/shop/info">
						<img src="${pageContext.request.contextPath}/assets/images/shopinfo_sample.png">
					</a>
					<h4>상품제목</h4>
					<p>상품가격</p>
				</div>
			</div>
		</div>
	</div>
	
	<c:import url="/WEB-INF/view/includes/footer.jsp"></c:import>
</body>
</html>