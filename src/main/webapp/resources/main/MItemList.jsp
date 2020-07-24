<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

</head>
<style>

</style>

<body>
<!--   <div id="midBg" ></div> -->
  
  <div id="desc"  class="d-flex justify-content-center">
  
  <div id="desc_point"></div>
  <div id="dleft">
  <div class="desc_word"><h2>코로나 종식기념</h2><h5>배우고싶은 것이 있어 <br>온라인 강의를 선택한 당신!</h5>
  <p class="desc_important"><strong>오프라인강의</strong>를 통해 능력을 더욱 키워봐요!</p>
  <div id="desc_eventBttn">할인강의찾기</div>
  </div>
  </div>
  <div id="dright">
  <img id="virus1" src="/resources/main/img/virus.png">
  <img id="virus2" src="/resources/main/img/virus2.png"> 
  
  
  </div>
  </div>
  
  
  
  <div id="desc_mid"> <div class="descMid_word">당신이 가지고있는 많은 재능을 펼쳐줄
  <p id="uniqr">유니커</p><a href="" id="descMidBttn">여기</a> 에서 강의를 홍보해보세요!</div> </div>
 
  
  
 
  <div class="MitemLists">




    <div class="Mrecommend">

      <div id="listNameBox" class="d-flex justify-content-center">
        <div class="listTitle">추천강의</div>
      </div>


      <div class="d-flex justify-content-center">


        <div id="mainTopList">


          <div class="card-deck">

            <div class="card card-1 ">
              <img id="mlistThumb" class="card-img-top" src="ì¸ë¤ì¼ì´ë¯¸ì§">
              <div class="card-body">
                <h5 id="mlistLecTitle" class="card-title">한달만에 끝내는 리액트</h5>
                <p id="mlistLecPrice" class="card-text">39,500</p>
                <p>원</p>
                <div id="mlistLecStartDate" class="card-text">
                  <p id="lecStartDate">05/29</p> ~<p id="lecEndDate">06/10</p>
                </div>
              </div>
            </div>



            <div class="card card-1 ">
              <img id="mlistThumb" class="card-img-top" src="ì¸ë¤ì¼ì´ë¯¸ì§">
              <div class="card-body">
                <h5 id="mlistLecTitle" class="card-title">한달만에 끝내는 리액트</h5>
                <p id="mlistLecPrice" class="card-text">39,500</p>
                <p>원</p>
                <div id="mlistLecStartDate" class="card-text">
                  <p id="lecStartDate">05/29</p> ~<p id="lecEndDate">06/10</p>
                </div>
              </div>
            </div>




            <div class="card card-1 ">
              <img id="mlistThumb" class="card-img-top" src="ì¸ë¤ì¼ì´ë¯¸ì§">
              <div class="card-body">
                <h5 id="mlistLecTitle" class="card-title">한달만에 끝내는 리액트</h5>
                <p id="mlistLecPrice" class="card-text">39,500</p>
                <p>원</p>
                <div id="mlistLecStartDate" class="card-text">
                  <p id="lecStartDate">05/29</p> ~<p id="lecEndDate">06/10</p>
                </div>
              </div>
            </div>
			
<!-- 			이부분은 따로데이터 뽑아요.위엣것들이랑 속성이 다릅니다-->            
			<div id="card-point" class="card card-1 ">
              <img id="mlistThumb" class="card-img-top" src="ì¸ë¤ì¼ì´ë¯¸ì§">
              <div class="card-body">
                <h5 id="mlistLecTitleBig" class="card-title">한달만에 끝내는 리액트</h5>
                
                <div class="card-text big">
                <p id="mlistLecPrice" >39,500</p>
              <p>원</p>
              <div id="mlistLecStartDateBig" class="card-text">
                <p id="lecStartDate">05/29</p> ~<p id="lecEndDate">06/10</p>
              </div>
              </div>
            </div>



          </div>





        </div>

      </div>
      <!-- mainTopList -->
    </div>

  
  
  <!-- recommend   -->
  <div class="Mnew">

    <div id="listNameBox" class="d-flex justify-content-center">
      <div class="listTitle">새로운강의</div>
    </div>

    <div class="d-flex justify-content-center">



      <div id="mainBidList">


        <div class="card-deck">

<!-- 			이부분은 따로데이터 뽑아요.아랫것들이랑 속성이 다릅니다 -->

          <div id="card-point" class="card card-1 ">
            <img id="mlistThumb" class="card-img-top" src="ì¸ë¤ì¼ì´ë¯¸ì§">
            <div class="card-body">
              <h5 id="mlistLecTitleBig" class="card-title">한달만에 끝내는 리액트</h5>
             <div class="card-text big">
             <p id="mlistLecPrice" >39,500</p>
              <p>원</p>
              <div id="mlistLecStartDate" class="card-text">
                <p id="lecStartDate">05/29</p> ~<p id="lecEndDate">06/10</p>
              </div>
              </div>
          </div>
          </div>


          <div class="card card-1 ">
            <img id="mlistThumb" class="card-img-top" src="ì¸ë¤ì¼ì´ë¯¸ì§">
            <div class="card-body">
              <h5 id="mlistLecTitle" class="card-title">한달만에 끝내는 리액트</h5>
              <p id="mlistLecPrice" class="card-text">39,500</p>
              <p>원</p>
              <div id="mlistLecStartDate" class="card-text">
                <p id="lecStartDate">05/29</p> ~<p id="lecEndDate">06/10</p>
              </div>
            </div>
          </div>


          <div class="card card-1 ">
            <img id="mlistThumb" class="card-img-top" src="ì¸ë¤ì¼ì´ë¯¸ì§">
            <div class="card-body">
              <h5 id="mlistLecTitle" class="card-title">한달만에 끝내는 리액트</h5>
              <p id="mlistLecPrice" class="card-text">39,500</p>
              <p>원</p>
              <div id="mlistLecStartDate" class="card-text">
                <p id="lecStartDate">05/29</p> ~<p id="lecEndDate">06/10</p>
              </div>
            </div>
          </div>


          <div class="card card-1">
            <img id="mlistThumb" class="card-img-top" src="ì¸ë¤ì¼ì´ë¯¸ì§">
            <div class="card-body">
              <h5 id="mlistLecTitle" class="card-title">한달만에 끝내는 리액트</h5>
              <p id="mlistLecPrice" class="card-text">39,500</p>
              <p>원</p>
              <div id="mlistLecStartDate" class="card-text">
                <p id="lecStartDate">05/29</p> ~<p id="lecEndDate">06/10</p>
              </div>
            </div>

          </div>



</div>

        </div>
        </div>
        </div>
        </div>
        </div>
  
      <!-- mainBttmList -->
    


  
  <!-- new -->
 

  
  <!-- MitemLists -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
  </script>
</body>

</html>