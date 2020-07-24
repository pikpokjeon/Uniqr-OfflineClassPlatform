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
  <link rel="stylesheet" type="text/css" href="/resources/css/board.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<style>

</style>

<body>
<%@include file="/resources/main/header1.jsp" %>
  <div id="bg"></div>
    <div id="boardWrapper">
      <h4>글작성</h4>
      <form action="add" method="post" enctype="multipart/form-data">
      <table id="boardInputTable">
        <tbody>
		  	  
			
          <tr>
            <td>
              <!-- 로그인한 경우 보여지는 인풋 -->
              <input id="boardInputName"type="text" name="mid" class="form-control" value="${member.mid}" readonly="readonly" >
              <input id="boardCategory" name="acategory" class="form-control" type="text" value="문의" readonly="readonly">


            </td>
          </tr>
          
          <tr>
            <td>
              <input id="boardInputTitle" name="atitle" class="form-control" type="text" placeholder="제목">
            </td>
          </tr>


          <tr>
            <td>
              <textarea id="boardInputTextarea" class="form-control" id="formTextarea1" name="acontent" rows="10"></textarea>
            </td>
          </tr>

          <tr>
			<td>
              <!-- 이미지업로드 리스트 -->
              <div id="fileUploadList">
               <input id="fileUpload" type="file" name="apicture1" class="btn btn-light" accept="image/*">
 
			     <div id="uploadfile" class="custom-file ">
                  <div class="card" id="imgcard">
                    <img class="imgbox"  id="imgpreview" src="#" class="card-img-top" alt="이미지 미리보기">
                  </div>
                </div>
                </div>
			</td>
            

          </tr>


          <tr>
            <td>

              <button id="boardSubmit" type="submit" class="btn btn-primary">작성하기</button> </td>
          </tr>
		
        </tbody>
        
      
	  
      </table>
</form>
    


    </div>
<%@include file="/resources/main/footer.jsp" %>

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

$('#fileUpload').change(function () {
  readURL(this);
});
</script>
</body>

</html>