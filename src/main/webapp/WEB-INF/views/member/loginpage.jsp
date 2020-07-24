<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>로그인</title>
</head>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script>

</script>
<style>
  /* #bg {
    background-color: #f8f9fa;
  } */
html{
height:100%;
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
    
    
    
  #loginWrapper {
    margin: auto;
    width: 568px;
    display: block;
    box-shadow: 0px 3px 18px -8px rgba(0, 0, 0, 0.18);
    background-color: white;
    padding: 80px 82px;
    border-radius: 5px;
    border: #d2d2d2 1px solid;
    margin-top: 6%;
    margin-bottom: 8%;
  }
	label{
	display: inline-block;
    margin-bottom: .5rem;
    font-size: 1.1em;}
  #loginButton {
    width: 100%;
    color: white;
    background: #f55f77;
    border: 0;
    padding: 15px 0;
  }
.form-control{background-color: #efefef;
}
  h3 {
    text-align: center;
    margin-bottom: 50px;
  }
</style>
 <script>
 function login(){
	 var $mid=$("#exampleInputId1").val();
	 var $mpassword=$("#exampleInputPassword1").val();
 	$.ajax({
   	  url : "/member/login",
      type : "POST",
      data : {"mid":$mid , "mpassword":$mpassword},
 	  dataType: "json",
 	  success : function(data){
 		if(data==1){
 			
 		<!--	 location.href ='http://localhost:10000/member/loginsuccess?mid='+$mid+'&token='+data+"";-->
 		location.href ='http://localhost:10000/';
 		
 		}  
 		else if(data==2){
 			alert("이메일 인증을 완료하고 로그인하세요");
 		  }
 		else{
 			alert("ID나 비밀번호가 틀립니다.");
 			}
 	  	},  error:function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
 	 
	});
 }
 
 </script>

<body>

<%@include file="/resources/main/header1.jsp" %>
 <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

  <div id="bg"></div>


  <div id="loginWrapper">
    <h3>로그인</h3>
    <form>
      <div class="form-group">
        <label for="exampleInputEmail1">아이디</label>
        <input type="id" class="form-control" name="mid" id="exampleInputId1">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">비밀번호</label>
        <input type="password" onKeyup="this.value=this.value.replace(/\s/g,'');" class="form-control" name="mpassword" id="exampleInputPassword1">
      </div>
      <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label">아이디 저장하기</label>
      </div>
      <a onclick="return login()" class="btn btn-primary" id="loginButton">로그인</a>
    </form>
  </div>
 

  <!-- 글로벌푸터 -->
  <%@include file="/resources/main/footer.jsp" %>
</body>

</html>