<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>펫시터 수정</title>
	<!-- CSS -->
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
			<c:import url="/WEB-INF/view/includes/aside.jsp"></c:import>
			<div id="content">
				<div id="content-head" >
					<div id="location" class="clearfix">
						<ul>
							<li>마이페이지</li>
							<li>내 정보 수정</li>
							<li class="last">펫시터 정보 수정</li>
						</ul>
					</div>
					<h1>펫시터 정보 수정</h1>
				</div><!-- //content-head -->
				<div id="content-main">
				<div id="joinform" class="col-xs-8">
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
						<input type="text" id="sample4_postcode" class="zipcode" placeholder="우편번호">
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample4_jibunAddress" class="adress1" placeholder="지번주소"><br>
						<input type="text" id="sample4_detailAddress" class="adress2" placeholder="상세주소">
						<input type="text" id="sample4_extraAddress" class="adress3" placeholder="참고항목">
                    </div>
                </div>

                <div id="joinQuestion" class="row Q"> 
                    <h3>06. 돌봄료</h3>
                    <p class="exp lead">펫시팅의 기본 금액을 설정해 주세요. 1박, 1마리 가격입니다.</p><br>
                        <input id="cost" type="number" name="cost" placeholder="1박의 돌봄료를 입력해주세요" required class="cost" value="10000"> 원
                </div>
                </div>
                </div>
				</div><!-- //content-main -->
			</div><!-- //content -->
		</div><!-- //container -->
	</div><!-- //wrap -->
<script>
</script>
</body>
</html>