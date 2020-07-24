<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>상품페이지</title>

  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js">
  </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js">
  </script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/resources/board/css/detail.css" >
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >

</head>

<body>

  <div class="detailBg"></div>


  <div class="detailRight">
    <div id="thumbImg">썸네일이미지나 미리보기비디오</div>

    <div class="optionBox">
      <p>옵션</p>

      <div class="option">
        <label for="schedule">기간선택</label>
        <select name="schedule" id="schedule">
          <option value="volvo">기간에따라 js추가</option>
        </select>
      </div>

    </div>
    <!-- 옵션박스 -->
    <div class="priceBox">
      <p id="price">220,000</p>원
    </div>
    <button id="purchase" type="button" class="btn btn-primary btn-lg">장바구니</button>
    <button id="buyNow" type="button" class="btn btn-outline-secondary btn-lg">지금구매</button>

    <svg id="like" class="bi bi-heart-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
      xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" />
    </svg>
    <!-- 찜하기 하트 -->

  </div>
  <!-- 우측메뉴 -->


  <div class="detailLeft">
    <div class="productHead">
      <ul>
        <li>
          <div id="category">IT개발</div>
          <!-- 상품의 카테고리표시 -->
        </li>
        <li>
          <div id="productTitle">리액트 한달만에 끝내기</div>
          <!-- 상품이름 -->
        </li>
        <li>

          <div class="info">
            <div id="rateStar">별점표시</div>
            <div class="rateinfo">리뷰<p id="reviewCount">0</p> 개 | 누적수강<p id="totalBuy">0</p> 명</div>
            <!-- 리뷰갯수 누적수강(구매)표시 -->
        </li>
      </ul>




    </div>

  </div>
  <!-- 제목 별점등 상품 정보 -->

  <div class="productInfoSection">
    <div class="whatLearn">
      <p class="subTitle">배울내용</p>
      <ul id="learnList">
        <!-- 자바스크립트로 불러와서 리스트 추가해야함 -->
        <li><svg class="bi bi-check" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
              d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z" />
          </svg>
          <p id="learn">소프트웨어 공학수학</p>
        </li>
        <li><svg class="bi bi-check" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
              d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z" />
          </svg>
          <p id="learn">소프트웨어 공학수학</p>
        </li>
        <li><svg class="bi bi-check" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
              d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z" />
          </svg>
          <p id="learn">소프트웨어 공학수학</p>
        </li>

      </ul>

    </div>
    <!-- 배울내용 -->

    <!-- 자바스크립트로 불러와서 리스트 추가해야함 -->
    <div class="whatLearn">
      <p class="subTitle">강의설명</p>
      <div id="desc">squid. 3 wolf
        moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
        Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
        shoreditch et. Nihil anim keffiyed nesciunt sapiente ea</div>

    </div>
    <!-- 강의설명끝 -->
    <div class="whatLearn">
      <p class="subTitle">강의대상</p>
      <ul id="whoLearn">
        <!-- 자바스크립트로 불러와서 리스트 추가해야함 -->
        <li> <svg class="bi bi-person-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
          </svg>
          <p id="who">웹사이트 만들고싶은 사람</p>
        </li>
        <li> <svg class="bi bi-person-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
          </svg>
          <p id="who">웹사이트 만들고싶은 사람</p>
        </li>
        <li> <svg class="bi bi-person-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
          </svg>
          <p id="who">웹사이트 만들고싶은 사람</p>
        </li>

      </ul>

    </div>
    <!-- 강의대상끝 -->

    <div class="whatLearn">
      <p class="subTitle">요구사항</p>
      <ul id="learnReq">
        <!-- 자바스크립트로 불러와서 리스트 추가해야함 -->
        <li><svg class="bi bi-check" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
              d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z" />
          </svg>
          <p id="require">html/css 기초</p>
        </li>
        <li><svg class="bi bi-check" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
              d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z" />
          </svg>
          <p id="require">html/css 기초</p>
        </li>
        <li><svg class="bi bi-check" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
              d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z" />
          </svg>
          <p id="require">html/css 기초</p>
        </li>

      </ul>

    </div>
    <!-- 요구사항끝 -->


    <!-- 설명 강의대상 요구사항끝 -->

    <div class="profileInfo">
      <p class="subTitle">강의를 진행하는 유니커</p>


      <div class="card mb-3" style="max-width: 100%;">
        <div class="row no-gutters">
          <div class="col-md-4">
            <img id="profileImg" class="rounded-circle" src="https://instaker.com/user-img.png" value="">

            <ul>
              <li><svg class="bi bi-star-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                  xmlns="http://www.w3.org/2000/svg">
                  <path
                    d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                </svg>강사평점<p id="rate">4.5</p>
              </li>
              <li><svg class="bi bi-chat-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                  xmlns="http://www.w3.org/2000/svg">
                  <path
                    d="M8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6-.097 1.016-.417 2.13-.771 2.966-.079.186.074.394.273.362 2.256-.37 3.597-.938 4.18-1.234A9.06 9.06 0 0 0 8 15z" />
                </svg>
                <p id="reviewCount">23</p>개의 리뷰
              </li>
              <li><svg class="bi bi-cursor-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                  xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M14.082 2.182a.5.5 0 0 1 .103.557L8.528 15.467a.5.5 0 0 1-.917-.007L5.57 10.694.803 8.652a.5.5 0 0 1-.006-.916l12.728-5.657a.5.5 0 0 1 .556.103z" />
                </svg>
                <p id="lecCount">2</p>개의 강의
              </li>
            </ul>
          </div>
          <div class="col-md-8">
            <div id="profileCard" class="card-body">
              <h5 class="card-title">
                <p id="name">전예진</p>
                <p></p>
                <p id="job">프론트엔드 개발자</p>
              </h5>
              <p id="profileDesc" class="card-text">This is a wider card with supporting text below as a natural
                lead-in to additional content. This content is a little bit longer.</p>

            </div>
          </div>
        </div>
      </div>


    </div>
    <!-- 프로필박스 끝 -->

    <!-- 강의 콘테츠와 목차 -->
    <div class="lecInfo">
      <p class="subTitle">강의 콘텐츠와 목차</p>

      <div id="lecImgWrapper">
        <!-- 첨부이미지 -->
        <img id="lecAddImg" src="">
      </div>
      <!-- 이미지 박스-->



      <!-- 목차 아코디언 -->
      <div class="accordion" id="accordionExample">
        <div class="card">
          <div class="card-header" id="headingOne">
            <h2 class="mb-0">
              <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse"
                data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                <svg class="bi bi-plus-circle" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                  xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M8 3.5a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5H4a.5.5 0 0 1 0-1h3.5V4a.5.5 0 0 1 .5-.5z" />
                  <path fill-rule="evenodd" d="M7.5 8a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0V8z" />
                  <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                </svg> 목차제목목차제목목차제목목차제목
              </button>
            </h2>
          </div>
          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
            <div class="card-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
              moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
              Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
              shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
              proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim
              aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
        <!-- 항목하나 -->

        <div class="card">
          <div class="card-header" id="lecHead">
            <h2 class="mb-0">
              <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse"
                data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                <svg class="bi bi-plus-circle" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                  xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M8 3.5a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5H4a.5.5 0 0 1 0-1h3.5V4a.5.5 0 0 1 .5-.5z" />
                  <path fill-rule="evenodd" d="M7.5 8a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0V8z" />
                  <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                </svg> 목차제목목차제목목차제목목차제목
              </button>
            </h2>
          </div>
          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
            <div class="card-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
              moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
              Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
              shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
              proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim
              aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>



      </div>
      <!-- 목차 아코디언 끝-->




    </div>
    <!-- 강의 콘테츠와 목차 끝  -->

    <!-- 문의 리뷰 부분 시작 -->


  </div>





  </div>


</body>

</html>