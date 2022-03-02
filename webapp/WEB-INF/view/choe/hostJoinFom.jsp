<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>펫시터 등록 폼</title>

        <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/hostJoin.css" rel="stylesheet" type="text/css">

        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/dragdrop.js"></script>
        <script type="text/javascript" src=".${pageContext.request.contextPath}/assets/js/maxLength.js"></script>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    </head>

	<body>
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

        <div id="wrap">
            <div id="container" class="clearfix">  
                <div class="col-xs-2">
                </div> 
            
                <div class="col-xs-8">
                    <div class="row">
                        <div id="joinQuestion" class="row Q">
                            <div class="photo">
                                <h4>01. 사진 업로드</h4>
                                <p><span class="label label-info">참고</span> 최대 8장입니다. 강아지와 찍은 다정한 사진, 강아지를 능숙하게 훈련하는 사진이라면 더 좋겠죠?</p>
                                <div class="contents">
                                        <div class="upload-box">
                                            <div id="drop-file" class="drag-file">
                                                <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image" >
                                                <p class="message">마우스로 드래그해서 이미지를 추가해주세요</p>
                                                <img src="" alt="미리보기 이미지" class="preview">
                                            </div>
                                            <div id="drop-file" class="drag-file">
                                                <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image" >
                                                <p class="message">마우스로 드래그해서 이미지를 추가해주세요</p>
                                                <img src="" alt="미리보기 이미지" class="preview">
                                            </div>
                                            <input id = "fileInput" type = "file" multiple = "false" accept = "image/*" onchange = "uploadPicture()">
                                            <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)" accept="image/png, image/jpeg, image/gif">
                                        </div>
                                </div>
                            </div>
                        </div>  
                   
                    <div id="joinQuestion" class="row Q">
                        <h4>02. 키워드 선택</h4>
                        <p>회원님에게 해당되는 키워드를 선택해주세요! (중복체크 가능)</p>
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
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check1" autocomplete="off">
                                    <label class="tag" for="btn-check1">집 근처 공원</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check2" autocomplete="off">
                                    <label class="tag" for="btn-check2">펫 용품 구비</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check3" autocomplete="off">
                                    <label class="tag" for="btn-check3">집 근처 동물병원</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check4" autocomplete="off">
                                    <label class="tag" for="btn-check4">응급처치 가능</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check5" autocomplete="off">
                                    <label class="tag" for="btn-check5">돌봄 경력 3년이상</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check6" autocomplete="off">
                                    <label class="tag" for="btn-check6">전문교육 수료</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check7" autocomplete="off">
                                    <label class="tag" for="btn-check7">보험 가입</label>
                                </td>
                            </tr>
                            <tr height="50">
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check8" autocomplete="off">
                                    <label class="tag"for="btn-check8">약물투여 가능</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check9" autocomplete="off">
                                    <label class="tag" for="btn-check9">매일 산책 가능</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check10" autocomplete="off">
                                    <label class="tag" for="btn-check10">비흡연</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check11" autocomplete="off">
                                    <label class="tag" for="btn-check11">개가 없음</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check12" autocomplete="off">
                                    <label class="tag" for="btn-check12">어린이 없음</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check13" autocomplete="off">
                                    <label class="tag" for="btn-check13">마당 있음</label>
                                </td>
                                <td>
                                    <input type="checkbox" class="btn-check" id="btn-check14" autocomplete="off">
                                    <label class="tag" for="btn-check14">응답 빠름</label>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div id="joinQuestion" class="row Q">
                        <h4>03. 자기소개</h4>
                        <p>회원님을 소개해주세요!</p>
                        <textarea id="intro" name="contents" maxlength="200" onKeyUp="javascript:fnChkByte(this,'80')" placeholder="텍스트를 입력하세요."></textarea>
                    </div>

                    <div id="joinQuestion" class="row Q">
                        <h4>04. 펫에 대해 알고싶은 내용</h4>
                        <p><span class="label label-info">참고</span> 질문을 적어보세요! 작성하신 내용은 회원들이 펫에 대한 설명 사항을 작성할 때 참고 할 수 있습니다!</p>
                        <textarea id="intro" maxlength="200" placeholder="텍스트를 입력하세요."></textarea>
                    </div>

                    <div id="joinQuestion" class="row Q">
                        <h4>05. 펫시팅 주소</h4>
                        <p>강아지를 돌볼 장소는 어디인가요? 주소를 입력해주세요!</p>
                        <div id="address">
                            <input type="text" id="sample6_postcode" placeholder="우편번호">
                            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                            <input type="text" id="sample6_address" placeholder="주소"><br>
                            <input type="text" id="sample6_detailAddress" placeholder="상세주소">
                            <input type="text" id="sample3_extraAddress" placeholder="참고항목">
                        </div>
                    </div>

                    <div id="joinQuestion" class="row Q"> 
                        <h4>06. 돌봄료 책정</h4>
                        <p><span class="label label-info">참고</span> 설정하신 금액은 1박, 1마리당 가격입니다..</p>
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
                                        
                    <button type="submit" class="btn btn-default btn-lg btn-block">펫시터 등록 완료</button><br><br>
                </div>
            </div>
        </div>
    </body>

    <script>
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
</html>