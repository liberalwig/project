<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!--CSS-->
    <link href="/project/assets/yu/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="/project/assets/css/yu_main.css" rel="stylesheet" type="text/css">
    <link href="/project/assets/css/booking.css" rel="stylesheet" type="text/css"/>
	<link href="/project/assets/css/poto-upload.css" rel="stylesheet" type="text/css"/>

    <!--자바스크립트-->
    <script type="text/javascript" src="/project/assets/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="/project/assets/bootstrap/js/bootstrap.js"></script>
</head>

<body>
    
	<!-- header -->
    <c:import url="/WEB-INF/view/includes/header.jsp"></c:import>

    <div id="wrap">
        
        <div id="container" class="clearfix">
        
            <!-- aside -->
            <c:import url="/WEB-INF/view/includes/aside.jsp"></c:import>

            <div id="content" class="clearfix">
                <div id="content-head">
					<div id="location" class="clearfix">
						<ul>
							<li>마이페이지</li>
							<li>예약관리</li>
                            <li>예약신청관리</li>
							<li class="last">예약상세</li>
						</ul>
					</div>
					<h1>예약상세</h1>
				</div>

                <div id="content-main" class="clearfix container-fluid">

                    <div id="btn-area1">
                        <button class="btn btn-default add-img">목록으로 돌아가기</button>
                    </div>

                    <div id="gallery" class="col-xs-7">
                        <!-- 사진 넣는 공간 -->
                        <div class="info">
                            <h2>펫사진</h2>
                            <hr>
                            
                            <div class="wrapper">
                                <div class="clearfix">
                                    <div class="img-date"><h3>22-02-05 토요일</h3></div>
                                    <div class="img-btn"><button id="imgupload" class="btn btn-default add-img" data-toggle="modal" data-target="#imgupdateModal">이미지 업로드</button></div>
                                </div>
                                <div>
                                    <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
                                            <div class="caption">놀이</div>
                                        </div>
                                    </div>
                                
                                    <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
                                            <div class="caption">산책</div>
                                        </div>
                                    </div>
                                
                                    <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
                                            <div class="caption">식사</div>
                                        </div>
                                    </div>
                                    
                                    <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_gray.png" class="wrapper-img">
                                            <div class="caption">청결</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="wrapper">
                                <div class="clearfix">
                                    <div class="img-date"><h3>22-02-04 금요일</h3></div>
                                    <div class="img-btn"><button class="btn btn-default add-img">이미지 업로드</button></div>
                                </div>
                                <div>
                                    <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_img1.jpg" class="wrapper-img">
                                            <div class="caption">놀이</div>
                                        </div>
                                    </div>
                                
                                    <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_img2.jpg" class="wrapper-img">
                                            <div class="caption">산책</div>
                                        </div>
                                    </div>
                                
                                    <div class="item">
                                        <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/l867sBU.jpg" class="wrapper-img">
                                            <div class="caption">식사</div>
                                        </div>
                                    </div>
                                    
                                    <div class="item">
                                        <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/7cQCk5I.jpg" class="wrapper-img">
                                            <div class="caption">청결</div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="wrapper">
                                <div class="clearfix">
                                    <div class="img-date"><h3>22-02-04 토요일</h3></div>
                                    <div class="img-btn"><button class="btn btn-default add-img">이미지 업로드</button></div>
                                </div>
                                <div>
                                   <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_img1.jpg" class="wrapper-img">
                                            <div class="caption">놀이</div>
                                        </div>
                                    </div>
                                
                                    <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_img2.jpg" class="wrapper-img">
                                            <div class="caption">산책</div>
                                        </div>
                                    </div>
                                
                                    <div class="item">
                                        <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/l867sBU.jpg" class="wrapper-img">
                                            <div class="caption">식사</div>
                                        </div>
                                    </div>
                                    
                                    <div class="item">
                                        <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/7cQCk5I.jpg" class="wrapper-img">
                                            <div class="caption">청결</div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="wrapper">
                                <div class="clearfix">
                                    <div class="img-date"><h3>22-02-04 토요일</h3></div>
                                    <div class="img-btn"><button class="btn btn-default add-img">이미지 업로드</button></div>
                                </div>
                                <div>
                                   <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_img1.jpg" class="wrapper-img">
                                            <div class="caption">놀이</div>
                                        </div>
                                    </div>
                                
                                    <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_img2.jpg" class="wrapper-img">
                                            <div class="caption">산책</div>
                                        </div>
                                    </div>
                                
                                    <div class="item">
                                        <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/l867sBU.jpg" class="wrapper-img">
                                            <div class="caption">식사</div>
                                        </div>
                                    </div>
                                    
                                    <div class="item">
                                        <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/7cQCk5I.jpg" class="wrapper-img">
                                            <div class="caption">청결</div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="wrapper">
                                <div class="clearfix">
                                    <div class="img-date"><h3>22-02-04 토요일</h3></div>
                                    <div class="img-btn"><button id="imgupload" class="btn btn-default add-img">이미지 업로드</button></div>
                                </div>
                                <div>
                                    <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_img1.jpg" class="wrapper-img">
                                            <div class="caption">놀이</div>
                                        </div>
                                    </div>
                                
                                    <div class="item">
                                        <div class="polaroid"><img src="/project/assets/images/bookingDetail_img2.jpg" class="wrapper-img">
                                            <div class="caption">산책</div>
                                        </div>
                                    </div>
                                
                                    <div class="item">
                                        <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/l867sBU.jpg" class="wrapper-img">
                                            <div class="caption">식사</div>
                                        </div>
                                    </div>
                                    
                                    <div class="item">
                                        <div class="polaroid"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/7cQCk5I.jpg" class="wrapper-img">
                                            <div class="caption">청결</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="information" class="col-xs-5">
                        <!-- 게스트 정보 넣는 공간 -->
                        <div class="info">
                            <h2>게스트 정보</h2>
                            <hr>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-6">이름</div>
                                    <div class="col-xs-6">게스트1</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">연락처</div>
                                    <div class="col-xs-6">010-0000-0000</div>
                                </div>
                            </div>
                        </div>

                        <!-- 예약정보 넣는 공간 -->
                        <div class="info">
                            <h2>예약 정보</h2>
                            <hr>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-6">위치</div>
                                    <div class="col-xs-6">서울특별시 관악구 봉천동</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">펫설명/요청사항</div>
                                    <div class="col-xs-6">하루에 1번 꼭 산책을 시켜주세요!</div>
                                </div>
                            </div>
                        </div>

                        <!-- 결제정보 넣는 공간 -->
                        <div class="info">
                            <h2>결제 정보</h2>
                            <hr>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-6">가격(1박)</div>
                                    <div class="col-xs-6">₩ 20,000</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">시팅일수</div>
                                    <div class="col-xs-6">4일</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">반려견 수</div>
                                    <div class="col-xs-6">2마리</div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6">총 결제 금액</div>
                                    <div class="col-xs-6">₩ 160,000</div>
                                </div>
                            </div>
                        </div>

                        <!-- 리뷰 넣는 공간 -->
                        <div class="info container-fluid">
                            <h2>리뷰 & 별점</h2>
                            <hr>
                            <div id="review" class="row">
                                <div class="col-xs-6">
                                    <h3>식사</h3>
                                    <div class="rating">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc6" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc7" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc8" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc9">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc10">
                                        <label for="rc6" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        </label>
                                        <label for="rc7" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">2</span>
                                        </label>
                                        <label for="rc8" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">3</span>
                                        </label>
                                        <label for="rc9" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">4</span>
                                        </label>
                                        <label for="rc10" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">5</span>
                                        </label>   
                                    </div>
                                </div>

                                <div class="col-xs-6 review2">
                                    <h3>산책</h3>
                                    <div class="rating">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc6" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc7" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc8" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc9">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc10">
                                        <label for="rc6" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        </label>
                                        <label for="rc7" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">2</span>
                                        </label>
                                        <label for="rc8" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">3</span>
                                        </label>
                                        <label for="rc9" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">4</span>
                                        </label>
                                        <label for="rc10" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">5</span>
                                        </label>   
                                    </div>
                                </div>
                            </div>

                            <div id="review" class="row">
                                <div class="col-xs-6">
                                    <h3>청결</h3>
                                    <div class="rating">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc6" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc7" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc8" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc9">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc10">
                                        <label for="rc6" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        </label>
                                        <label for="rc7" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">2</span>
                                        </label>
                                        <label for="rc8" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">3</span>
                                        </label>
                                        <label for="rc9" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">4</span>
                                        </label>
                                        <label for="rc10" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">5</span>
                                        </label>   
                                    </div>
                                </div>

                                <div class="col-xs-6 review2">
                                    <h3>놀이</h3>
                                    <div class="rating">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc6" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc7" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc8" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc9">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc10">
                                        <label for="rc6" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        </label>
                                        <label for="rc7" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">2</span>
                                        </label>
                                        <label for="rc8" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">3</span>
                                        </label>
                                        <label for="rc9" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">4</span>
                                        </label>
                                        <label for="rc10" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">5</span>
                                        </label>   
                                    </div>
                                </div>
                            </div>


                            <div id="review" class="row">
                                <div class="col-xs-6">
                                    <h3>소통</h3>
                                    <div class="rating">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc6" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc7" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc8" checked="checked">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc9">
                                        <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc10">
                                        <label for="rc6" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        </label>
                                        <label for="rc7" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">2</span>
                                        </label>
                                        <label for="rc8" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">3</span>
                                        </label>
                                        <label for="rc9" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">4</span>
                                        </label>
                                        <label for="rc10" class="rating__item">
                                        <svg class="rating__star">
                                            <use xlink:href="#star"></use>
                                        </svg>
                                        <span class="screen-reader">5</span>
                                        </label>   
                                    </div>
                                </div>
                            </div>

                            <div id="review" class="row">
                                <div class="col-xs-6 review-text">
                                    <h3>후기</h3>
                                    <textarea>좋아요~</textarea>
                                </div>
                            </div>


                        </div>

                    </div>

                </div>
            
            
            </div>
        </div>
    </div>
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none">
        <symbol id="star" viewBox="0 0 26 28">
          <path d="M26 10.109c0 .281-.203.547-.406.75l-5.672 5.531 1.344 7.812c.016.109.016.203.016.313 0 .406-.187.781-.641.781a1.27 1.27 0 0 1-.625-.187L13 21.422l-7.016 3.687c-.203.109-.406.187-.625.187-.453 0-.656-.375-.656-.781 0-.109.016-.203.031-.313l1.344-7.812L.39 10.859c-.187-.203-.391-.469-.391-.75 0-.469.484-.656.875-.719l7.844-1.141 3.516-7.109c.141-.297.406-.641.766-.641s.625.344.766.641l3.516 7.109 7.844 1.141c.375.063.875.25.875.719z"/>
        </symbol>
    </svg>
    
    <div><!--class="modal fade"-->
    <div class="modal fade" id="imgupdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	          <h4 class="modal-title">이미지 업로드하기</h4>
	        </div>
	        <div class="modal-body" class="container-fluid">
	            <div class="row">
	              <div class="col-xs-2">
	              </div>
	
	              <div class="col-xs-8">
	                <div id="root">
	                  <div id="cate">
	                    <label>카테고리</label>
	                    <select class="bo_w_select">
	                      <option>식사</option>  
	                      <option>산책</option>  
	                      <option>청결</option>
	                      <option>놀이</option>
	                    </select>
	                  </div>
	
	                    <label>글제목</label>
	                    <input type="text">
	                  
	                  <hr>
	                  <div class="contents">
	                    <div class="upload-box">
	                      <div id="drop-file" class="drag-file">
	                        <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image" >
	                        <p class="message">마우스로 드래그해서 이미지를 추가해주세요</p>
	                        <img src="" alt="미리보기 이미지" class="preview">
	                      </div>
	                      <label class="file-label" for="chooseFile">확인</label>
	                      <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)" accept="image/png, image/jpeg, image/gif">
	                    </div>
	                  </div>
	                </div>
	              </div>
	
	            </div>
	        </div>
	      </div><!— /.modal-content —>
	    </div><!— /.modal-dialog —>
	  </div><!— /.modal —>
	  	
  	
</body>

<script>
    function DropFile(dropAreaId, fileListId) {

      let dropArea = document.getElementById(dropAreaId);
      let fileList = document.getElementById(fileListId);

      function preventDefaults(e) {
        e.preventDefault();
        e.stopPropagation();
      }

      function highlight(e) {
        preventDefaults(e);
        dropArea.classList.add("highlight");
      }

      function unhighlight(e) {
        preventDefaults(e);
        dropArea.classList.remove("highlight");
      }

      function handleDrop(e) {
        unhighlight(e);
        let dt = e.dataTransfer;
        let files = dt.files;

        handleFiles(files);

        const fileList = document.getElementById(fileListId);
        if (fileList) {
          fileList.scrollTo({ top: fileList.scrollHeight });
        }
      }

      function handleFiles(files) {
        files = [...files];
        // files.forEach(uploadFile);
        files.forEach(previewFile);
      }

      function previewFile(file) {
        console.log(file);
        renderFile(file);
      }

      function renderFile(file) {
        let reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onloadend = function () {
          let img = dropArea.getElementsByClassName("preview")[0];
          img.src = reader.result;
          img.style.display = "block";
        };
      }

      dropArea.addEventListener("dragenter", highlight, false);
      dropArea.addEventListener("dragover", highlight, false);
      dropArea.addEventListener("dragleave", unhighlight, false);
      dropArea.addEventListener("drop", handleDrop, false);

      return {
        handleFiles
      };
    }

    const dropFile = new DropFile("drop-file", "files");
  </script>
</html>