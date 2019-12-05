<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>main</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
    @font-face {
      font-family: '배달의민족 한나는 열한살 TTF';
      src: url(hannah.ttf) format('truetype');
    }
    ad_text{
      color: white;

    }
    body{
      margin:0;
      overflow: auto;
    }
    .adminbutton {
        position: absolute;
        top: 10%;
        right: 10.5%;
        border-radius: 10px;
        background-color: #ffffff;
        background-color: rgba( 255, 255, 255, 0.5 );
    }

    h2{
      font-size: 2.7em;
      color:white;

    }
    h5{
      font-size: 2.2em;
      color:white;
      display: block;

    }
    .container {
      text-align : center;
      background-color: rgb(17,65,15);
      font-family: '배달의민족 한나는 열한살 TTF';
      padding-right: 0;
      padding-left: 0;
      border-radius: 15px 15px 15px 15px;
      width: 80%;
      height: 790px;
      margin-left: auto;
      margin-right: auto;
      max-width: initial;
    }
    @font-face { font-family: '배달의민족 한나는 열한살 TTF';
      src: url(../font/hannah.ttf) format('truetype');
    }

    .footer {
       position: fixed;
       bottom: 0;
       width: 100%;
       height: 50px;
       background-color: rgb(17, 65, 15);
      z-index: -1;
    }

    .header {
       width: 100%;
       height: 50px;
       display: block;
       color:white;
       font-size:1.8em;
       background: rgb(17, 65, 15);
    }
    .menubutton,.orderbutton,.statusbutton{
      border-radius: 10px;
      background-color: #ffffff;
      background-color: rgba( 255, 255, 255, 0.5 );
      width: 12.5%;
      height: 6%;
      font-size:20px;
    }

    .textBox{
      display: block;
      background-color: lightgrey;
      color:white;
      font-size: 2.3em;
    }

    .completeText{
      display: block;
      position: fixed;
      left: 30%;
    }

    .readyText{
      display: block;
      position: fixed;
      right:30%;
    }
    .completeBox{
      position: fixed;
      width: 400px;
      height: 450px;
      bottom: 120px;
      z-index: 5;
      left: 24%;
      font-size: 4.0em;
      color:yellow;
    }
    .mainBox{
      background-color: yellow;
    }
    .readyBox{
      position: fixed;
      width: 400px;
      height: 450px;
      bottom: 120px;
      right:24%;
      font-size: 4.0em;
      color:white;
    }

</style>
</head>
<body>
  <div class="header"><marquee class="ad_text" width="100%">광고 텍스트 영역</marquee></div>

  <br>
<div class="container">

  <button class = "adminbutton"  onClick="location.href='../login/02'">BACK</button>
    <br><br><h5>주문현황</h5>
  <br>

    <button class = "menubutton" onClick="location.href='../menu/01'">메뉴관리</button>
    <button class = "orderbutton" onClick="location.href='01'">주문관리</button>
    <button class = "statusbutton" onClick="location.href='#'">주문현황</button>
  <br><br>
  <div class="mainBox">
    <div class="textBox">
        <div class="completeText">제공 Serving</div>
        <div class="readyText">준비중입니다</div>
    </div>
    <div class="completeBox">
      <c:forEach var="ing" items="${preparingList}">
        <p>${ing.orderNo}</p>
      </c:forEach>
    </div>
    <div class="readyBox">
      <c:forEach var="ed" items="${preparedList}">
        <p>${ed.orderNo}</p>
      </c:forEach>
    </div>
  </div>

</div>
<div class="footer"></div>
</body>
</html>