<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8"/>

        <!--CSS-->
        <link href="/project/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="/project/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="/project/assets/css/review.css" rel="stylesheet" type="text/css">
        <!-- 자바스크립트 -->
        <script type="text/javascript" src="/project/assets/js/jquery-1.12.4.js"></script>
        <script type="text/javascript" src="/project/assets/bootstrap/js/bootstrap.js"></script>


        <title>리뷰 하기</title>

    </head>

    <body>

      <div><!--class="modal fade"-->
        <div class="modal-dialog">
          <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <div class="modal-body">
              
              <div id="header">
                <h4 class="modal-title">리뷰하기</h4>
                <p class="small">개장수 님의 펫시팅에 대한 평과와 후기를 남겨주세요.</p>
              </div>
              <h4 class="q">펫시팅이 어땠나요?</h4>
              <p class="ex">펫시터가 펫시팅 중에 올려준 사진 혹은 요청사항에 대한 기준으로 평가를 부탁드립니다</p>
                          
              <div class="clearfix">
                <div class="left">식사</div>
                <div class="right">산책</div>
              </div>
              <div class="star row">
                <div class="rate col-md-6">
                      
                  <div class="rating">
                    <input type="radio" name="rating-star" class="rating__control screen-reader" id="rc1">
                    <input type="radio" name="rating-star" class="rating__control screen-reader" id="rc2">
                    <input type="radio" name="rating-star" class="rating__control screen-reader" id="rc3">
                    <input type="radio" name="rating-star" class="rating__control screen-reader" id="rc4">
                    <input type="radio" name="rating-star" class="rating__control screen-reader" id="rc5" checked>
                    <label for="rc1" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">1</span>
                    </label>
                    <label for="rc2" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">2</span>
                    </label>
                    <label for="rc3" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">3</span>
                    </label>
                    <label for="rc4" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">4</span>
                    </label>
                    <label for="rc5" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">5</span>
                    </label>	
                  </div>            
                </div>
                

                <div class="rate col-md-6">
                    
                  <div class="rating">
                    <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc6">
                    <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc7">
                    <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc8">
                    <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc9">
                    <input type="radio" name="rating-star2" class="rating__control screen-reader" id="rc10" checked>
                    <label for="rc6" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">1</span>
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


              <div class="clearfix">
                <div class="left">청결</div>
                <div class="right ">놀이</div>
              </div>
              <div class="star row">
                <div class="rate col-md-6">
                
                  <div class="rating">
                    <input type="radio" name="rating-star3" class="rating__control screen-reader" id="rc11">
                    <input type="radio" name="rating-star3" class="rating__control screen-reader" id="rc12">
                    <input type="radio" name="rating-star3" class="rating__control screen-reader" id="rc13">
                    <input type="radio" name="rating-star3" class="rating__control screen-reader" id="rc14">
                    <input type="radio" name="rating-star3" class="rating__control screen-reader" id="rc15" checked>
                    <label for="rc11" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">1</span>
                    </label>
                    <label for="rc12" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">2</span>
                    </label>
                    <label for="rc13" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">3</span>
                    </label>
                    <label for="rc14" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">4</span>
                    </label>
                    <label for="rc15" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">5</span>
                    </label>	
                  </div>            
                </div>

                <div class="rate col-md-6">
                    
                  <div class="rating">
                    <input type="radio" name="rating-star4" class="rating__control screen-reader" id="rc16">
                    <input type="radio" name="rating-star4" class="rating__control screen-reader" id="rc17">
                    <input type="radio" name="rating-star4" class="rating__control screen-reader" id="rc18">
                    <input type="radio" name="rating-star4" class="rating__control screen-reader" id="rc19">
                    <input type="radio" name="rating-star4" class="rating__control screen-reader" id="rc20" checked>
                    <label for="rc16" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">1</span>
                    </label>
                    <label for="rc17" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">2</span>
                    </label>
                    <label for="rc18" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">3</span>
                    </label>
                    <label for="rc19" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">4</span>
                    </label>
                    <label for="rc20" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">5</span>
                    </label>	
                                    
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="left col-md-12">소통</div>
              </div>
              <div class="dkd row">
                <div class="rate col-md-6">
                      
                  <div class="rating">
                    <input type="radio" name="rating-star5" class="rating__control screen-reader" id="rc21">
                    <input type="radio" name="rating-star5" class="rating__control screen-reader" id="rc22">
                    <input type="radio" name="rating-star5" class="rating__control screen-reader" id="rc23">
                    <input type="radio" name="rating-star5" class="rating__control screen-reader" id="rc24">
                    <input type="radio" name="rating-star5" class="rating__control screen-reader" id="rc25" checked>
                    <label for="rc21" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">1</span>
                    </label>
                    <label for="rc22" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">2</span>
                    </label>
                    <label for="rc23" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">3</span>
                    </label>
                    <label for="rc24" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">4</span>
                    </label>
                    <label for="rc25" class="rating__item">
                      <svg class="rating__star">
                        <use xlink:href="#star"></use>
                      </svg>
                      <span class="screen-reader">5</span>
                    </label>	
                                    
                  </div>
                </div>
                <div class="col-md-12"></div>
              </div>

              <h4 class="q">자세한 후기를 남겨주세요!</h4>  
              <div id="text" class="clearfix">
                <textarea id="insert" placeholder="펫시팅 후기를 남겨주세요"></textarea>
              </div>
                        
            </div>
            <div class="modal-footer">
              <button class="w-btn w-btn-indigo" type="button">
                올리기
            </button>
            </div>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog-->
      </div><!-- /.modal -->
      <svg xmlns="http://www.w3.org/2000/svg" style="display: none">
          <symbol id="star" viewBox="0 0 26 28">
            <path d="M26 10.109c0 .281-.203.547-.406.75l-5.672 5.531 1.344 7.812c.016.109.016.203.016.313 0 .406-.187.781-.641.781a1.27 1.27 0 0 1-.625-.187L13 21.422l-7.016 3.687c-.203.109-.406.187-.625.187-.453 0-.656-.375-.656-.781 0-.109.016-.203.031-.313l1.344-7.812L.39 10.859c-.187-.203-.391-.469-.391-.75 0-.469.484-.656.875-.719l7.844-1.141 3.516-7.109c.141-.297.406-.641.766-.641s.625.344.766.641l3.516 7.109 7.844 1.141c.375.063.875.25.875.719z"/>
          </symbol>
      </svg>

    </body>

</html>