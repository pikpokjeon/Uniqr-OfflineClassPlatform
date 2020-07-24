<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<body>
  <div id="mliveList" class="MitemLists">
    <div class="Mlive d-flex justify-content-center">

      <div id="liveTitleSection">
        <p id="onAir">
          ON AIR
        </p>
        <p id="liveListTitle">실시간 방송프로모션</p>
      </div>

      
      <div id="carouselExampleCaptions" class="carousel slide " data-ride="carousel">



        <div class="carousel-inner">
         
         
         
         
          <div class="carousel-item active" data-interval="4000">
		<c:forEach var="topstreamlist" items="${topstreamlist}">
            
            
          
            <div id="livecard" class="card mb-3">
              <div class="row no-gutters">
               <a herf="/seller/selectone?sno=${topstreamlist.sno}"> <img src="/resources/img/${topstreamlist.ssthumb}" class="lecThumbImg"></a>
                <div class="body">
                <a href="/seller/selectone?sno=${topstreamlist.sno}&mid=${member.mid}"> <h5 id="lecName" class="liveName" >${topstreamlist.sname}</h5> </a>
                  <div id="lecRegDate" class="liveTime">
                    <p>업로드시간 </p>
                    <p id="liveRegTime">${topstreamlist.sregdate}</p>
                  </div>
                </div>
              </div>
            </div>
		</c:forEach>
          </div>
          
        
          <div class="carousel-item" data-interval="4000">
		<c:forEach var="topstreamlist" items="${topstreamlist1}">
          
          
            <div id="livecard" class="card mb-3">
              <div class="row no-gutters">
               <a herf="/seller/selectone?sno=${topstreamlist.sno}"> <img src="/resources/img/${topstreamlist.ssthumb}" class="lecThumbImg"></a>
                <div class="body">
                   <a href="/seller/selectone?sno=${topstreamlist.sno}&mid=${member.mid}"> <h5 id="lecName" class="liveName">${topstreamlist.sname}</h5></a>
                  <div id="lecRegDate" class="liveTime">
                    <p>업로드시간 </p>
                    <p id="liveRegTime">${topstreamlist.sregdate}</p>
                  </div>
                </div>
              </div>
            </div>
		</c:forEach>
          </div>
          
          
        </div>
	




      </div>

    </div>
    <!-- -----------------ì¬ë¼ì´ë ë----------------- -->


  </div>
  <!-- liveLists -->


  </div>

  </div>
  </div>

</body>