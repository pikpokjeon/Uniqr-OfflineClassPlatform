<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
  <link rel="stylesheet" type="text/css" href="/resources/board/detail.css" >
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="/resources/board/comment.css">
</head>
<style>
#Loadpage{
width:100%;
height:auto;
}

ul{
    list-style-type:none;
}
#content{
   overflow:auto;
   scrolle: auto;
     

}
  #content li {
    padding-left: 2%;
    height: 32px;
    font-size: 16px;
    letter-spacing: 1px;
  }
    #content li p {
    display: inline-block;
  }
  
#chatarea1{

}
#chatarea{
width: 100%;
    border: 2px solid #e6e6e6;
    border-radius: 5px;
    box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.14);
    min-height: 300px;
    max-height: 300px;
    overflow-y: scroll;
    background: #f9f9f9;
}
  #chatname {
    font-weight: 600;
    min-width: 80px;
  }
    #message {
width: 78%;
    padding: 10px;
    background: #efefef;
    border: 0;
    font-size: 17px;
    padding-left: 50px;
    letter-spacing: 1px;
  }
    #chatpage {
    width: 100%;
  }
    .chatWrapper {
    width: 100%;

    overflow: hidden;
  }
    #sendBttn,#infoBttn {
    width: 10%;
    padding: 7px;
    border: 1px solid #c3c3c3;
  }
  #needLogin{
  width: 100%;
    background: #e2e2e2;
    letter-spacing: -1px;
    text-align: center;
    padding: 10px 0;
    font-weight: 500;
  }
</style>
<body>
<script>
$(document).ready(function($){
   /* $("#loadpage").load("/resources/main/HTMLPage.html"); */
   
     
   // 변수를 선언합니다.
    var socket = io.connect("http://127.0.0.1:52273/");
     const url = window.location.search;

   const urlA = url.substr(1);

   const array = urlA.split('=');

   const array2 = array[1].split('&');  

   

   const mid=array[2];

   const room = array2[0];
   

   socket.emit('join',room); 
   // 이벤트를 연결합니다.
    socket.on('message', function (data) {
        // 추가할 문자열을 만듭니다.
        var output = '';
        output += '<li class="chatLi">';
        output += '    <p id="chatname">' + data.name +'</p>'+ '<p>'+ data.message +'</p>' ;
        output += '</li>';

        // 문서 객체를 추가합니다.
        $('#content').append(output);

    });
    
   
    // 버튼을 클릭할 때
    $('button').click(function () {
        socket.emit('message', {
            name: mid,
            message: $('#message').val(),
            room:room
        });
        $("#message").val('');
    });
  
    
    window.onbeforeunload = function() {
       alert("안녕하세요");
      socket.emit('disconnection',socket);
       return;
   }
    
    $("#message").keypress(function (e) {
        if (e.which == 13){
           if($(this).val().length < 1){
              
              return;
           }
           else{
           socket.emit('message', {
                name: mid,
                message: $('#message').val(),
                room:room
               });
           $("#message").val('');
           }
        }
    });
    
   var objDiv = document.getElementById("#content");
   objDiv.scrollTop = objDiv.scrollHeight;



});


</script>

<script src="http://127.0.0.1:52273/socket.io/socket.io.js"></script>
  
   <%@include file="/resources/main/header1.jsp"%>

   <div class="bg"></div>
  <div class="detailBg"></div>


  <div class="detailRight">
  
    <div id="thumbImg">
      <!-- 썸네일이미지나 미리보기비디오.비디오 링크를 넣은경우엔 썸네일 대신 미리보기비디오를 보여줌  -->

     
      <!--이미지 <img id="addVid" name="" src="" style="width: 100%;"> -->
      <object type="text/html" width="100%" data="//www.youtube.com/embed/8yjkWGRlUmY" allowFullScreen></object>
     <input type="hidden" id="room" value="${sellboard.sno}">
     <input type="hidden" id="userid" value="${member.mid}">
    </div>

    <div class="optionBox">
      <p>옵션</p>
   
      <div class="option">
        <label for="schedule">기간선택</label>
        <select name="schedule" id="schedule">
          <option value="volvo" selected><fmt:formatDate pattern="yyyy-MM-dd" value="${sellboard.sstartdate}"/>~<fmt:formatDate pattern="yyyy-MM-dd" value="${sellboard.senddate}"/>   </option>
        </select>
      </div>

    </div>
    <!-- 옵션박스 -->
    <div class="priceBox">
      <p id="price">${sellboard.smoney}</p>원
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
          <div id="category">${sellboard.scategory}</div>
          <!-- 상품의 카테고리표시 -->
        </li>
        <li>
          <div id="productTitle">${sellboard.sname}</div>
          <!-- 상품이름 -->
        </li>
        <li>

          <div class="info">
            <div id="rateStar">별점표시</div>
            <div class="rateinfo">리뷰<p id="reviewCount">0</p> 개 | 누적수강<p id="totalBuy">0</p> 명</div>
            </div>
            <!-- 리뷰갯수 누적수강(구매)표시 -->
        </li>
      </ul>




    </div>

  </div>
  <!-- 제목 별점등 상품 정보 -->
  <div class="productInfoSection">
  
      <!-- 비디오 출력부분 -->
    <div class="videoWrapper">
      <!-- 유투브 주소 뒤에 ?autoplay=1  를 넣어야 자동재생 됩니다. -->
      <object type="text/html" width="100%" height="100%" data="//www.youtube.com/embed/uApqrD_p2ek?autoplay=1"
        allowFullScreen></object>
    </div>
     

   <!-- <div id="loadpage"></div> -->  
   <div class="chatWrapper">
   <div data-role="page" id="chatpage">
      <div data-role="content" id="chatarea" >
        <ul id="content" data-role="listview" data-inset="true"></ul>
      </div>
    </div>
        <div class="fixed">
      <c:if test="${member.mid!=null}">
       
        <input type="text" id="message"/>
        <button id="sendBttn">보내기</button>
        <button id="infoBttn">중요</button>
      </c:if>
      <c:if test="${member.mid==null }">
         <p id="needLogin">로그인 후 이용해주세요</p>
      </c:if>
       </div>
       </div>
  
  
    <div class="whatLearn">
      <p class="subTitle">배울내용</p>
      <ul id="learnList">
        <!-- 자바스크립트로 불러와서 리스트 추가해야함 -->
      <c:forEach var="contentlist" items="${contentlist}">   
        <li><svg class="bi bi-check" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
              d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z" />
          </svg>
          <p id="learn">${contentlist}</p>
        </li>
        </c:forEach>
     

      </ul>

    </div>
    <!-- 배울내용 -->

    <!-- 자바스크립트로 불러와서 리스트 추가해야함 -->
    <div class="whatLearn">
      <p class="subTitle">강의설명</p>
      <div id="desc">${sellboard.scomment}
    </div>
    <!-- 강의설명끝 -->
    <div class="whatLearn">
      <p class="subTitle">강의대상</p>
      <ul id="whoLearn">
        <!-- 자바스크립트로 불러와서 리스트 추가해야함 -->
        <c:forEach var="stargetlist" items="${stargetlist}"> 
        <li> <svg class="bi bi-person-fill" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
          </svg>
          <p id="who">${stargetlist }</p>
        </li>
       </c:forEach>

      </ul>

    </div>
    <!-- 강의대상끝 -->

    <div class="whatLearn">
      <p class="subTitle">요구사항</p>
      <ul id="learnReq">
        <!-- 자바스크립트로 불러와서 리스트 추가해야함 -->
           <c:forEach var="sclaimlist" items="${sclaimlist}"> 
        <li><svg class="bi bi-check" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
              d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z" />
          </svg>
          <p id="require">${sclaimlist }</p>
        </li>
        </c:forEach>
       
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
             
            </ul>
            
            
            
          </div>
          <div class="col-md-8">
            <div id="profileCard" class="card-body">
              <div class="card-title">
                <p id="name">전예진</p>
                <p></p>
                <p id="job">유니커직업</p>
              </div>
              <p id="profileDesc" class="card-text">유니커강사인삿말</p>

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
      
      
        <!-- 반복시작 -->
   
   
         <c:forEach var="smoclist" items="${smoclist}" varStatus="status"> 
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
                </svg> ${smoclist}
              </button>
            </h2>
          </div>
          
          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
            <div class="card-body">
               ${smocinlist[status.index]}
            </div>
          </div>
        </div>
          
         </c:forEach>
   
  
        <!-- 항목하나 -->




      </div>
      <!-- 목차 아코디언 끝-->


</div>


    </div>
    <!-- 강의 콘테츠와 목차 끝  -->

    <!-- 문의 리뷰 부분 시작 -->

   <div id="review">
         <p class="subTitle">리뷰</p>
         
<!--          평점박스-->
   <div class="box">
      <div class="Rleft">별점들어가는 부분</div>
      <div class="Rright">
      <div>평가 <p id ="starRate">4.5</p>점</div>
      <div>리뷰 <p id="reviewCount">34</p>개</div>
      </div>
   
   </div>         
         
         

     <!--리뷰 쓰기 -->
  <div class="box">
    <!-- 리뷰읽기쓰기박스 -->
    <form action="add" method="post">
      <div class="inBox">
        <!-- 아이디제목 -->
        <div id="nameTitle" class="section">
          <input class="form-control" name="mid" id="inputID" value="${member.mid}" readonly>
          <input class="form-control" name="title" id="inputTitle" value="" placeholder="title">

        </div>
        <!-- 내용 -->
          <div id="star" class="form-group">
    <label for="exampleFormControlSelect1">평점</label>
    <select class="form-control" id="starSelect">
      <option value="1" selected>1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
    </select>
  </div>
        <div id="content" class="section">
          <textarea id="boardInputTextarea" class="form-control" id="inputReview" name="srecomment" rows="3"></textarea>
        </div>

        <div id="fileUpload" class="section">
          <!-- 업로드버튼 -->
          <div class="uploadBttn">
            <label for="ex_file">사진업로드 <svg class="bi bi-eject" width="1em" height="1em" viewBox="0 0 16 16"
                fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                  d="M7.27 1.047a1 1 0 0 1 1.46 0l6.345 6.77c.6.638.146 1.683-.73 1.683H1.656C.78 9.5.326 8.455.926 7.816L7.27 1.047zM14.346 8.5L8 1.731 1.654 8.5h12.692zM.5 11.5a1 1 0 0 1 1-1h13a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1h-13a1 1 0 0 1-1-1v-1zm14 0h-13v1h13v-1z" />
              </svg></label>
            <!-- 밑에는 숨김 -->
            <input type="file" id="ex_file">
          </div>
          <!-- 미리보기 -->
          <div class="imgBox">
            <img id="imgpreview" src="#" alt="이미지 미리보기">
          </div>

        </div>

        <div class="section">
          <button id="boardSubmit" type="submit" class="btn btn-primary">작성하기</button>
        </div>

      </div>
    </form>

    <!-- 판매자리뷰댓글쓰기 -->
    <div id="replyBox" class="inBox">
      <!-- 내용 -->
      <form action="add" method="post">
        <div id="Rcontent" class="section">
          <textarea id="boardInputTextarea" class="form-control" id="inputReview" name="reviewcomment" rows="3"
            placeholder="판매자 답변"></textarea>
        </div>
        <div class="section">
          <button id="boardSubmit" type="submit" class="btn btn-primary">답변하기</button>
        </div>
      </form>
    </div>
  </div>

  <!-- 리뷰읽기 -->

  <div class="box">
    <!-- 리뷰읽기박스 -->
    <div class="inBox">
      <!-- 아이디제목 -->
      <div id="nameTitle" class="section">
        <p class="read" id="readID">${member.mid}닉네임</p>
        <p class="read" id="readTitle">${selreview.title}좋은강의였습니다</p>

      </div>
      <!-- 내용 -->
   
        <div class="section" id="contentIn">${selreview.srecomment}앞으로 자주 듣고싶은 유익한 강의</div>



      <div id="fileUpload" class="section">
        <!-- 이미지 첨부보기 -->
        <div class="imgBox">
          <img id="imgpreview" src="#" name="" alt="첨부이미지">
        </div>

      </div>

      <div class="section">
        <button id="boardDelete" type="submit" class="btn btn-primary">삭제하기</button>
        <button id="boardSubmit" type="submit" class="btn btn-primary">답변하기</button>
      </div>


    </div>




    <!-- 판매자리뷰댓글읽기 -->
    <div id="replyBox" class="inBox">
      <!-- 내용 -->
      <div id="Rcontent" class="section">
        <div class="read" id="contentIn">${selreviewcomment.reviewcomment}</div>
      </div>
      <div class="section">
        <button id="boardDelete" type="submit" class="btn btn-primary">삭제하기</button>
      </div>

    </div>






  </div>



  <script>
    // 이미지업로드미리보기-썸네일
    function readURL(input) {
      if (input.files && input.files[0]) {
        const reader = new FileReader();

        reader.onload = function (e) {
          $('#imgpreview').attr('src', e.target.result);
        };

        reader.readAsDataURL(input.files[0]); // convert to base64 string
      }
    }

    $('#ex_file').change(function () {
      readURL(this);
    });
  </script>















   </div>



  </div>





 

   <%@include file="/resources/main/footer.jsp"%> 
   
   </body>

</html>