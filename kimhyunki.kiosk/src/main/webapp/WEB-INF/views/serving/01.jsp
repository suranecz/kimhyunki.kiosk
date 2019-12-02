<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>main</title>
<script src='http://code.jquery.com/jquery-3.1.1.min.js'></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
    body{
      margin : 0;
      overflow: auto;
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
      background: rgb(17, 65, 15);
    }
    .ad_text{
      font-size: 2.0em;
      color:white;
    }
    .backbutton {  /* 뒤로가기 */
      position: absolute;
      top: 8.5%;
      right: 10.5%;
      border-radius: 10px;
      background-color: #ffffff;
      background-color: rgba( 255, 255, 255, 0.5 );
    }
    .addbutton{ /* 추가하기 버튼 */
      position:absolute;
      margin-top: 1.5%;
      right: %;
      border-radius: 10px;
      background-color: #ffffff;
      background-color: rgba( 255, 255, 255, 0.5 );
      width: 7%;
      height: 5%;
      font-size:20px;
    }
    table {
      border-collapse: separate;
      border-spacing: 0;
      min-width: 60%;
      min-height:64.5%;
      margin: auto;
      color:white;
    }
    table tr th,
    table tr td {
      border-right: 1px solid #bbb;
      border-bottom: 1px solid #bbb;
      font-size:27.5px;
    }
    table tr th:first-child,
    table tr td:first-child {
      border-left: 1px solid #bbb;
      background: gray;
      color:white;
    }
    table tr th {
      border-top: 1px solid #bbb;
      text-align: center;
      color:white;
    }
    table tr:first-child th:first-child {
      border-top-left-radius: 6px;
    }
    table tr:first-child th:last-child {
      border-top-right-radius: 6px;
    }
    table tr:last-child td:first-child {
      border-bottom-left-radius: 6px;
    }
    table tr:last-child td:last-child {
      border-bottom-right-radius: 6px;
    }

    h2{
      font-size: 2.7em;
      color:white;
    }
    h5{
      font-size: 2.2em;
      color:white;
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
    .buttonnav{
        margin-right: 100px auto;
        margin-bottom: 10px;
    }
    .hamburger,.side,.beverage{
      border: 1;
      background-color: rgba(0,0,0,0);
      color: white;
      padding: 3px;
      width: 15%;
      font-size: 1.5em;
      font-weight: bold;
    }
   .hamburger:hover,.side:hover,.beverage:hover{
     color: white;
     background-color: green;
    }
    .hamburger{
      border-radius: 25px 0px 0px 25px;
    }
    .beverage{
      border-radius: 0px 25px 25px 0px;
    }
    .side{
      margin-right:-6px;
      margin-left:-6px;
    }
    .menubutton,.orderbutton,.statusbutton{
      border-radius: 10px;
      background-color: #ffffff;
      background-color: rgba( 255, 255, 255, 0.5 );
      width: 12.5%;
      height: 6%;
      font-size:20px;
    }
    .status_Btn{
      width:120px;
    }

</style>
</head>
<script>

var regButtons = function(){

    $(".status_Btn").each(function(){
      $(this).bind("click",function(){
        var check = $(this).html();
        if(check=='준비중'){
          $(this).html('준비완료');
        }else if(check=='준비완료'){
          $(this).html('주문완료');
        }else{
          $(this).html('준비중');
        }
      });
    });
};

$(document).ready(function(){
  regButtons();
});
</script>
<body>
  <div class="header"><marquee class="ad_text" width="100%">광고성 메세지</marquee></div>
  <div class="footer"></div>
  <br>
<div class="container">
  <br><br>

  <br>
    <button class = "backbutton" onClick="location.href='../login/02'">BACK</button>
    <h5>주문관리</h5>
  <br>
  <br>
     <button class = "menubutton" onClick="location.href='../menu/01'">메뉴관리</button>
     <button class = "orderbutton" onClick="location.href='#'">주문관리</button>
     <button class = "statusbutton" onClick="location.href='02'">주문현황</button>
  <br><br>

<div>
  <table>
    <colgroup>
      <col width = "10%" />
      <col width = "65%" />
      <col width = "15%" />
    </colgroup>
    <thead>
      <th>주문번호</th>
      <th>주문메뉴</th>
      <th>준비상태</th>
    </thead>
    <tbody>
      <tr>
        <td>0010</td>
        <td>치즈버거, 콜라(L),감자튀김</td>
        <td><button class="status_Btn">주문완료</button></td>
      </tr>
      <tr>
        <td>0011</td>
        <td>불고기버거</td>
        <td><button class="status_Btn">준비완료</button></td>
      </tr>
      <tr>
        <td>0012</td>
        <td>커스텀햄버거(상추,소고기패티,망네즈,양파,치즈,치즈,토마토), 콜라(L)</td>
        <td><button class="status_Btn">준비중</button></td>
      </tr>
      <tr>
        <td>0013</td>
        <td>치즈볼,감자튀김,콜라(R)</td>
        <td><button class="status_Btn">준비중</button></td>
      </tr>
    </tbody>
  </table>
  </div>
  </div>
</body>
</html>
