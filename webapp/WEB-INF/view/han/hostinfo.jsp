<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>GairBnB - 펫시터 정보</title>
<!--CSS-->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/info.css?after">
<link href="${pageContext.request.contextPath}/assets/css/fullcalendar.min.css" rel="stylesheet" type="text/css">

<!--자바스크립트-->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
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
							<a href="${pageContext.request.contextPath}/host2/booking?hostNo=${requestScope.hostVo.hostNo}"><button id="btn1" type="button" class="btn btn-primary color">
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
					<c:choose>
						<c:when test="${not empty requestScope.reviewList}">
							<div id="point" class="row">
								<h4 class="normal">${requestScope.hostVo.hostcost}원/1박&nbsp;<span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span>퍼피력 ${requestScope.puppypoint}&nbsp;리뷰 ${requestScope.hostVo.reviewcount}개
								</h4>
							</div>
							<div id="graph">
								<div class="row bar" data-toggle="tooltip" data-placement="top" title="식사에 대한 점수">
									<div class="col-xs-2 pointname">
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
								<div class="row bar" data-toggle="tooltip" data-placement="top" title="산책에 대한 점수">
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
								<div class="row bar" data-toggle="tooltip" data-placement="top" title="목욕, 빗질등 청결관리에 대한 점수">
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
								<div class="row bar" data-toggle="tooltip" data-placement="top" title="놀이에 대한 점수">
									<div class="col-xs-2 pointname">
										<h4>
											<span class="glyphicon glyphicon-leaf" aria-hidden="true" ></span>&nbsp;놀이
										</h4>
									</div>
									<div class="progress">
										<div id="bar" class="progress-bar progress-bar-alert top-bar" role="progress-bar" aria-valuenow="8.8" aria-valuemin="0" aria-valuemax="10" style="width: ${(requestScope.point.play)*10}%;">
											<h4>${requestScope.point.play}</h4>
										</div>
									</div>
								</div>
								<div class="row bar" data-toggle="tooltip" data-placement="top" title="소통에 대한 점수">
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
						</c:when>
						<c:otherwise>
							<div id="point" class="row">
								<h4 class="normal">${requestScope.hostVo.hostcost}원/1박&nbsp;<span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span>퍼피력 ${requestScope.puppypoint}&nbsp;리뷰 ${requestScope.hostVo.reviewcount}개
								</h4>
							</div>
							<div id="pointinfo">
								<h4 style="padding:150px 0px 0px 70px">아직 작성된 리뷰가 없어요.</h4>
							</div>
						</c:otherwise>
					</c:choose>
					</div>
				</div>
				<div id="picbox" class="col-xs-7">
					<div id="tapbox">
						<ul class="nav nav-tabs">
							<li role="presentation" data-name="호스트사진" class="active"><a href="#">호스트 사진</a></li>
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
								<c:forEach items="${requestScope.photoList}" var="vo">
									<img src="${pageContext.request.contextPath}/assets/upload/${vo.photoPath}">
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-xs-4">
					<div class="row">
						<div id="calendar" style="width=425px;">
							<div id="l-calendar" style="font-size=1em;"></div>						
						</div>
					</div>
					<div class="row">
						<div id="maparea" class="row">
							<h3>${requestScope.hostVo.name}님의 동네</h3>
							<h4>${requestScope.hostVo.adress1}</h4>
							<div id="map" style="width:465px;height:300px;"></div>
						</div>
					</div>

				</div>
				<div class="col-xs-8 left clearfix">
					<div id="review">
						<h3>리뷰</h3>
						<div class="row reviewList clearfix">
							<c:choose>
								<c:when test="${not empty requestScope.reviewList}">
									<c:forEach items="${requestScope.reviewList}" var="vo">
										<div class="reviewbox">
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
									<nav id="paging">
										<ul class="pagination">
											<li>
												<a href="#" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span>
												</a>
											</li>
											<li><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li>
												<a href="#" aria-label="Next">
													<span aria-hidden="true">&raquo;</span>
												</a>
											</li>
										</ul>
									</nav>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/view/includes/footer.jsp"></c:import>
<div class="modal fade" id="photomodal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div id="imgArea" class="modal-body">
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c32fc6713e09b64980ab9a6dd7766e97&libraries=services"></script>

<script>
	$(function () {
		  $('[data-toggle="tooltip"]').tooltip()
		});
	
	//사진
	//탭을 클릭했을때
	$("#tapbox ul li").on("click", function(){
		var $this = $(this);
		var name = $this.data('name');
		$("#tapbox ul li").removeClass("active");
		$(this).addClass("active");
		
		var photoVo = {
			hostNo : ${requestScope.hostVo.hostNo},
			category : name
		};
		
		$("#imgbox2 img").remove();
		
		//요청
		$.ajax({
			//요청할때
			url : "${pageContext.request.contextPath}/host2/getPhoto",    
			type : "post",
			data : photoVo,
			
			success : function(photoList) {
				console.log(photoList);
				$("#imgbox2").html("");
				for (var i = 0; i<photoList.length; i++){
					render(photoList[i]);
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	//사진뿌리기 렌더
	function render(photoVo){
		var str = "";
		str +='<img src="${pageContext.request.contextPath}/assets/upload/'+ photoVo.photoPath +'">'
		$("#imgbox2").append(str);
	};
	
	//사진 클릭
	$("#imgbox2").on("click", "img", function(){
		var $this = $(this);
		var src = $(this).attr('src');
		console.log(src);
		$("#imgArea").html('<img src="'+ src +'" style="width:500px;">');
		$('#photomodal').modal('show');
	});
	
	
	//지도 API
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(33.450701, 126.570667),
		level: 3
	};
	var map = new kakao.maps.Map(container, options);    
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder.addressSearch('${requestScope.hostVo.adress1}', function(result, status) {

	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {

	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });

	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">펫시팅 장소</div>'
	        });
	        infowindow.open(map, marker);

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});  
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


		// 데이터 삽입방식
		events: [
			// ajax 처리로 데이터를 로딩 시킨다. 
			$.ajax({ 
				type:"get", 
				url:"${pageContext.request.contextPath}/calendar?hostNo=${requestScope.hostVo.hostNo}", 
				dataType : "json",
				success: function (bList) {
					for(var i=0; i<bList.length; i++) {
						calendar.addEvent({
							title: bList[i].guestName,
							start: bList[i].checkin,
							end: bList[i].checkout,
							status: 'booking'
						});
					}
				}
			}),
			$.ajax({ 
				type:"get", 
				url:"${pageContext.request.contextPath}/calendarAble?hostNo=${requestScope.hostVo.hostNo}", 
				dataType : "json",
				success: function (aList) {
					for(var i=0; i<aList.length; i++) {
						calendar.addEvent({
							start: aList[i].ableDate,
							end: aList[i].ableDate,
							allDay: true,
							status: 'done'
						});
					}
				}
			})
		],
		eventDidMount: function(info) {
			if(info.event.extendedProps.status == 'done') {
				info.el.style.backgroundColor = 'white';
				info.el.style.borderColor = 'white';
				info.el.style.height = '30px';
			}
		}
	});
		// 렌더링
		calendar.render();

	});
	
	
</script>
</body>

</html>
