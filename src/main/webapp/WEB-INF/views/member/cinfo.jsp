<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보</title>

    <style>

    </style>

</head>

<body>
    ​<div class="dashWrapper">
    <div class="container">


        <form action="update" method="POST" id="minfoWrapper" enctype="multipart/form-data" >
            <fieldset id="memberinfo">

                <div id="subtitle">
                    <h3>회원정보</h3>
                </div>


				<!-- 프로필사진업로드부분 건들지마세요 -->
                <div id="mimage">
                <!-- 	이미지 부분 -->
                    <img id="profileImg" value="" class="rounded-circle" src="https://instaker.com/user-img.png">
                
               

                    <div id="imgupload" class="rounded-circle" type="button">
                    <label for="ex_file">
                    <svg class="bi bi-eject" width="1em" name="memberpicture"
                            height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"d="M7.27 1.047a1 1 0 0 1 1.46 0l6.345 6.77c.6.638.146 1.683-.73 1.683H1.656C.78 9.5.326 8.455.926 7.816L7.27 1.047zM14.346 8.5L8 1.731 1.654 8.5h12.692zM.5 11.5a1 1 0 0 1 1-1h13a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1h-13a1 1 0 0 1-1-1v-1zm14 0h-13v1h13v-1z" />
                        </svg>
                        </label>
                        <input type="file" id="ex_file">
                        </div>

                </div>
                
                
                
                

            </fieldset>

            <ul>


                <li>

                    <label for="a" class="title">이름</label>
                    <input class="form-control"  id="inputName" value="${member.mname}" readonly>
                </li>


                <li>
                    <label for="a" class="title">아이디</label>
                    <input class="form-control" name="mid" id="inputID" value="${member.mid}" readonly>
                </li>


                <li>
                    <label for="a" class="title">현재 비밀번호</label>
                    <input type="password" onKeyup="this.value=this.value.replace(/\s/,'');" class="form-control"id="inputPW" value="">
                </li>




                <li>
                    <label for="a" class="title">변경 비밀번호</label>
                    <input type="password" class="form-control" onKeyup="this.value=this.value.replace(/\s/,'');" name="mpassword" id="inputPW1" value="">
                </li>
                
                
                
                <li>
                    <label for="a" class="title">변경 비밀번호확인</label>
                    <input type="password" class="form-control"  onKeyup="this.value=this.value.replace(/\s/g,'');" name="" id="inputPW2" value="">
                </li>

				<li>
				<label for="inputPhone" >전화번호</label>
              <input name="mphone" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" class="form-control" id="inputPhone1"  maxlength="3" placeholder="010">

                <input name="mphone1" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" class="form-control" id="inputPhone2"  maxlength="4" placeholder="0000">

                <input name="mphone2" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" class="form-control" id="inputPhone3"  maxlength="4" placeholder="0000">
				</li>
                <li>
                    <label for="a" class="title">이메일</label>
                    <input type="email"class="form-control" name="memail" id="inputEmail" value="${member.memail}" readonly="readonly">
                </li>

                <li>
                    <label for="inputAddress" class="title1">주소</label>
                    <input class="form-control  col-md-3" name="mpost" type="text" id="postcode" placeholder="우편번호"
                        value="${member.mpost}">
                    <button type="button" onclick="sample4_execDaumPostcode()" value="" class="btn btn-primary">우편번호
                        찾기</button><br>
                   <label class="title1"></label> <input class="form-control" type="text" name="maddress" id="address" placeholder="주소"
                        value="${member.maddress}" readonly><br>
                   <label  class="title1"></label> <input class="form-control" type="text" name="mdetailaddress" id="detailAddress" placeholder="상세주소"
                        value="${member.mdetailaddress}">

                </li>


                <li>
                    <a href="#" id="submit" onclick="return send()" type="button" class="btn btn-primary">변경하기</a>

                </li>

            </ul>
        </form>
    </div>

    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    
    
    
<script>

// 이미지업로드미리보기-썸네일
function readURL(input) {
  if (input.files && input.files[0]) {
    const reader = new FileReader();

    reader.onload = function (e) {
      $('#profileImg').attr('src', e.target.result);
    };

    reader.readAsDataURL(input.files[0]); // convert to base64 string
  }
}

$('#ex_file').change(function () {
  readURL(this);
});
</script>
    
<script>

/* function onlyNumber() {
	const data = $('#inputPhone1','#inputPhone2','#inputPhone3').val();
	data.replace(/[^0-9]/g,'');
	
} */



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

<script>


function send(){
	
	var form= $('#minfoWrapper').val();
	var $mid=$("#inputID").val();
	var $mpassword=$("#inputPW").val();
	$.ajax({
		  url : "/member/login",
	 type : "POST",
	 data : {"mid":$mid , "mpassword":$mpassword},
	  dataType: "json",
	  success : function(data){
		if(data==1){

			const pw=$("#inputPW1").val();
			const pw1 = $("#inputPW2").val();

			
			if(pw==null || pw !== pw1 ){
				
					alert("변경 비밀번호를 확인해 주세요");
				
				
			}
			else{
				if(pw.length<6){
					alert("비밀번호는 6자리 이상 입력해주세요")
					
				}else{
					alert("변경이 완료되었습니다")
					
				}
			}
		  
	  }else{
			alert("현재 비밀번호가 틀립니다.");
		}
	 
	  }
	});
};
	




</script>


</body>

</html>