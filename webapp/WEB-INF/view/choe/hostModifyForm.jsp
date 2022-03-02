<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html> 
    <head>
        <meta charset="UTF-8"/>
        <title>펫시팅 정보수정 폼</title>
        
        <link href="${pageContext.request.contextPath}/assets/css/hostModify.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css"rel="stylesheet">

        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

        <script type="text/javascript" src="${pageContext.request.contextPath}/../assets/js/dragdrop.js"></script>
    </head>


    <body style="margin-top:90px;">
        <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

        <div id="wrap">
            <div id="container" class="clearfix">            
                <div id="aside">
                    <ul id="b-aside">
                       <li class="menu">예약관리<img src="${pageContext.request.contextPath}/assets/images/guestModifyForm_01dropdown.png" class="aside-img"></li>
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

                <div id="content" class="clearfix">
                    <div class="content-head">
                        <p id="nav">마이 사이트 > 내 정보 수정</p>
                        <p id="now">펫시팅 정보 수정</p>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-11">
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
                            <form id="frm_textArea" name="frm_textArea">
                                <textarea id="intro"
                                        placeholder="텍스트를 입력하세요."
                                        class="form-control"
                                        id="textArea_byteLimit"
                                        name="textArea_byLimit"
                                        onkeyup="fn_checkByte(this)">   
                                </textarea>
                            </form>
                        </div>
    
                        <div id="joinQuestion" class="row Q">
                            <h4>04. 펫에 대해 알고싶은 내용</h4>
                            <p>질문을 적어보세요! 작성하신 내용은 회원들이 펫 설명 및 요청사항을 작성할때 참고 할 수 있습니다!</p>
                            <textarea id="intro" ></textarea>
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

                        <button type="submit" class="btn btn-default btn-lg btn-block">펫시팅 정보 수정 완료</button>
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