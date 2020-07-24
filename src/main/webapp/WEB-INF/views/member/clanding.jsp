<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
​

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <title>회원대시보드</title>

</head>
​

<body>
  ​<div class="dashWrapper">
    <img class="rounded-circle" src="https://instaker.com/user-img.png" value="">

    <div class="container">
      <table>
        <h4>기본정보</h4>
        <tr class="myinfo">
          <th>이름</th>
          <th>{{이름}}</th>
          <th>연락처</th>
          <th>{{휴대번호}}</th>
        </tr>
        <tr>
          <th id="maddress">주소</th>
          <td colspan="3">{{주소}}</td>
        </tr>
        <tr>
          <th id="email">이메일</th>
          <td colspan="3">{{이메일}}</td>
        </tr>
      </table>


      <form>
        <table>
          <h4>장바구니</h4>
          <thead>
            <td id="pNum">상품번호</td>
            <td id="pThumb">썸네일</td>
            <td id="pName">상품명</td>
            <td id="pPrice">금액</td>
          </thead>

          <tr>
            <td><input id="checkbox" type="checkbox">
              <p id="pCount">1</p>
            </td>

            <td>
              <img id="selthum" src=""></td>
            <td>
              <p id="selname">리액트 한달만에 내기</p>
            </td>

            <td>
              <p id="selprice">222000</p>
            </td>


          </tr>

        </table>
        <table>
          <tr>
            <td>총금액</td>
          </tr>
        </table>
        <div class="basketbtn">
          <button id="buyBttn" type="button" class="btn btn-primary">구매하기</button>
          <button type="button" class="btn btn-secondary">삭제하기</button>
        </div>
      </form>




      <table>
        <h4>최근주문</h4>
        <tr class="rctorder">
          <th id="ono">주문번호</th>
          <th id="totalprice">총금액</th>
          <th id="date">날짜</th>
        </tr>
        <tr>
          <th></th>
          <th></th>
          <th></th>
        </tr>
      </table>
    </div>
  </div>
</body>
​

</html>