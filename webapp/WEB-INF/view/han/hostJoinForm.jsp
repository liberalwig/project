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
</head>

<body>
<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>
    <div id="wrap">
        <div id="container" class="clearfix">
      		<div id="joinform" class="col-xs-8">
            	<div style="text-align:center;">
            		<h2>펫시터 등록하기</h2>
            		<p class="lead">게어비엔비에서 펫시팅을 시작하고 반려견을 돌봐주며 수입을 만들어보세요.</p>	
            	</div>
                <div class="row">
                    <div id="joinQuestion" class="row Q">
                        <div class="photo">
                            <h3>01. 펫시터 사진</h3>
                            <p class="exp lead">당신의 펫시팅을 어필 할 수 있는 사진을 올려보세요. 파일형식은 png, jpg, jpeg으로 최대 8장까지 올릴 수 있어요.</p>
							<form method="post" enctype="multipart/form-data"> 
								<input type="file" name="images" multiple="multiple" accept=".png, .jpg, .jpeg">
							</form>
                        </div>
                    </div>  
               
                <div id="joinQuestion" class="row Q">
                    <h3>02. 키워드 선택</h3>
                    <p class="exp lead">당신에게 해당되는 키워드를 선택해주세요. 중복체크가 가능해요.</p>
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
	                                <input type="checkbox" class="btn-check" name="keyword" id="btn-check${vo.keywordNo}" value="${vo.keywordNo}">
	                                <label class="tag" for="btn-check${vo.keywordNo}">${vo.keywordName}</label>
	                            </td>
	                        </c:forEach>
                        </tr>
                        <tr height="50">
	                        <c:forEach items="${requestScope.keywordList}" var="vo" begin="7" end="13">
	                        	<td>
	                                <input type="checkbox" class="btn-check" name="keyword" id="btn-check${vo.keywordNo}" value="${vo.keywordNo}">
	                                <label class="tag keyword" for="btn-check${vo.keywordNo}">${vo.keywordName}</label>
	                            </td>
	                        </c:forEach>
                        </tr>
                    </table>
                </div>

                <div id="joinQuestion" class="row Q">
                    <h3>03. 자기소개</h3>
                    <p class="exp lead">당신을 소개해주세요. 최대 200자까지 작성 할 수 있어요.</p>
                    <textarea id="intro" maxlength="200" class="form-control" rows="3"></textarea>
                </div>

                <div id="joinQuestion" class="row Q">
                    <h3>04. 질문</h3>
                    <p class="exp lead">펫시팅 전에 알아야 할 내용을 적어보세요. 최대 200자까지 작성 할 수 있어요.</p><br>
                    <textarea id="asking" maxlength="200" class="form-control" rows="3"></textarea>
                </div>

                <div id="joinQuestion" class="row Q">
                    <h3>05. 주소</h3>
                    <p class="exp lead">당신의 주소를 입력해주세요.</p><br>
                    <div id="address">
						<input type="text" id="sample6_postcode" class="zipcode" placeholder="우편번호">
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample6_address" class="adress1" placeholder="주소"><br>
						<input type="text" id="sample6_detailAddress" class="adress2" placeholder="상세주소">
						<input type="text" id="sample6_extraAddress" class="adress3" placeholder="참고항목">
                    </div>
                </div>

                <div id="joinQuestion" class="row Q"> 
                    <h3>06. 돌봄료</h3>
                    <p class="exp lead">펫시팅의 기본 금액을 설정해 주세요. 1박, 1마리 가격입니다.</p><br>
                        <input id="cost" type="number" name="cost" placeholder="1박의 돌봄료를 입력해주세요" required class="cost" value="10000"> 원
                </div>

                <div id="joinQuestion" class="row LQ">
                    <div id="agreement">
                    <h3>서비스 약관</h3>
	                    <p class="exp lead">
	                        GairBnB는 모두가 환영받을 수 있고 서로 신뢰할 수 있는 커뮤니티를 만들어 나가고자 합니다.<br>
	                        펫시터는 펫시팅 요청을 수락하거나 거절 할 수 있습니다.<br>
	                        펫시터는 펫시팅의 과정을 매일 업로드 해야하며, <br>
	                        개스트는 펫시터의 시팅능력을 5가지 항목으로 점수를 매길 수 있고 강아지를 돌보는 능력을 반영합니다.<br>
	                        GairBnB의 원칙에 동의하신다면, 아래 체크박스를 체크해주시고 펫시터 등록을 완료해주세요.
	                    </p>
                    </div>
                    
                    <div class="checkbox">
                        <label><input type="checkbox">동의합니다</label>
                    </div>
                </div>
                <button type="button" id="hostinsertbtn" class="btn btn-primary btn-lg" style="width:200px; margin:0px 0px 0px 420px;">펫시터 등록</button>
            	<br>
            	<br>
            </div>
        </div>
    </div>
    </div>
    	<c:import url="/WEB-INF/view/includes/footer.jsp"></c:import>
    
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
    	var	keywordList = new Array();
    	var chk_arr = $(":checkbox[name='keyword']:checked");
/*     	for(i=0; chk_arr.length; i++){
    		keywordList.push(chk_arr[i].value);
    	}
		console.log(keywordList); */
    	//사진 관련
    	console.log("inputFileList: " + inputFileList);
    	let formData = new FormData($('#uploadForm')[0]);  // 폼 객체

    	for (let i = 0; i < inputFileList.length; i++) {
    		formData.append("images", inputFileList[i]);  // 배열에서 이미지들을 꺼내 폼 객체에 담는다.
    	}
    	//호스트 관련
    	var hostVo = {
    		usersNo : 2,
    		zipcode : $(".zipcode").val(),
    		adress1 : $(".adress1").val(),
    		adress2 : $(".adress2").val(),
    		adress3 : $(".adress3").val(),
    		intro : $("#intro").val(),
    		asking : $("#asking").val(),
    		cost : $("#cost").val()
    	}
    	console.log(hostVo);
    	
		//호스트 등록
		$.ajax({
			//요청할때
			url : "${pageContext.request.contextPath}/host2/hostinsert",
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
							data : keywordList,
							contentType : false,
							processData : false,
							success : function(hostNo) {
								console.log(hostNo);
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
    	

    });
    
    //2. 팝업을 이용하여 도로명 주소와 지번 주소 모두 보여주기
        function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
    </script>
    </body>
</html>