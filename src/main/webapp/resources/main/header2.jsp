<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />
<style></style>
<link rel="stylesheet" type="text/css" href="/resources/main/css/headerFooter.css" />

<body>
    <!-- <div class="header1"> -->
    <nav class="navbar navbar-light bg-white" id="navbar_header1">






        <a class="navbar-brand" href="/">
            <img src="/resources/main/img/logo1.png" width="150"
                class="d-inline-block align-top" alt="" loading="lazy" />
        </a>
        <div class="header_content1" id="left1">
            <form class="form-inline" id="form-in-line">
                <input type="text" class="form-control" id="searchInput" placeholder="관심있어요!" />
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button" id="searchButton">
                        <svg class="bi bi-search" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor"
                            xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z" />
                            <path fill-rule="evenodd"
                                d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z" />
                        </svg>
                    </button>
                </div>
            </form>
        </div>


        <div class="header_content1" id="right1">
            <ul>
                <li><a href="/board/list?acategory='공지'">공지사항</a></li>
                <li>|</li>
                <li><a href="/board/list?acategory='문의'">문의</a></li>
            </ul>

            <c:if test="${empty member||member.magree=='N'}">
                <ul>
                    <li><a href="/member/loginpage">로그인</a></li>
                    <li>|</li>
                    <li><a href="/member/insertpage">회원가입</a></li>
                    <!-- 로그인 한 경우 내정보 | 로그아웃 표시하기 -->
                </ul>
            </c:if>
            <c:if test="${member.mid != null && member.magree=='Y'}">
                <ul>
                    <li><a href="/member/infopage">내정보</a></li>
                    <li>|</li>
                    <li><a href="/member/logout">로그아웃</a></li>
                </ul>
            </c:if>
        </div>
    </nav>



    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
    </script>
</body>