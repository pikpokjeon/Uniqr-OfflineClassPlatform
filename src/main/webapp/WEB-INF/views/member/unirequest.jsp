<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>유니커신청</title>

  <style>

  </style>

</head>

<body>
  ​<div class="dashWrapper">
    <div class="container">

        <form id="minfoWrapper">
          <fieldset id="memberinfo">

            <div id="subtitle">
              <h3>유니커신청</h3>
            </div>

          </fieldset>

          <ul>


            <li>
              <label for="a" class="title">전문분야</label>

              <select class="custom-select my-1 mr-sm-2 form-control" id="category">
                <option>카테고리</option>
                <option value="entexam">입시과외</option>
                <option value="itdev">IT개발</option>
                <option value="design">디자인</option>
                <option value="finance">재무회계</option>
                <option value="selfdev">자기계발</option>
                <option value="marketing">마케팅</option>
                <option value="lifestyle">라이프스타일</option>
                <option value="photo">사진</option>
                <option value="health">건강'피트니스</option>
                <option value="music">음악</option>
                <option value="foreignlang">외국어</option>
                <option value="scholar">학문</option>
              </select>


            </li>


            <li>
              <label for="a" class="title">직업</label>
              <input class="form-control" id="inputJob" value="">
            </li>


            <li>
              <label for="a" class="title">소개</label>
              <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
            </li>



            <li>
              <button id="submit" type="button" onclick="" value="" class="btn btn-primary redBttn">신청하기</button>

            </li>

          </ul>
        </form>
      </div>
    </div>


</body>

</html>