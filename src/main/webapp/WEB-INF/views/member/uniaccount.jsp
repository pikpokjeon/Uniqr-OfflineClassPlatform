<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>유니커계좌</title>

  <style>

  </style>

</head>

<body>
  ​<div class="dashWrapper">
    <div class="container">


        <form id="minfoWrapper">
          <fieldset id="memberinfo">

            <div id="subtitle">
              <h3>유니커계좌</h3>
            </div>
          </fieldset>

          <ul>


            <li>

              <label for="a" class="title">잔액</label>
              <input class="form-control" id="inputBudget" value="" readonly placeholder="100000원">
            </li>


            <li>
              <label for="a" class="title">은행사</label>
              <input class="form-control" id="inputBank" value="$">
            </li>


            <li>
              <label for="a" class="title">계좌번호</label>
              <input class="form-control" id="inputAccNum" value="$">
            </li>

            <!-- 충전하기 -->
            <li id="">
              <label for="a" class="title"></label>
              <input class="form-control" id="inputCharge" value="$">
              <button id="chargeSubmit" type="button" onclick="" value="" class="btn btn-primary">충전하기</button>

            </li>

            <!-- 출금하기 -->
            <li>
              <label for="a" class="title"></label>
              <input class="form-control" id="inputwithdraw" value="">
              <button id="WithdrawSubmit" type="button" onclick="" value="" class="btn btn-primary">출금신청</button>

            </li>


          </ul>
        </form>
      </div>
    </div>


</body>

</html>