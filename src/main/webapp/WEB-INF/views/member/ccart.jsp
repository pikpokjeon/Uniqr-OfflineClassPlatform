<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <title>장바구니</title>
  <style>

  </style>
</head>

<body>
  ​<div class="dashWrapper">
    <div class="container">

        <div id="subtitle">
          <h3>장바구니</h3>
        </div>



        <!-- 장바구니 -->
        <form action ="purchase" method="post">
          <table id="commonTable">
            <tbody>

              <thead id="tableHead">
              <tr>
                <td id="pNum">번호</td>
                <td id="pThumb">썸네일</td>
                <td id="pName">상품명</td>
                <td id="pPrice">금액</td>
              <tr>
              </thead>

              <tr>
                <td id="center"><input id="checkbox" type="checkbox">
                  <p id="pCount">1</p>
                </td>
                <td>
                  <img id="selthum" src="">
                </td>
                <td>
                  <p id="selname">리액트 한달만에 내기</p>
                </td>
                <td id="center">
                  <p id="selprice">222000</p>
                  <p>원</p>
                </td>
              </tr>

              <tr>
                <td id="center"><input id="checkbox" type="checkbox">
                  <p id="pCount">1</p>
                </td>
                <td>
                  <img id="selthum" src="">
                </td>
                <td>
                  <p id="selname">리액트 한달만에 내기</p>
                </td>
                <td id="center">
                  <p id="selprice">222000</p>
                  <p>원</p>
                </td>
              </tr>

            </tbody>
          </table>
          <div class="basketbtn">
            <button id="buyBttn" type="submit" class="btn btn-primary">구매하기</button>
            <button type="button" class="btn btn-secondary">삭제하기</button>
          </div>
        </form>

        <!-- 찜목록 -->

      </div>
    </div>

</body>

</html>