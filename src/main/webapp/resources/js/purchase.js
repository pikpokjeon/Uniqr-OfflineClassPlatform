$(document).ready(function ($) {
  const pa =
    "<button id='deleteBttn";
  const n = "' class='btn remove'><span class='uxicon uxicon-trash'></span>삭제하기</button>";
  // const i;
  $.ajax({
      method: "GET",
      url: "https://dapi.kakao.com/v3/search/book?target=title", // 전송 주소
      data: "query=Node.js", // 보낼 데이터
      headers: {
        Authorization: "KakaoAK b00c152902ce715b79b707a63cb4a095"
      }
    })
    .done(function (msg) { // 응답이 오면 처리를 하는 코드
      const count = msg.documents.length; //json객체갯수
      let totalPrice = 0;


      // json객체를 리스트로뿌려주기
      for (i = 0; i < count; i++) {

        $("#lists").append("<li id='list" + i + "'class='product'><div class='img' id='img" + i + "'></div>" +
          "<div class='part'><div class='pTitle'>" +
          msg.documents[i].title + "</div><div class='pPrice'><p id='price" + i + "'>" + msg.documents[i]
          .price +
          "</p><p>원</p></div><div class='pTeacher'>" +
          msg.documents[i].authors + "</div><div class='date'><p>강의시작</p><p id='pStart'>" + msg.documents[i]
          .datetime +
          "</p></div><div id='pSchedule'>월 화 오후7시</div>" + pa + i + n + "</div></li>");
        $("#img" + i).append("<img id='pThumb' src='" + msg.documents[i].thumbnail + "'>");


        totalPrice = totalPrice + msg.documents[i].price;
        totalP(totalPrice);
        deleteIt(i);
        // calculate(i);

      }


      // totalPrice = totalPrice - msg.documents[i].price;
      
      
        const c = $('#lists').children().length;
        console.log(c);
      
      
      
    });

  function totalP(totalPrice) {
    $('#tPrice').text(totalPrice); // 총액
  }


  // function calculate(i) {
  //   let price = 0;
  //   const count = $('#lists').children().length;

  //   $('#list' + i).each(function () {
  //     price = price + parseInt($(this).children('#price' + i).text());
  //   });
  //   let totalp = price;
  //   console.log(totalp);

  // 재계산
  function deleteIt(i, totalPrice) { // 삭제버튼
    $('#deleteBttn' + i).click(function () {
      console.log('삭제눌러짐');
      $('#list' + i).remove();

    });
  }

  function minusP(totalPrice) {

  }
  
  
  
  
  
  


});