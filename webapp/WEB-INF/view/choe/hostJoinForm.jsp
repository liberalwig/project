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

        <!--<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/dragdrop.js"></script>-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/maxLength.js"></script>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    </head>

	<body>
		<c:import url="/WEB-INF/view/includes/header.jsp"></c:import>

        <div id="wrap">
            <div id="container" class="clearfix">  
                <div class="col-xs-2">
                </div> 
            
           
                <div class="col-xs-8">
                    <div class="row">
                    <!-- 01. 사진 업로드 -->
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
                                            <input id = "fileInput" type = "file" multiple = "false"  accept = "image/*" onchange = "uploadPicture()">
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
                                    <input type="checkbox" class="btn-check" autocomplete="off">
                                    <label class="tag"for="btn-check">
                                    	
                                    	<c:forEach items="${requestScope.keyList}" var="vo"></label>
                                    	<span class="tag">${vo.keywordName}</span>
                                    	</c:forEach>
                                </td>
                            </tr>

                            <tr height="50">
                                <td>
                                    <input type="checkbox" class="btn-check" autocomplete="off">
                                    <label class="tag"for="btn-check">
                                    	
                                    	<c:forEach items="${requestScope.keyList}" var="vo"></label>
                                    	<span class="tag">${vo.keywordName}</span>
                                    	</c:forEach>

                                </td>
                            </tr>
                        </table>
                    </div>

                    <div id="joinQuestion" class="row Q">
                        <h4>03. 자기소개</h4>
                        <p>회원님을 소개해주세요!</p>
                        <textarea id="input-intro" name="contents" maxlength="200" placeholder="텍스트를 입력하세요"></textarea>
                    </div>

                    <div id="joinQuestion" class="row Q">
                        <h4>04. 펫에 대해 알고싶은 내용</h4>
                        <p><span class="label label-info">참고</span> 질문을 적어보세요! 작성하신 내용은 회원들이 펫에 대한 설명 사항을 작성할 때 참고 할 수 있습니다!</p>
                        <textarea id="input-question" maxlength="200" placeholder="텍스트를 입력하세요"></textarea>
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
                        <p><span class="label label-info">참고</span> 설정하신 금액은 1박, 1마리당 가격입니다.</p>
                            <input id="input-cost" type="number" name="cost" placeholder="1박의 돌봄료를 입력해주세요" required class="cost" value="10000"> 원(1박/1마리당)
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
                                        
                    <button id="submitbtn" type="submit" class="btn btn-default btn-lg btn-block" >펫시터 등록 완료</button><br><br>
                </div>
            </div>
        </div>

        <c:import url="/WEB-INF/view/includes/footer.jsp"></c:import>
    </body>

    <script>
    
        //펫시터 등록 완료를 눌렀을때
        $("#submitbtn").on("click", function(){
        	console.log("펫시터 등록 버튼을 클릭")
        
        // 폼에 데이터를 모아야 한다
        var inputIntro = $("#input-intro").val(); //03번_자기소개
        var inputAsking = $("#input-asking").val(); //04번_질문사항
       	
        
        // 객체로 묶어준다
        var hostVo = {
        	
        }
        
         const sendingData = new FormData();
         sendingData.append('input-intro',inputIntro);         
         sendingData.append('input-asking',inputIntro); 
          
        // 확인한다  
         console.log(inputIntro);
         console.log(inputAsking);
          
          
        // 값들이 없을 경우의 알람
           if(photo == null){
                alert("최소 한 장의 사진을 업로드해주세요!")
                return false;
            }
        
            if(input-intro == null) {
                alert("회원님 소개를 해주세요!")
                return false;
            }

            if(input-question == null) {
                alert("질문을 적어주세요!")
                return false;
            }
        
            if(cost == '0') {
                alert("가격을 책정해주세요!")
                return false;
            }    
            
            // 파라미터 방식으로 요청한다
            $.ajax({
                url: '${pageContext.request.contextPath }/host/Join',
                type: 'POST',
                processData: false,  // 데이터 객체를 문자열로 바꿀지에 대한 값이다. true면 일반문자...
                contentType: false,  // 해당 타입을 true로 하면 일반 text로 구분되어 진다.
                data: sendingData,  //위에서 선언한 fromdata
                
                success: function(result){
                    console.log(result);
                    render(guestbookVo, "up");

                    $("#input-intro").val("");
                    $("#input-asking").val("");                    
                    
                    
                },
                
                error : function(e){
                console.log(e);
              }
            })
           //값들이 잘 작성이 되어 있는지 체크
           /*var textarea = $('#input-question').val();
           var textarea = $('#input-intro').val();*/
       });   
                
            


    </script>

</html>