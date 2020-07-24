<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입</title>
</head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css">  -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
  integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<link rel="stylesheet" href="/resources/main/css/box.css">

<style>
h3{
display:block;
    margin-bottom: 4% !important;
}
body{
overflow-x: hidden;
   height: 100%;
   font-family: Roboto,segoe ui,Helvetica,Arial,sans-serif,apple color emoji,segoe ui emoji,segoe ui symbol;
   font-size: 15px;
   line-height: 1.43;
   color: #29303b;
   z-index: -10;
   position: absolute;
   background: linear-gradient(227deg, #f65e76, #5118ba);
   background-size: 400% 321%;
   top: 0;
​
    }
    
    td{height: 60px;
    }
      #inputId{
  width:80%;display:inline-block;
  }
  #postcode{
  display:inline-block;
  }
  #loginButton{
      width: 25%;
    padding: 10px;
    float: right;
    background-color: #f55f77;
    border: 0;
    color: white;
    margin-top: 5%;
  }
</style>
<body>
  
  <!-- 필수헤더 -->
  <%@include file="/resources/main/header1.jsp" %>
   <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <!-- 회원가입 -->

  <div id="regWrapper">
    <h3>회원가입</h3>
    <form action="insert" method="post" id="insertform">
    
      <div class="formBox">
        <div></div>

        <table>
          <tbody>
            <tr>
              <td> <label for="inputID" >아이디</label></td>
              <td>
                <input type="text" class="form-control" name="mid" id="inputId">
                 <button type="button" onclick="return loginresult()" class="btn btn-secondary">중복확인</button>
                 
                 <label id="result"></label>
                 
                 <br></td>
            </tr>
            <tr>
              <td> <label for="inputPassword" >비밀번호</label></td>
              <td>
                <input type="password" onKeyup="this.value=this.value.replace(/\s/g,'');" name="mpassword" class="form-control" maxlength="12" id="inputPassword"></td>
            </tr>
            <tr>
              <td> <label for="inputPassword">비밀번호획인</label></td>
              <td> <input type="password" onKeyup="this.value=this.value.replace(/\s/g,'');" class="form-control" maxlength="12" id="inputPassword1"></td>
            </tr>
            <tr>
              <td> <label for="inputName" >이름</label></td>
              <td> <input name="mname" class="form-control" id="inputName">
              </td>
            </tr>
            <tr>
              <td> <label for="inputPhone" >전화번호</label></td>
              <td> <input name="mphone" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"  class="form-control" id="inputPhone1"  maxlength="3" placeholder="010">

                <input name="mphone1" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"  class="form-control" id="inputPhone2"  maxlength="4" placeholder="0000">

                <input name="mphone2" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"  class="form-control" id="inputPhone3"  maxlength="4" placeholder="0000"></td>
            </tr>
            <tr>
              <td> <label for="inputAddress"  >주소</label> </td>
              <td> <input class="form-control  col-md-3" type="text"  id="postcode" name="mpost" placeholder="우편번호">
                <button type="button" onclick="sample4_execDaumPostcode()" value="" class="btn btn-secondary">우편번호 찾기</button><br>
                <input class="form-control" type="text" name="maddress" id="address" placeholder="주소"><br>
                <input class="form-control" type="text" id="detailAddress" name="mdetailaddress" placeholder="상세주소"></td>
            </tr>
            <tr>
              <td> <label for="inputEmail">이메일</label></td>
              <td>
                <input type="email" class="form-control" name="memail" id="inputEmail" placeholder="@example.com"></td>
            </tr>
            <tr>
              <td> <label for="inputEmail">생년월일</label></td>
              <td> <input type="text" name="mage" class="form-control" placeholder="YYYY/MM/DD" id="datepicker">
              </td>
            </tr>

          </tbody>
        </table>


        <a onclick="return addsubmit()" class="btn btn-primary" id="loginButton" >가입하기</a>

      </div>

    </form>
  </div>
 


  <!-- 우편번호API -->

  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
	$(document).ready(function(){       
	  	  $("#datepicker").datepicker({
	  		  altFormat: "yy-mm-dd",
	  		  altField: "#datepicker"
	  	  });
	  
	  	});
  
  var success= "사용가능한 id입니다.";
  
  var fail = "이미 존재하는 id입니다.";
  
  $(doucument).ready(function(){
	   
  });
 
   function addsubmit(){
	  	 var pw=$("#inputPassword").val();
	  	 var id=$("#inputId").val();
	  	 var name=$("#inputName").val();
	  	 var phone=$("#inputPhone1").val();
	  	 var phone1=$("#inputPhone2").val();
	  	 var phone2=$("#inputPhone3").val();
	  	 var add=$("#address").val();
	  	 var code=$("#postcode").val();
	  	 var detail=$("#detailAddress").val();
	  	 var email=$("#inputEmail").val();
	  	 var birth=$("#datepicker").val();
	   
		 var $result1 = $("#result1").val();
		 var $memail = $("#inputEmail").val();
		
		 var pw1=$("#inputPassword1").val()
		 
		 if($result1 == success){
			 if(pw &&id&&name&&phone&&phone1&&phone2&&add&&detail&&code&&email&&birth){
			 
				 if(pw==pw1){
				 	if(pw.length > 5){
					 $.ajax({
				 	url : "/member/emailcheck",
				 	type : "GET",
				 	data : {"memail":$memail},
				 	dataType: "json",
				  	success : function(data){
						  if(data==1){
						  
							  $("#insertform").submit();
					 	 }
					  
					  	else{
							  alert("이메일이 이미존재합니다.");
					 		 }
				  	   	}	
				 
			 			});
				 	}
				 	else{
				 		alert("비밀번호는 6자리 이상 입력해주세요")
				 	}
				 }
				 else{
					 alert("비밀번호가 일치하지않습니다");
				 }
			 
			 
			} else{
				 alert("빈곳이 있는지 확인해주세요");
			 }
		 }
		 else {
			 
			 alert("id 중복확인을 체크해주세요");
		 }
  
	  }

   
  
  function loginresult(){
	  var $mid=$("#inputId").val();
	  $.ajax({
	   	  url : "/member/loginresult",
	      type : "GET",
	      data : {"mid":$mid},
	 	  dataType: "json",
	 	  success : function(data){
	 		if(data==1){
	 			$("#result").html("<input id='result1' value= '"+success+"' readonly='readonly'>");
	 		}  
	 		else{
	 			$("#result").html("<input id='result1' value= '"+fail+"' readonly='readonly'>");
	 		}
	 	  	
	 	  }
	      
	 	});
	 }
  
  
  function sample4_execDaumPostcode() {
      new daum.Postcode({
          oncomplete: function(data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

              // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
              // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
              var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
              var extraRoadAddr = ''; // 도로명 조합형 주소 변수

              // 법정동명이 있을 경우 추가한다. (법정리는 제외)
              // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
              if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                  extraRoadAddr += data.bname;
              }
              // 건물명이 있고, 공동주택일 경우 추가한다.
              if(data.buildingName !== '' && data.apartment === 'Y'){
                 extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
              }
              // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
              if(extraRoadAddr !== ''){
                  extraRoadAddr = ' (' + extraRoadAddr + ')';
              }
              // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
              if(fullRoadAddr !== ''){
                  fullRoadAddr += extraRoadAddr;
              }

              // 우편번호와 주소 정보를 해당 필드에 넣는다.
              document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
              document.getElementById('address').value = fullRoadAddr;
              document.getElementById('detailAddress').value = data.jibunAddress;

              // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
              if(data.autoRoadAddress) {
                  //예상되는 도로명 주소에 조합형 주소를 추가한다.
                  var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                  document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

              } else if(data.autoJibunAddress) {
                  var expJibunAddr = data.autoJibunAddress;
                  document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

              } else {
                  document.getElementById('guide').innerHTML = '';
              }
          }
      }).open();
  }
  </script>
  <!-- 달력 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <!-- 글로벌푸터 -->
    <%@include file="/resources/main/footer.jsp" %>
</body>

</html>