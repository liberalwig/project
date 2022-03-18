<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<!-- 메타태그 -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--메타데이터-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--CSS -->
<link href="/project/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="/project/assets/css/message.css" rel="stylesheet" type="text/css">
<!-- 자바스크립트 -->
<script type="text/javascript" src="/project/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/project/assets/bootstrap/js/bootstrap.js"></script>

<title>메세지</title>
</head>
<body>
	<!-- 헤더 -->
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>
	<!--wrap-->
	<div id="wrap">

		<div id="container">
			<c:import url="/WEB-INF/view/includes/aside.jsp"></c:import>

			<div id="content">

				<!-- <p id="nav">마이 사이트 > 메세지</p>
                    <p id="now">메세지</p> -->

				<div id="content-head">
					<div id="location" class="clearfix">
						<ul>
							<li>마이페이지</li>
							<li class="last">메세지</li>
						</ul>
					</div>
					<h1>메세지</h1>
				</div>

				<div id="content-main">
					<div class=" row clearfix">
						<div id="list" class="col-xs-12">
							<img class="profile" src="/project/assets/images/message_profile4.jpeg">
							<p>${messageVo.name} 님</p>
						</div>
						<div id="pdetail" class="col-xs-12 clearfix">
							<img class="profile" src="/project/assets/images/message_profile1.jpg">
							<p class="name">${getMInfo.usersFromName} 님과의 쪽지</p>
						</div>
					</div>
					<div class=" row clearfix">
						<div id="dList" class="clearfix scroll scroll1">
							<c:forEach items="${mList}" var="MessageVo">
								<div class="clearfix link Mlist">
									
									<img class="profile" src="/project/assets/images/message_profile1.jpg">
									<p class="name">${getMInfo.usersFromName} 님 </p>
									<div>
										<p class="timeL">${getMInfo.sendDate}</p>
									</div>
								</div>
							</c:forEach>
						</div>

						<div id="conver" class="col-xs-12 clearfix scroll scroll1">
							<div class="textyou">
								<!--메세지창+시간-->
								<div class="talk-bubble">
									<div class="talktext">
										<p></p>
									</div>
								</div>
								<p class="time"></p>
							</div>
							<div class="textme">
								<!--메세지창+시간-->
								<div class="talk-bubblet">
									<div class="talktext">
										<p></p>
									</div>
								</div>
								<p class="timeme"></p>
							</div>

						</div>
						<div id="text" class="clearfix">
							<textarea id="insert" class="col-xs-7" placeholder="메세지를 입력하세요"></textarea>
							<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
							<button class="btn btn-default btn-send" type="submit">보내기</button>
						</div>

					</div>

				</div>


			</div>


		</div>
	</div>

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
	
	//리스트 중 하나 눌렀을 때
	/* ${".Mlist"}.on("click", function(){
		
		$.ajax({
			url:"${pageContext.request.contextPath}/message/read?usersNo=${MessageVo.usersNo}",
	        type:"POST"
	    }).
		
	}); */
	
	
</script>
</html>