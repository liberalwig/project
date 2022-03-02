<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--CSS-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/info.css">

<!--자바스크립트-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js">
<script type="text/javascript" src=".${pageContext.request.contextPath}/assets/booking/js/jquery-1.12.4.js"></script>

<title>펫시터 정보 페이지</title>
</head>
<body>
    <c:import url="/WEB-INF/view/includes/header.jsp"></c:import>
        <div id="wrap">
            <div id="container">
                <div class="row row1">
                    <div id="profile" class="col-xs-12 left">
                        <img id="hostimg" src="${pageContext.request.contextPath}/assets/images/hostinfo_sample.jpg" alt="PetSitter Image" class="img-circle">
                        <div id="hostinfo">
                            <h3 class="info">개장수님</h3>
                            <h4 class="info">서울시 관악구 봉천동</h4>
                            <div>
                                <p class="info">나는 가능하면 공원에 가거나 하이킹을 하는 것을 좋아합니다. 달리기도 내가 좋아하는 일이고 개와 함께 할수있습니다. 저는 도림천 바로 옆에 살아서 그곳으로 갑니다. 내 강아지는 매일 최소 3시간 동안 공을 치는것을 좋아하기 때문에 몇시간 동안 가져올 수 있습니다!글자수글자수글자수글자수글자수글자수글자수글자수글자수글자수글자수글자수글자수글자수글자수퓨</p>
                            </div>
                            <div id="tagbox">
                                <span class="tag">24시간 상주 가능</span><span class="tag">펫 용품 구비</span><span class="tag">집 근처 공원</span><span class="tag">집 근처 동물병원</span><span class="tag">응급처치 가능</span><span class="tag">돌봄 경력 3년이상</span><span class="tag">전문교육 수료</span><span class="tag">보험가입</span><span class="tag">약물투여 가능</span><span class="tag">매일 산책 가능</span><span class="tag">비흡연</span><span class="tag">개가 없음</span><span class="tag">어린이 없음</span><span class="tag">마당 있음</span>
                                
                            </div>
                            <div id="btnbox1">
                                <button id="btn1" type="button" class="btn btn-primary"><h4>예약 요청</h4></button>
                                <button id="btn1" type="button" class="btn btn-default"><h4><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;메시지 보내기</h4></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-4 left">
                        <div class="row" id="puppypoint">
                            <div id="point" class="row">
                                <h4 class="normal">10,000원/1박&nbsp;<span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span>퍼피력 9.9&nbsp;리뷰 4개</h4>
                            </div>
                                <div id="graph">
                                <div class="row bar">
                                    <div class="col-xs-2 pointname">
                                        <h4><span class="glyphicon glyphicon-apple" aria-hidden="true"></span>&nbsp;식사</h4>
                                    </div>
                                    <div class="progress">
                                        <div id="bar" class="progress-bar progress-bar-alert top-bar" role="progress-bar" aria-valuenow="6.7" aria-valuemin="0" aria-valuemax="10" style="width: 99%;"><h4>9.9</h4></div>
                                    </div>
                                </div>
                                <div class="row bar">
                                    <div class="col-xs-2 pointname">
                                        <h4><span class="glyphicon glyphicon-grain" aria-hidden="true"></span>&nbsp;산책</h4>
                                    </div>
                                    <div class="progress">
                                        <div id="bar" class="progress-bar progress-bar-alert" role="progress-bar" aria-valuenow="9.2" aria-valuemin="0" aria-valuemax="10" style="width: 82%;"><h4>8.2</h4></div>
                                    </div>
                                </div>
                                <div class="row bar">
                                    <div class="col-xs-2 pointname">
                                        <h4><span class="glyphicon glyphicon-tint" aria-hidden="true"></span>&nbsp;청결</h4>
                                    </div>
                                    <div class="progress">
                                        <div id="bar" class="progress-bar progress-bar-alert" role="progress-bar" aria-valuenow="6.7" aria-valuemin="0" aria-valuemax="10" style="width: 82%;"><h4>8.2</h4></div>
                                    </div>
                                </div>
                                <div class="row bar">
                                    <div class="col-xs-2 pointname">
                                        <h4><span class="glyphicon glyphicon-leaf" aria-hidden="true"></span>&nbsp;놀이</h4>
                                    </div>
                                    <div class="progress">
                                        <div id="bar" class="progress-bar progress-bar-alert top-bar" role="progress-bar" aria-valuenow="8.8" aria-valuemin="0" aria-valuemax="10" style="width: 98%;"><h4>9.8</h4></div>
                                    </div>
                                </div>
                                <div class="row bar">
                                    <div class="col-xs-2 pointname">
                                        <h4><span class="glyphicon glyphicon-comment" aria-hidden="true"></span>&nbsp;소통</h4>
                                    </div>
                                    <div class="progress">
                                        <div id="bar" class="progress-bar progress-bar-alert warning-bar" role="progress-bar" aria-valuenow="9.8" aria-valuemin="0" aria-valuemax="10" style="width: 64%;"><h4>6.4</h4></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="picbox" class="col-xs-7">
                        <div id="tapbox">
                            <ul class="nav nav-tabs">
                                <li role="presentation"><a href="#">전체</a></li>
                                <li role="presentation" class="active"><a href="#">호스트 사진</a></li>
                                <li role="presentation"><a href="#">식사</a></li>
                                <li role="presentation"><a href="#">산책</a></li>
                                <li role="presentation"><a href="#">청결</a></li>
                                <li role="presentation"><a href="#">놀이</a></li>
                            </ul>
                        </div>
                        <!--앨범-->
                        <div id="imgbox">
                            <div class="row">
                                <div id="imgbox2">
                                    <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog1.png">
                                    <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog2.png">
                                    <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png">
                                    <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png">
                                    <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png">
                                    <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png">
                                    <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png">
                                    <img src="${pageContext.request.contextPath}/assets/images/hostinfo_dog3.png">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="col-xs-4">
                        <div class="row">
                            <div id="calendar">
                                <img src="${pageContext.request.contextPath}/assets/images/booking_calendar.png" width="430px" style="margin-left:30px">
                            </div>
                        </div>
                        <div class="row">
                            <div id="map" class="row">
                                <h3>개장수의 동네</h3>
                                <h4>서울특별시 관악구 봉천동</h4>
                                <img src="${pageContext.request.contextPath}/assets/images/hostinfo_map.png">
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-8 left clearfix">
                        <div id="review">
                            <h3>리뷰</h3>
                            <div class="row reviewbox clearfix">
                                <div class="row reviewinfo">
                                    <img class="img-circle reviewimg" src="${pageContext.request.contextPath}/assets/images/hostinfo_sample.jpg">
                                    <h4 class="toph4">유재석</h4>
                                    <h4>2022-02-24</h4>
                                </div>
                                <div>
                                    <p>개장수는 굉장했다! 그녀는 매우 친절했다! 우리 강아지 말숙이와 함께 최고의 시간을 보냈습니다</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
<c:import url="/WEB-INF/view/includes/footer.jsp"></c:import>
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
