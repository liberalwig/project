<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>펫시터 등록 폼</title>
	<!-- CSS-->
	<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/css/hostJoin.css" rel="stylesheet" type="text/css">
	<!-- JS -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
	<script src="https://unpkg.com/dropzone@5/dist/min/dropzone.min.js"></script>
	<link rel="stylesheet" href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css" type="text/css" />
</head>

<body>
<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>
    <div id="wrap">
        <div id="container" class="clearfix">
      		<div id="joinform" class="col-xs-8">
            	<div style="text-align:center;">
            		<h2>펫시터 등록하기</h2>
            		<p class="exp">게어비엔비에서 펫시팅을 시작하고 반려견을 돌봐주며 수입을 만들어보세요.</p>	
            	</div>
                <div class="row">
                    <div id="joinQuestion" class="row Q">
                        <div class="photo">
                            <h3>01. 펫시터 사진</h3>
                            <p class="exp">강아지와 찍은 다정한 사진, 강아지를 능숙하게 훈련하는 사진을 올려서 어필하세요. 최대 8장까지 올릴 수 있습니다.</p>
							<form name="fname"> 
								<div class="dropzone" id="fileDropzone"></div> <button id="btn-upload-file">서버전송</button> 
							</form>
                        </div>
                    </div>  
               
                <div id="joinQuestion" class="row Q">
                    <h3>02. 키워드 선택</h3>
                    <p class="exp">회원님에게 해당되는 키워드를 선택해주세요. 중복체크가 가능합니다</p>
                    <table>
                        <colgroup>
                            <col width="140px">
                            <col width="140px">
                            <col width="140px">
                            <col width="140px">
                            <col width="140px">
                            <col width="140px">
                            <col width="140px">
                        </colgroup>
                        <tr height="50">
	                        <c:forEach items="${requestScope.keywordList}" var="vo" begin="0" end="6">
	                        	<td>
	                                <input type="checkbox" class="btn-check" id="btn-check${vo.keywordNo}" autocomplete="off">
	                                <label class="tag" for="btn-check${vo.keywordNo}">${vo.keywordName}</label>
	                            </td>
	                        </c:forEach>
                        </tr>
                        <tr height="50">
	                        <c:forEach items="${requestScope.keywordList}" var="vo" begin="7" end="13">
	                        	<td>
	                                <input type="checkbox" class="btn-check" id="btn-check${vo.keywordNo}" autocomplete="off">
	                                <label class="tag" for="btn-check${vo.keywordNo}">${vo.keywordName}</label>
	                            </td>
	                        </c:forEach>
                        </tr>
                    </table>
                </div>

                <div id="joinQuestion" class="row Q">
                    <h3>03. 자기소개</h3>
                    <textarea id="intro" name="contents" maxlength="200" onKeyUp="javascript:fnChkByte(this,'80')" placeholder="텍스트를 입력하세요."></textarea>
                </div>

                <div id="joinQuestion" class="row Q">
                    <h3>04. 펫에 대해 알고싶은 내용</h3>
                    <p class="exp">질문을 적어보세요! 작성하신 내용은 회원들이 펫에 대한 설명 사항을 작성할 때 참고 할 수 있습니다!</p><br>
                    <textarea id="asking" maxlength="200" placeholder="텍스트를 입력하세요."></textarea>
                </div>

                <div id="joinQuestion" class="row Q">
                    <h3>05. 주소</h3>
                    <div id="address">
						<input type="text" id="sample4_postcode" class="zipcode" placeholder="우편번호">
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample6_address" class="adress1" placeholder="지번주소"><br>
						<span id="guide" style="color:#999;display:none"></span>
						<input type="text" id="sample4_detailAddress" class="adress2" placeholder="상세주소">
						<input type="text" id="sample4_extraAddress" class="adress3" placeholder="참고항목">
                    </div>
                </div>

                <div id="joinQuestion" class="row Q"> 
                    <h3>06. 돌봄료</h3>
                    <p class="exp">설정하신 금액은 1박, 1마리당 가격입니다.</p><br>
                        <input id="cost" type="number" name="cost" placeholder="1박의 돌봄료를 입력해주세요" required class="cost" value="10000"> 원(1박/1마리당)
                </div>

                <div id="joinQuestion" class="row LQ">
                    <div id="agreement">
                        GairBnB는 개스트 님과 펫시터 님간 원활한 소통과 신뢰를 지향합니다.<br>
                        개스트와의 매칭을 수락한 펫시터는 GariBnB에서 제안 드리는 바에 따라 개스트에게 강아지를 돌보는 모습을 증빙합니다.<br>
                        강아지를 성실히 돌본 펫시터는 GairBnB에서 보장하는 퍼피력을 획득하게 되며 퍼피력은 펫시터가 강아지를 돌보는 능력을 반영합니다.<br>
                        펫시터는 원하지 않는 개스트와의 매칭을 거절할 수 있습니다.
                        GairBnB의 원칙에 동의하십니까?
                    </div>
                    
                    <div class="checkbox">
                        <label><input type="checkbox">동의합니다</label>
                    </div>
                </div>
                                    
                <button type="submit" id="hostinsertbtn" class="btn btn-default btn-lg btn-block">펫시터 등록 완료</button><br><br>
            </div>
        </div>
    </div>
    </div>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    //3. 등록 완료를 눌렀을때
    $("#hostinsertbtn").on("click", function(){
    	var hostVo = {
    		//usersNo : , 로그인 만들어지면 세션에서 가져오기
    		zipcode : $(".zipcode").val(),
    		adress1 : $(".adress1").val(),
    		adress2 : $(".adress2").val(),
    		adress3 : $(".adress3").val(),
    		intro : $("#intro").val(),
    		asking : $("#asking").val(),
    		cost : $("#cost").val()
    	}
    	
		//호스트 등록 요청
		$.ajax({
			//요청할때
			url : "${pageContext.request.contextPath}/host2/hostinsert",    
			type : "post",
			data : hostVo,
			
			success : function(hostVo) {
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
    });
    
    //1. 사진 업로드
    //fileDropzone dropzone 설정할 태그의 id로 지정 
    Dropzone.options.fileDropzone = { url: 'Fileupload', //업로드할 url (ex)컨트롤러) 
    init: function () { /* 최초 dropzone 설정시 init을 통해 호출 */ 
    	var submitButton = document.querySelector("#btn-upload-file"); 
    	var myDropzone = this; //closure 
    	submitButton.addEventListener("click", function () { 
    		console.log("업로드"); //tell Dropzone to process all queued files 
    		myDropzone.processQueue(); 
    	}); 
    }, 
   	autoProcessQueue: false, // 자동업로드 여부 (true일 경우, 바로 업로드 되어지며, false일 경우, 서버에는 올라가지 않은 상태임 processQueue() 호출시 올라간다.) 
    clickable: true, // 클릭가능여부 
    thumbnailHeight: 90, // Upload icon size 
    thumbnailWidth: 90, // Upload icon size 
    maxFiles: 8, // 업로드 파일수 
    maxFilesize: 10, // 최대업로드용량 : 10MB 
    parallelUploads: 8, // 동시파일업로드 수(이걸 지정한 수 만큼 여러파일을 한번에 컨트롤러에 넘긴다.) 
   	addRemoveLinks: true, // 삭제버튼 표시 여부 
   	dictRemoveFile: '삭제', // 삭제버튼 표시 텍스트 
   	uploadMultiple: true, // 다중업로드 기능 
   	};
    
    
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
                document.getElementById("sample6_address").value = data.jibunAddress;
                
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
</html>