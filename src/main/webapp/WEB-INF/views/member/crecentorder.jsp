<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>주문내역</title>
    <style>

    </style>
</head>

<body>

    <div class="container">
        <div id="subtitle">
            <h3>주문내역</h3>
        </div>


        

                <table id="commonTable">
                    <tbody>

                        <thead id="tableHead">
                            <td id="pNum">번호</td>
                            <td id="pOrderNum">주문번호</td>
                            <td id="pPrice">총금액</td>
                            <td id="pDate">구매일자</td>
                        </thead>

                        <tr>
                            <td id="center"><input id="checkbox" type="checkbox">
                                <p id="pCount">1</p>
                            </td>
                            <td>
                                <p id="selno">주문번호</p>
                            </td>
                            <td id="center">
                                <p id="selprice">222000</p>
                                <p>원</p>
                            </td>
                            <td id="center">
                                <p id="selDate">05/22/2020</p>
                            </td>
                        </tr>


                        <tr>
                            <td id="center"><input id="checkbox" type="checkbox">
                                <p id="pCount">1</p>
                            </td>
                            <td>
                                <p id="selno">주문번호</p>
                            </td>
                            <td id="center">
                                <p id="selprice">222000</p>
                                <p>원</p>
                            </td>
                            <td id="center">
                                <p id="selDate">05/22/2020</p>
                            </td>
                        </tr>

                    </tbody>
                </table>
    </div>
</body>

</html>