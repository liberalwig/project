<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8"/>

<!--CSS-->
<link href="${pageContext.request.contextPath}/assets/yu/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/login.css" rel="stylesheet" type="text/css"/>


<!--자바스크립트-->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/yu/js/bootstrap.js"></script>

<title>로그인창</title>

</head>

<body>
<div><!--class="modal fade"-->
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">로그인 또는 회원가입</h4>
        </div>
        <div class="modal-body" class="container-fluid">
            <div class="row">
                <div class="col-xs-1">
                </div>
                <div class="col-xs-10">
                    <h1 id="wellcome">GairBnB에 오신것을 환영합니다.</h1>
                </div>
            </div>

            <div id="u-idPass" class="row">
                <div>
                        <input id="u-id" type="text" placeholder="아이디">
                </div>
    
                <div>
                        <input id="u-pass" type="password" placeholder="비밀번호">
                </div>
            </div>
            

            <div class="row">
                <div class="col-xs-1">
                </div>
                <div class="col-xs-10">
                    <button id="submit">계속</button>
                </div>
            </div>

            <div id="or-border" class="row">
                <div class="col-xs-5">
                    <hr>
                </div>
                <div id="or" class="col-xs-2">
                    또는
                </div>
                <div class="col-xs-5">
                    <hr>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-1">
                </div>
                <div class="col-xs-10 connect">
                    <img src="${pageContext.request.contextPath}/assets/images/login_facebook.png">
                    <h2 id="facebook">페이스북으로 로그인하기</h2> 
                </div>
            </div>

            <div class="row">
                <div class="col-xs-1">
                </div>
                <div class="col-xs-10 connect">
                    <img src="${pageContext.request.contextPath}/assets/images/login_google.png">
                    <h2 id="google">구글로 로그인하기</h2> 
                </div>
            </div>

            <div class="row">
                <div class="col-xs-1">
                </div>
                <div class="col-xs-10 connect">
                    <img id="naver-img" src="${pageContext.request.contextPath}/assets/images/login_naver.png">
                    <h2 id="naver">네이버로 로그인하기</h2> 
                </div>
            </div>

            <div class="row">
                <div class="col-xs-1">
                </div>
                <div id="joinH" class="col-xs-10 connect">
                    <img id="join-img" src="${pageContext.request.contextPath}/assets/images/join_img.jpg">
                    <h2 id="join-text">개어비앤비로 회원가입하기</h2> 
                </div>
            </div>
            
            
        </div>
      </div><!— /.modal-content —>
    </div><!— /.modal-dialog —>
  </div><!— /.modal —>
  </body>
  </html>