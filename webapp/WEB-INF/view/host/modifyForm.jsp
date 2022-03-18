<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>회원정보 수정 폼</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/hostModify.css" rel="stylesheet" type="text/css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
</head>


<body>
	<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>

	<div id="wrap">
		<div id="container" class="clearfix">
			<div id="aside">
				<ul id="b-aside">
					<li class="menu">예약관리<img src="${pageContext.request.contextPath}/assets/images/images/aside_img.png" class="aside-img"></li>
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
				<div class="content-head" >
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

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
	<script>
    //이미지 담아놓을 배열
    
    var inputFileList = new Array();
   
	 // 파일 업로드 했을때 이벤트
	 $('input[name=images]').on('change', function(e) {
	    var files = e.target.files;
	    var filesArr = Array.prototype.slice.call(files);
	
	 	// 업로드 된 파일 유효성 체크
	 	if (filesArr.length > 8) {
	 		alert("이미지는 최대 8개까지 업로드 가능합니다.");
	 		$('input[name=images]').val();
	 		return;
	 	}
	
	     filesArr.forEach(function(f) { 
	 		inputFileList.push(f);    // 이미지 파일을 배열에 담는다.
	 	 });
	 });
    //등록 완료를 눌렀을때
    $("#hostinsertbtn").on("click", function(){
    	//키워드 관련
    	var keywordList = [];
		$("[name=keyword]:checked").each(function(){
		    var chk = $(this).val();
		    keywordList.push(chk);
		});
		console.log(keywordList);
    	//사진 관련
    	console.log("inputFileList: " + inputFileList);
    	let formData = new FormData($('#uploadForm')[0]);  // 폼 객체

    	for (let i = 0; i < inputFileList.length; i++) {
    		formData.append("images", inputFileList[i]);  // 배열에서 이미지들을 꺼내 폼 객체에 담는다.
    	}

    	//호스트 관련
    	var hostVo = {
    		usersNo : ${sessionScope.authUser.usersNo},
    		zipcode : $(".zipcode").val(),
    		adress1 : $(".adress1").val(),
    		adress2 : $(".adress2").val(),
    		adress3 : $(".adress3").val(),
    		intro : $("#intro").val(),
    		asking : $("#asking").val(),
    		hostcost : $("#cost").val()
    	}
    	console.log(hostVo);
    	
		//호스트 등록
		$.ajax({
			//요청할때
			url : "${pageContext.request.contextPath}/photo/${path}",
			type : "post",
			data : hostVo,
			
			success : function(hostNo) {
				console.log(hostNo);
				//호스트 사진 등록
				$.ajax({
					//요청할때
					url : "${pageContext.request.contextPath}/host2/hostphotoinsert?hostNo="+hostNo,    
					enctype:"multipart/form-data",
					type : "post",
					data : formData,
					contentType : false,
					processData : false,
					success : function(hostNo) {
						//호스트 키워드 등록
						$.ajax({
							//요청할때
							url : "${pageContext.request.contextPath}/host2/hostkeywordinsert?hostNo="+hostNo,    
							type : "post",
							data : {
								keywordNo : keywordList,
							},
							
							success : function(hostNo) {
								console.log(hostNo);
								alert("펫시터 신청이 완료되었습니다.");
								window.location.replace("${pageContext.request.contextPath}/main");
							},
							error : function(XHR, status, error) {
								console.error(status + " : " + error);
							}
						}); 
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				}); 
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		}); 
    	

    
    //2. 팝업을 이용하여 도로명 주소와 지번 주소 모두 보여주기
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                 if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
    </script>

</body>


</html>