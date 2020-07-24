<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0">
</head>
<script src="https://code.jquery.com/jquery-3.5.1.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/purchase.css">
<script src="/resources/js/purchase.js" type="text/javascript"></script>
        
        
<body>
    <%@include file="/resources/main/header2.jsp" %>
  <div class="purchaseWrapper">
    <ul id="lists" class="basket col-md-8">

    </ul>
    <script>

    </script>


    <!-- 오른쪽메뉴 -->

    <div class="summary col-md-3">
      <div class="total">
        <div>Total</div>
        <div id="totalPrice">
          <p id="tPrice"></p>
          <p>원</p>
        </div>
      </div>
      <div class="payment">
        <div class="paymentOption">
          <a href="/payment/{id}"><img
              src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Kakao_CI_yellow.svg/512px-Kakao_CI_yellow.svg.png"
              height="auto" width="50" /> 카카오페이 가맹점</a>
        </div>
      </div>
      <div class="terms">
        <h4 class="headline-primary">이용약관</h4>
        <p class="review">유니커에서 판매중인 강의들은 환불이 불가능합니다<a href="terms/show">자세히보기</a>.</p>
        <p class="review"><strong>약관에 동의</strong> 하시면 결제가 진행됩니다</p>
        <p class="agreed">약관에 동의하였습니다</p>
        <button type="button" class="agree btn btn-purchase review">악관에 동의합니다</button>



        <form method="post" action="CallPaymentKakaoPay">
          <!--   결제정보셋팅 -->
          <input type="hidden" name="partner_order_id" value="<?=$partner_order_id?>"> <!-- 주문번호 -->
          <input type="hidden" name="partner_user_id" value="<?=$partner_user_id?>"> <!-- 사이트 주문유저id -->
          <input type="hidden" name="item_name" value="<?=$item_name?>"> <!-- 상품명 -->
          <input type="hidden" name="quantity" value="<?=$quantity?>"> <!-- 수량 -->
          <input type="hidden" name="total_amount" value="<?=$total_amount?>"> <!-- 상품총액 -->
          <input type="hidden" name="tax_free_amount" value="<?=$tax_free_amount?>"> <!-- 비과세금액 -->
          
          <button type="submit" class="agreed btn btn-purchase review">카카오페이 결제</button>

        </form>


      </div>
    </div>


  </div>





        <%@include file="/resources/main/footer.jsp" %>
</body>

