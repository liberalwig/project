<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>회원정보 수정 폼</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/userModify.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
</head>


<body>
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>

	<div id="wrap">
		<div id="container" class="clearfix">
			<div id="aside">
				<ul id="b-aside">
					<li class="menu">예약관리<img src="${pageContext.request.contextPath}/assets/images/userModifyForm_01dropdow.png" class="aside-img"></li>
					<ul id="s-aside" class="hide">
						<li>대기내역</li>
						<li>예약신청관리</li>
					</ul>
					<li>나의 강아지</li>
					<li>메세지</li>
					<li>찜목록</li>
					<li>내 정보 수정</li>
				</ul>
			</div>

			<div id="content">
				<div class="content-head" style="margin-top: 50px;">
					<p id="nav">마이 사이트 > 내 정보 수정</p>
					<p id="now">회원 정보 수정</p>
				</div>

				<div id="content-main">

					<div class="col-xs-11">
						<div class="row">
							<div id="joinQuestion" class="row Q">
								<div class="photo">
									<h4>01. 사진 업로드</h4>
									<p>
										<span class="label label-info">참고</span> 최대 8장입니다. 강아지와 찍은 다정한 사진, 강아지를 능숙하게 훈련하는 사진이라면 더 좋겠죠?
									</p>
									<div class="contents">
										<div class="upload-box">
											<div id="drop-file" class="drag-file">
												<img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
												<p class="message">마우스로 드래그해서 이미지를 추가해주세요</p>
												<img src="" alt="미리보기 이미지" class="preview">
											</div>
											<div id="drop-file" class="drag-file">
												<img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
												<p class="message">마우스로 드래그해서 이미지를 추가해주세요</p>
												<img src="" alt="미리보기 이미지" class="preview">
											</div>
											<input id="fileInput" type="file" multiple="false" accept="image/*" onchange="uploadPicture()"> <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)" accept="image/png, image/jpeg, image/gif">
										</div>
									</div>
								</div>
							</div>

							<div id="joinQuestion" class="row Q">
								<h4>이름</h4>
								<input type="text" class="form-control" placeholder="existingNickname" style="width: 200px"><br>
							</div>

							<div id="joinQuestion" class="row Q">
								<h4>비밀번호</h4>
								<input type="password" name="password" class="form-control" placeholder="12345" style="width: 200px"><br>
							</div>

							<div id="joinQuestion" class="row Q">
								<h4>전화번호</h4>
								<form name="phonenumber">
									<input type="tel" name="phone1" value="010" style="width: 50px"> - <input type="tel" name="phone2" placeholder="1234" style="width: 50px"> - <input type="tel" name="phone3" placeholder="5678" style="width: 50px">
								</form>
							</div>

							<div id="joinQuestion" class="row LQ"></div>
							<h4>이메일</h4>
							<form name='frm'>
								<input name="e1" id="e1" type="text" style="width: 120px" placeholder="existingEmail"> &nbsp; @ &nbsp; <input name="e2" type="text" style="width: 120px" value=""> <select name="emailServer" id="emailServer" onchange="input_email();">
									<option value="">직접입력</option>
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="nate.com">yahoo.com</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
									<option value="hotmail.com">hotmail.com</option>
								</select>
							</form>
						</div>

						<div id="joinQuestion" class="row LQ"></div>
						<button type="submit" class="btn btn-default btn-lg btn-block">내 정보 수정 완료</button>
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
</script>

</html>