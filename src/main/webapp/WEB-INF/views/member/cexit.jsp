<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>회원탈퇴</title>

</head>

<body>
	<script>
	
	function deletemember(){
		$mid=$("#xinputID").val();
		$mpassword = $("#xinputPW").val();
		$.ajax({
		   	  url : "/member/login",
		      type : "POST",
		      data : {"mid":$mid , "mpassword":$mpassword},
		 	  dataType: "json",
		 	  success : function(data){
		 		 if(data==0){
		 			alert("비밀번호가 틀립니다");
		 		 }
		 		 else{
		 			if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		 				$.ajax({
		 				   	  url : "/member/deletemember",
		 				      type : "POST",
		 				      data : {"mid":$mid , "mpassword":$mpassword},
		 				 	  dataType: "json",
		 				 	  success : function(data){ 	  
		 				 	  alert("삭제되었습니다")
		 				 	  location.href="/";
		 				 	}
		 				  });
		 			 }else{   //취소
		 			     return false;
		 			 }
		 			 
		 			 
		 		 }
		 		  
		 	  }
		   });
		
	}
	
	</script>
    <div class="container">

        <form>
            <div id="subtitle" class="member">
                <h3>회원탈퇴 </h3>
            </div>
            <fieldset>

                <ul id="mexit">
                    <li>
                        <label for="a" class="title">아이디</label>
                        <input class="form-control" id="xinputID" value="${member.mid}" readonly=readonly>
                    </li>


                    <li>
                        <label for="a" class="title">비밀번호</label>
                        <input class="form-control" id="xinputPW">
                    </li>

                </ul>

                <button type="button" class="btn btn-primary" id="exitbttn" onclick="return deletemember()">탈퇴하기</button>

            </fieldset>

        </form>
    </div>
</body>

</html>