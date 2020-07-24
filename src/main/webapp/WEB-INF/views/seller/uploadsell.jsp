<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="/resources/main/css/uploadpost.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">



  
</head>
<style>
.list-group-item input{
border:0; width:85%;
}
body{

  height: 100%;
   font-family: Roboto,segoe ui,Helvetica,Arial,sans-serif,apple color emoji,segoe ui emoji,segoe ui symbol;
   font-size: 15px;
   line-height: 1.43;
   color: #29303b;
   z-index: -10;

   background: linear-gradient(227deg, #f65e76, #5118ba);
   background-size: 400% 321%;
   top: 0; */
​
    }

</style>

<body>
  <!-- 필수헤더 -->
   <%@include file="/resources/main/header1.jsp" %>

  <!-- 업로드부분 -->
  <div id="uploadWrapper">
    <div id="content">
      <h3>판매글 작성</h3>
      <form action="upload" method="post" id="uploadForm" enctype="multipart/form-data">
        <table>
         		
          <tbody>
            <tr>
              <td>
                <input type="hidden" name="mid" value="${member.mid}">
              
                <label for="title">강의이름</label>
                
                <input class="form-control" name="sname" id="inputTitle">

                <div class="category">
                  <select class="custom-select my-1 mr-sm-2" id="category" name="scategory">
                    <option  value="entexam" selected>입시과외</option>
                    <option  value="itdev">IT개발</option>
                    <option  value="design">디자인</option>
                    <option  value="finance">재무회계</option>
                    <option  value="selfdev">자기계발</option>
                    <option  value="marketing">마케팅</option>
                    <option  value="lifestyle">라이프스타일</option>
                    <option  value="photo">사진</option>
                    <option  value="health">건강'피트니스</option>
                    <option  value="music">음악</option>
                    <option value="foreignlang">외국어</option>
                    <option  value="scholar">학문</option>
                  </select>
                </div>

              </td>
            </tr>

            <tr>
              <td>
                <label for="dateStart">강의날짜</label>
                <input type="text" class="form-control " name="sstartdate" placeholder="강의시작 YYYY-MM-DD" id="datepicker">

                <input type="text" class="form-control" name="senddate" placeholder="강의종료 YYYY-MM-DD" id="datepicker2">

              </td>
            </tr>                 


            <tr>
              <td>
                <label for="schedule">강의스케쥴</label>

                <div class="col-md-12">
                  <div data-role="content">
                    <div class="ui-block-a" id="addInput">
                      <!-- <textarea placeholder="원하는 요일/시간대를 입력해주세요" id="taskInputText" cols="50"
                        maxlength="128"></textarea> -->
                      <input id="taskInputText" type="text" class="form-control" placeholder="예시| 매주 월요일 3시~5시">

                    </div>
                    <div class="ui-block-b" id="addbttn">
                      <input type="button" class="btn btn-info" value="추가" id="taskBtn" />
                    </div>
                    <ul class="list-group" id="taskListSection">
                      <!-- <li class="list-group-item active">Todos</li> -->

                    </ul>

                  </div>
                </div>


              </td>
            </tr>

            <tr>
              <td>
                <label for="schedule">배울내용</label>

                <div class="col-md-12">
                  <div data-role="content">
                    <div class="ui-block-a" id="addInput2">
                      <!-- <textarea placeholder="원하는 요일/시간대를 입력해주세요" id="taskInputText" cols="50"
                        maxlength="128"></textarea> -->
                      <input id="taskInputText2" type="text" class="form-control"
                        placeholder="예시| SPA 프레임워크를 통해 랜딩페이지 완성">

                    </div>
                    <div class="ui-block-b" id="addbttn2">
                      <input type="button" class="btn btn-info" value="추가" id="taskBtn2" />
                    </div>
                    <ul class="list-group" id="taskListSection2">
                      <!-- <li class="list-group-item active">Todos</li> -->

                    </ul>

                  </div>
                </div>





              </td>
            </tr>

            <tr>
              <td>
                <label for="desc">강의설명</label>
                <div class="textarea">
                  <textarea class="form-control" name="scomment" id="lessonDesc" rows="5"></textarea>
                </div>
              </td>
            </tr>


            <tr>
              <td>
                <label for="target">강의대상</label>
                <div class="col-md-12">
                  <div data-role="content">
                    <div class="ui-block-a" id="addInput3">

                      <input id="taskInputText3" type="text" class="form-control" placeholder="예시| 웹페이지를 스스로 만들고 싶은 분">

                    </div>
                    <div class="ui-block-b" id="addbttn3">
                      <input type="button" class="btn btn-info" value="추가" id="taskBtn3" />
                    </div>
                    <ul class="list-group" id="taskListSection3">


                    </ul>

                  </div>
                </div>
              </td>
            </tr>



            <tr>
              <td>
                <label for="req">요구사항</label>
                <div class="col-md-12">
                  <div data-role="content">
                    <div class="ui-block-a" id="addInput4">

                      <input id="taskInputText4" type="text" class="form-control" placeholder="예시| html/CSS 기초지식이 있음">

                    </div>
                    <div class="ui-block-b" id="addbttn4">
                      <input type="button" class="btn btn-info" value="추가" id="taskBtn4" />
                    </div>
                    <ul class="list-group" id="taskListSection4">

                    </ul>

                  </div>
                </div>
              </td>
            </tr>





            <tr>
              <td>
                <label for="date">강의목차</label>
                <div class="col-md-12">
                  <div data-role="content">
                    <div class="ui-block-a" id="addInput5">
                      <input id="taskInputText5" type="text" class="form-control" placeholder="목차제목">
                      <textarea id="descText" class="form-control" rows="3" placeholder="상세내용"
                        maxlength="128"></textarea>
                    </div>
                    <div class="ui-block-b" id="addbttn5">
                      <input type="button" class="btn btn-info" value="추가" id="taskBtn5" />
                    </div>
                    <ul id="taskListSection5" class="card">

                    </ul>

                  </div>
                </div>
              </td>
            </tr>





            <tr>
              <td>
                <label for="thmbimg">대표썸네일</label>
                <div id="uploadfile" class="custom-file ">

                  <input type="file" id="thumbimg" name="sthumb" accept="image/*">
                  <div class="card" id="imgcard">
                    <img class="imgbox" id="imgpreview" src="#" class="card-img-top" alt="이미지 미리보기">
                  </div>
                </div>
              </td>
            </tr>

            <tr>
              <td>
                <label for="img">첨부이미지</label>
                <div id="uploadfile" class="custom-file ">
                  <input type="file" id="addimg" name="simage" accept="image/*">
                  <div class="card" id="imgcard">
                    <img class="imgbox" id="imgpreview2" src="#" alt="이미지 미리보기" /></div>
                </div>
    </div>
    </td>
    </tr>



    <tr>
      <td id="sampleSection">
        <label for="videolink">강의 맛보기</label>
        <div class="videlink">

          <input id="samplevideoURL" type="text" class="form-control" name="surl" placeholder="Youtube url 아이디만 업로드 가능합니다 예)VykyAAcFVoA">

        </div>
         <div class="descSection">
          <P id="important" class="desc">유투브 영상 공유하기 링크에서</P>
          <div id="important1" class="desc">https://youtu.be/<p>고유아이디값</p>/만 넣어주세요</div>
        </div>
      </td>
    </tr>


    <tr>
      <td id="streamSection">
        <label id="liveURL" for="streamvideo">실시간스트리밍</label>
        <div class="videlink">

          <input id="livevideoURL" type="text" class="form-control" name="sstream" placeholder="Youtube url 아이디만 업로드 가능합니다 예)VykyAAcFVoA">
        </div>
        <div class="descSection">
         <P id="important" class="desc">유투브 영상 공유하기 링크에서</P>
         <div id="important1" class="desc">https://youtu.be/<p>고유아이디값</p>/만 넣어주세요</div>
        
          <P class="desc">판매글이 올라가는 동시에 판매페이지에서 스트리밍방송이 나가게 됩니다</P>
          <P class="desc">메인페이지에 바로 노출되는 가장 확실한 판매글을 올려보세요! </P>
        </div>
  </div>
  </td>
  </tr>




  <tr>
    <td id="priceSection">
      <label for="price">강의비용</label>
      <input id="priceInput" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="smoney"type="text" class="form-control"
        placeholder="강의 스케쥴에 해당하는 강의료를 입력해주세요 (숫자만 입력)" for="pricedot(input)">
      <h5>원</h5>
      </div>
    </td>
  </tr>







  <tr>
    <td>
      <button id="submitbttn" type="submit" class="btn btn-primary">강의등록</button>
    </td>
  </tr>








  </tbody>
  </table>
  </form>
  </div>

<script type="text/javascript">

$(function(){

    $("#datepicker").datepicker();
    $("#datepicker2").datepicker();
});

</script>





  </div>
  <!-- 글로벌푸터 -->
  <%@include file="/resources/main/footer.jsp" %>
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="/resources/js/uploadpost.js"></script>

  
</body>

</html>