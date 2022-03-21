<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 설명</title>
	<!-- CSS-->
	<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/css/shopInfo.css" rel="stylesheet" type="text/css">
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
		<div id="container">
			<div id="infoArea" class="row">
				<div id="imageArea" class="col-xs-6">
					<img src="${pageContext.request.contextPath}/assets/images/shopinfo_sample.png">
				</div>
				<div id="itemArea" class="col-xs-6">
					<div id="info1">
						<h3 class="lead">(성수매장 방문픽업)Merry WholeSome Box</h3>
						<h3 class="lead">32,000원</h3>
					</div>
					<div id="info2">
						<p>따뜻하고 맛있는 여러분의 2021년 연말을 위한 홀썸의 Merry WHOLESOME Box 입니다.</p>
						<p>모두 해피하세요!</p>
					</div>
					<div class="dropdown">
						<p> 갯수 *</p>
						<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
					    갯수를 선택해 주세요.
					    <span class="caret"></span>
					  	</button>
					  	<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
					  	</ul>
					</div>
					<div id="buyinfo">
						
					</div>
					<div id="buyDetail" class="clearfix">
						<p>총 상품금액(1개)</p>
						<h4>63,000원</h4>
					</div>
					<div id="buttonArea">
						<button type="button" class="btn btn-primary color">구매하기</button>
						<button type="button" class="btn btn-default">장바구니</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<c:import url="/WEB-INF/view/includes/footer.jsp"></c:import>
</body>
</html>