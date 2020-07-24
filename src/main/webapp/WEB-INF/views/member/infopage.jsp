<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원정보</title>
  <link rel="stylesheet" href="/resources/main/css/Dashboard.css">
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


</head>


<style>

</style>

<body>
<script>
    window.addEventListener("load", function (event) {

      //대시보드

      //클릭로드함수
      $(document).ready(function ($) {
      $("#loadpage").load("clanding");

        //일반회원 메뉴       

        //내정보
        $('#mInfo').on('click', function () {
          $('#loadpage').load('cinfo'); 
        });
        //주문내역
        $('#recentOrder').on('click', function () {
          $('#loadpage').load('crecentorder');
        });

        //장바구니
        $('#cart').on('click', function () {
          $('#loadpage').load('ccart');
        });
        //강의현황
        $('#lecStatus').on('click', function () {
          $('#loadpage').load('clecstatus');
        });
        //유니커신청
        $('#uniRequest').on('click', function () {
          $('#loadpage').load('unirequest');
        });
        //회원탈퇴
        $('#mExit').on('click', function () {
          $('#loadpage').load('cexit');
        });

        //유니커메뉴

        //유니커 나의강의보기
        $('#uniLec').on('click', function () {
          $('#loadpage').load('unilec');
        });
        // 유니커계좌
        $('#uniAccount').on('click', function () {
            $('#loadpage').load('uniaccount');
         });

      });

    });
</script>


  <!-- 필수헤더 -->
 <%@include file="/resources/main/header1.jsp" %>

  <div class="dash">
    <div id="title">
      <h3>회원대시보드</h3>
    </div>
    <div id="DashWrap" class="row">
      <div id="dleft" class="col-4">
        <div id="menuList" class="list">
          <div id="welcome">
          <p>${member.mname}님 환영합니다</p>
            <p>님 환영합니다</p>
          </div>
          <button id="mInfo" class="menu" type="button">개인정보</button>
          <button id="recentOrder" class="menu" type="button">주문내역</button>
          <button id="cart" class="menu" type="button">장바구니'찜</button>
          <button id="lecStatus" class="menu" type="button">강의현황</button>
          <button id="mExit" class="menu" type="button">회원탈퇴</button>
        </div>

        <div id="menuList" class="list">
          <div class="uniqr">유니커</div>
                    <button id="uniRequest" class="menu" type="button">유니커신청</button>
          <button id="uniLec" class="menu" type="button">나의강의</button>
          <button class="menu" type="button" onclick="location.href='/seller/uploadsell?mid=${member.mid}'">강의등록</button>
                    <button id="uniAccount" class="menu" type="button">유니커계좌</button>
        </div>

      </div>


      <!-- 메뉴 각페이지 로드되는부분 -->
      <div class="col-8">
      <div class="box" id="loadpage"></div>
      </div>
    </div>
    <!-- right -->


  </div>
  <!-- 글로벌푸터 -->
   <%@include file="/resources/main/footer.jsp" %>



 <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
    integrity = "sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin = "anonymous" >
  </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
  </script>
</body>

</html>