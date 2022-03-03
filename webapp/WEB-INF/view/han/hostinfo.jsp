<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>펫시터 정보 페이지</title>
<!--CSS-->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/info.css?after">
<link href="${pageContext.request.contextPath}/assets/css/fullcalendar.min.css" rel="stylesheet" type="text/css">

<!--자바스크립트-->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c32fc6713e09b64980ab9a6dd7766e97"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/fullcalendar.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/locales-all.min.js"></script>

</head>
<body>
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>
	<div id="wrap">
		<div id="container">
			<div class="row row1">
				<div id="profile" class="col-xs-12 left">
					<img id="hostimg" src="${pageContext.request.contextPath}/assets/images/hostinfo_sample.jpg" alt="PetSitter Image" class="img-circle">
					<div id="hostinfo">
						<h3 class="info">${requestScope.hostVo.name}님</h3>
						<h4 class="info">${requestScope.hostVo.adress1}</h4>
						<div>
							<p class="info">${requestScope.hostVo.intro}</p>
						</div>
						<div id="tagbox">
							<c:forEach items="${requestScope.keyList}" var="vo">
								<span class="tag">${vo.keywordName}</span>
							</c:forEach>
						</div>
						<div id="btnbox1">
							<a href="${pageContext.request.contextPath}/hostinfo/booking?hostNo=${requestScope.hostVo.hostNo}"><button id="btn1" type="button" class="btn btn-primary">
								<h4>예약 요청</h4>
							</button></a>
							<button id="btn1" type="button" class="btn btn-default">
								<h4>
									<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;메시지 보내기
								</h4>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-4 left">
					<div class="row" id="puppypoint">
						<div id="point" class="row">
							<h4 class="normal">${requestScope.hostVo.hostcost}원/1박&nbsp;<span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span>퍼피력 ${requestScope.puppypoint}&nbsp;리뷰 ${requestScope.hostVo.reviewcount}개
							</h4>
						</div>
						<div id="graph">
							<div class="row bar">
								<div class="col-xs-2 pointname" data-toggle="tooltip" data-placement="top" title="Tooltip on left">
									<h4>
										<span class="glyphicon glyphicon-apple" aria-hidden="true"></span>&nbsp;식사
									</h4>
								</div>
								<div class="progress">
									<div id="bar" class="progress-bar progress-bar-alert top-bar" role="progress-bar" aria-valuenow="6.7" aria-valuemin="0" aria-valuemax="10" style="width: ${(requestScope.point.food)*10}%;">
										<h4>${requestScope.point.food}</h4>
									</div>
								</div>
							</div>
							<div class="row bar">
								<div class="col-xs-2 pointname">
									<h4>
										<span class="glyphicon glyphicon-grain" aria-hidden="true"></span>&nbsp;산책
									</h4>
								</div>
								<div class="progress">
									<div id="bar" class="progress-bar progress-bar-alert" role="progress-bar" aria-valuenow="9.2" aria-valuemin="0" aria-valuemax="10" style="width: ${(requestScope.point.walk)*10}%;">
										<h4>${requestScope.point.walk}</h4>
									</div>
								</div>
							</div>
							<div class="row bar">
								<div class="col-xs-2 pointname">
									<h4>
										<span class="glyphicon glyphicon-tint" aria-hidden="true"></span>&nbsp;청결
									</h4>
								</div>
								<div class="progress">
									<div id="bar" class="progress-bar progress-bar-alert" role="progress-bar" aria-valuenow="6.7" aria-valuemin="0" aria-valuemax="10" style="width: ${(requestScope.point.clean)*10}%;">
										<h4>${requestScope.point.clean}</h4>
									</div>
								</div>
							</div>
							<div class="row bar">
								<div class="col-xs-2 pointname">
									<h4>
										<span class="glyphicon glyphicon-leaf" aria-hidden="true"></span>&nbsp;놀이
									</h4>
								</div>
								<div class="progress">
									<div id="bar" class="progress-bar progress-bar-alert top-bar" role="progress-bar" aria-valuenow="8.8" aria-valuemin="0" aria-valuemax="10" style="width: ${(requestScope.point.play)*10}%;">
										<h4>${requestScope.point.play}</h4>
									</div>
								</div>
							</div>
							<div class="row bar">
								<div class="col-xs-2 pointname">
									<h4>
										<span class="glyphicon glyphicon-comment" aria-hidden="true"></span>&nbsp;소통
									</h4>
								</div>
								<div class="progress">
									<div id="bar" class="progress-bar progress-bar-alert warning-bar" role="progress-bar" aria-valuenow="9.8" aria-valuemin="0" aria-valuemax="10" style="width: ${(requestScope.point.communication)*10}%;">
										<h4>${requestScope.point.communication}</h4>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="picbox" class="col-xs-7">
					<div id="tapbox">
						<ul class="nav nav-tabs">
							<li role="presentation" data-name="호스트 사진" class="active"><a href="#">호스트 사진</a></li>
							<li role="presentation" data-name="식사"><a href="#">식사</a></li>
							<li role="presentation" data-name="산책"><a href="#">산책</a></li>
							<li role="presentation" data-name="청결"><a href="#">청결</a></li>
							<li role="presentation" data-name="놀이"><a href="#">놀이</a></li>
						</ul>
					</div>
					<!--앨범-->
					<div id="imgbox">
						<div class="row">
							<div id="imgbox2">
								<img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog1.png"> <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog2.png"> <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png"> <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png"> <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png"> <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png"> <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png"> <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-xs-4">
					<div class="row">
						<div id="calendar">
							<div id="l-calendar"></div>						
						</div>
					</div>
					<div class="row">
						<div id="maparea" class="row">
							<h3>${requestScope.hostVo.name}동네</h3>
							<h4>${requestScope.hostVo.adress1}${requestScope.hostVo.adress2} ${requestScope.hostVo.adress3}</h4>
							<div id="map"></div>
						</div>
					</div>

				</div>
				<div class="col-xs-8 left clearfix">
					<div id="review">
						<h3>리뷰</h3>
						<div class="row reviewbox clearfix">
							<c:forEach items="${requestScope.reviewList}" var="vo">
								<div>
									<div class="row reviewinfo">
										<img class="img-circle reviewimg" src="${pageContext.request.contextPath}/assets/images/hostinfo_sample.jpg">
										<h4 class="toph4">${vo.name}</h4>
										<h4>${vo.reviewDate}</h4>
									</div>
									<div>
										<p>${vo.review}</p>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/view/includes/footer.jsp"></c:import>

<script>
	//사진
	//탭을 클릭했을때
	$("#tapbox ul li").on("click", function(){
		var $this = $(this);
		var name = $this.data('name');
		$("#tapbox ul li").removeClass("active");
		$(this).addClass("active");
		
		$("#imgbox2 img").remove();
		$("#imgbox2").html('<img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog1.png">');
	});

	//지도 API
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(33.450701, 126.570667),
		level: 3
	};
	var map = new kakao.maps.Map(container, options);    
	
	//캘린더 라이브러리
	document.addEventListener('DOMContentLoaded', function() {

		var calendarEl = document.getElementById('l-calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {

			initialView : 'dayGridMonth', // 월 달력

			// 달력 툴
			headerToolbar : {
				left : 'prev',
				center : 'title',
				right : 'next today,dayGridMonth'
			},

			editable : true, // 드래그 수정 가능
			locale : 'ko', // 한국어 설정(lib/locales/ko.js)

			// 요일 클릭 이벤트
			dateClick : function() {
				alert('요일 클릭!');
			},

			// 일정 클릭 이벤트
			eventClick : function() {
				alert('일정 클릭!');
			},

		});

		// 데이터 삽입방식

		calendar.addEvent({
			'title' : '개장수',
			'start' : '2022-02-01'
		});

		calendar.addEvent({
			'title' : '고객2-펌',
			'start' : '2020-07-18T22:00'
		});

		calendar.addEvent({
			'title' : '강형욱',
			'start' : '2022-02-18',
			'end' : '2022-02-23'
		});

		// 렌더링

		calendar.render();

	});
</script>
</body>

</html>
