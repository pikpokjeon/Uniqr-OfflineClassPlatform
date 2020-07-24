<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>공지사항</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
  integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/resources/css/board.css">

<style>

</style>

<body>
<%@include file="/resources/main/header1.jsp" %>
  <div id="bg"></div>
    <div id="boardWrapper">
      <h4>자유게시판</h4>
      <table id="boardLists">
        <tbody>
          <!-- 상단 -->
          <thead>
            <tr>
              <td id="boardNum">번호</td>
              <td id="boardTitle">제목</td>
              <td id="boardWriter">글쓴이</td>
               <td id="boardDate">날짜</td>
            </tr>
          </thead>
          
          <c:forEach var="list" items="${list}">
			<tr>
			<td>${list.adno}</td>
			<td><a href="/board/get?adno=${list.adno}">${list.atitle}</a></td>
			<td>${list.mid}</td>
			<td>${list.aregdate}</td>
          	</tr>
		 </c:forEach>
		 
        </tbody>
      </table>
      <a id="boardlistWriteBttn" class="btn btn-primary" href="/board/insert" role="button">글작성</a>
      <a href="/board/noticeList.html"></a>
    </div>

  
<%@include file="/resources/main/footer.jsp" %>
</body>

</html>