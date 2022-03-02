<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/project/assets/css/booking.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/project/assets/js/jquery-1.12.4.js"></script>
</head>
<body>
	<div id="aside">
		<ul id="b-aside">
			<li class="menu">예약관리<img src="/project/assets/images/aside_img.png" class="aside-img"></li>
			<ul id="s-aside" class="hide">
				<li>결제 대기내역</li>
				<li>예약관리</li>
			</ul>
			<li>메세지</li>
			<li>찜목록</li>
			<li>내 정보 수정</li>
		</ul>
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
</script>
</html>