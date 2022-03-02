<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>예약하기</title>
<!--CSS-->
<link href="${pageContext.request.contextPath}/assets/css/booking.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

<!--자바스크립트-->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/booking/js/jquery-1.12.4.js"></script>

</head>

<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
    <div id="wrap">
        <div id="container">
            <div id="booking" class="col-xs-7 left info">
                <div class="row">
                    <h2>예약신청/결제하기</h2>
                </div>
                <div class="row">
                    <div class="Q">
                        <h4>1단계. 날짜 선택하기</h4>
                        <img src="${pageContext.request.contextPath}/assets/images/booking_calendar.png" width="430px" style="margin-left:150px">
                    </div>
                </div>
                    <div class="Q">
                        <h4>2단계. 반려견 마릿수 선택하기</h4>
                        <div class="btn-group btn-group-justified" role="group" aria-label="...">
                            <div class="btn-group" role="group">
                            <button type="button" class="btn btn-default btn2">1마리</button>
                            </div>
                            <div class="btn-group" role="group">
                            <button type="button" class="btn btn-default">2마리</button>
                            </div>
                            <div class="btn-group" role="group">
                            <button type="button" class="btn btn-default">3마리</button>
                            </div>
                        </div>
                    </div>
                    <div class="Q">
                        <h4>3단계. 펫 설명 및 요청사항 작성하기</h4>
                        <p>강아지에 대한 설명과 요청사항을 적어주세요! 입력하신 정보는 펫시터에게 같이 전달됩니다.</p>
                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">펫시터가 당신의 애완동물에게 알고싶은 것</h3>
                            </div>
                            <div class="panel-body">
                                나는 당신의 애완동물이 가지고 있는 알레르기/약물에 대해 알고 싶습니다. 이를통해 나는 그들이 무엇으로 둘러싸여 있을 수 있고 비상 사태 발생 시 무엇을 제공해야 하는지에 더 주의를 기울일 수 있을 것입니다.
                            </div>
                          </div>
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                    <div>
                    </div>
                </div>
            </div>
            <div id="hostprofile" class="col-xs-4">
                <div id="profile" class="row">
                    <img id="hostimg" src="${pageContext.request.contextPath}/assets/images/hostinfo_sample.jpg" class="img-circle">
                    <h4>개장수님</h4>
                    <h4>서울시 관악구 봉천동</h4>
                    <button id="btn1" type="button" class="btn btn-default"><h5><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;메시지 보내기</h5></button>
                </div>
                <div id="checkbox" class="row">
                    <h4>결제정보</h4>
                    <div class="row">
                        <div id="check" class="col-xs-5">
                            <h5>4일</h5>
                            <h5>1마리</h5>
                            <h4>총 금액</h4>
                        </div>
                        <div id="check2" class="col-xs-3">
                            <h5>40,000원</h5>
                            <h5>X 1마리</h5>
                            <h4>40,000원</h4>
                        </div>
                    </div>
                    <div class="row">
                        <br>
                        <p><span class="label label-danger">!</span>&nbsp;펫시터가 요청을 수락하면 결제가 이루어집니다.</p>
                        <button id="btn2" type="button" class="btn btn-primary">예약 요청/결제하기</button>
                    </div>
                </div>       
            </div>
        </div>
        <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

</body>
<script>
	/* aside */
	// html dom 이 다 로딩된 후 실행된다.
	$(document).ready(function() {
		// memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
		$(".menu").click(function() {
			// 현재 클릭한 태그가 a 이기 때문에
			// a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
			$(this).next("ul").toggleClass("hide");
		});
	});

	/* 달력 */
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

	// calendar.addEvent({
	// 	'title' : '게스트1',
	// 	'start' : '2022-02-01'
	// });

	// calendar.addEvent({
	// 	'title' : '게스트2',
	// 	'start' : '2022-02-18',
	// 	'end' : '2022-02-23'
	// });

	// 렌더링

	calendar.render();

	});

	document.addEventListener('DOMContentLoaded', function() {

	var calendarEl = document.getElementById('l-calendar2');
	var calendar = new FullCalendar.Calendar(calendarEl, {

		initialView : 'dayGridMonth', // 월 달력
		initialDate: '2022-03-01',

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
		'title' : '게스트3',
		'start' : '2022-03-05'
	});

	// 렌더링

	calendar.render();

	});
</script>
</html>