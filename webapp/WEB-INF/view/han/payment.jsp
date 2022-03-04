<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>예약하기</title>
<!--CSS-->
<link href="${pageContext.request.contextPath}/assets/css/booking2.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

<!--자바스크립트-->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>

</head>

<body>
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>
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
                            <button type="button" data-ea="1" class="btn btn-default active">1마리</button>
                            </div>
                            <div class="btn-group" role="group">
                            <button type="button" data-ea="2" class="btn btn-default">2마리</button>
                            </div>
                            <div class="btn-group" role="group">
                            <button type="button" data-ea="3" class="btn btn-default">3마리</button>
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
                                ${requestScope.hostVo.asking}
                            </div>
                          </div>
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                </div>
            <div id="hostprofile" class="col-xs-4">
                <div id="profile" class="row">
                    <img id="hostimg" src="${pageContext.request.contextPath}/assets/images/hostinfo_sample.jpg" class="img-circle">
                    <h3>${requestScope.hostVo.name}님</h3>
                    <h4>${requestScope.hostVo.adress1}</h4>
                    <button id="btn1" type="button" class="btn btn-default"><h5><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;메시지 보내기</h5></button>
                </div>
                <div id="checkbox" class="row">
                    <h4>결제정보</h4>
                    <div class="row">
                        <div id="check" class="col-xs-5">
                            <h4>일수</h4>
                            <h4>마릿수</h4>
                            <h4>총 금액</h4>
                        </div>
                        <div id="check2" class="col-xs-3">
                            <h4>${requestScope.hostVo.hostcost}원</h4>
                            <h4 id="ea">1마리</h4>
                            <h4 id="cost">${requestScope.hostVo.hostcost}원</h4>
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
    </div>
</body>
<script>
	//2단계 버튼 클릭
	$(".btn-group.btn-group button").on("click", function(){
		var $this = $(this);
		$(".btn-group.btn-group button").removeClass("active");
		$(this).addClass("active");
		var ea = $this.data('ea');
		$("#ea").text(ea + "마리");
		var cost = ${requestScope.hostVo.hostcost} * ea
		$("#cost").text(cost + "원");
	});
</script>
</html>