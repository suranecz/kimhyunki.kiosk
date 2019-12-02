<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>main</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src='http://code.jquery.com/jquery-3.1.1.min.js'></script>
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
      background-color:rgba(17,65,15,0.8);
    	border-radius: 5px;
    	font-size: 2.3em;
    	width:150px;
    	margin-right: 20px;
    	border: 2px solid white;
      color: white;
      width:200px;
      margin-top: 130px;
    }
    .addbutton:hover{
      background-color: white;
      color: rgba(17,65,15,0.8);
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
    .table_container{
      margin-top: 30px;
    }
    @font-face { font-family: '배달의민족 한나는 열한살 TTF';
      src: url(../font/hannah.ttf) format('truetype');
    }
    .buttonnav{
        margin-right: 100px auto;
        margin-bottom: 10px;
    }
    .hamburger,.side,.beverage,.custom{
      border: 1;
      background-color: rgba(0,0,0,0);
      color: white;
      padding: 3px;
      width: 15%;
      font-size: 1.5em;
      font-weight: bold;
    }
   .hamburger:hover,.side:hover,.beverage:hover,.custom:hover{
     color: white;
     background-color: green;
    }
    .hamburger{
      border-radius: 25px 0px 0px 25px;
    }
    .beverage{
      margin-right:-6px;
      margin-left:-6px;
    }
    .side{
      margin-right:-1px;
      margin-left:-6px;
    }
    .custom{
border-radius: 0px 25px 25px 0px;
    }
    .menubutton,.orderbutton,.statusbutton{
      border-radius: 10px;
      background-color: #ffffff;
      background-color: rgba( 255, 255, 255, 0.5 );
      width: 12.5%;
      height: 6%;
      font-size:20px;
    }
}
</style>
<script>


var regButtons = function(){
    $(".deletebutton").each(function(){
      $(this).bind("click",function(){

        swal({
          title: "해당 메뉴를 삭제하시겠습니까?",

          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
      .then((willDelete) => {
        if (willDelete) {
          swal("해당 메뉴가 삭제되었습니다", {
            icon: "success",
          });
        } else {
          swal("메뉴 삭제가 취소되었습니다",{
            icon: "success",
          });
        }
      });
      });
    });
};

$(document).ready(function(){
  regButtons();
});
</script>
</head>
<body>
  <div class="header"><marquee class="ad_text" width="100%">광고 텍스트 영역</marquee></div>
  <div class="footer"></div>
  <br>
<div class="container">
  <br><br>

  <br>
    <button class = "backbutton" onClick="location.href='../login/02'">BACK</button>
    <h5>메뉴관리</h5>
  <br>
  <br>
     <button class = "menubutton" onClick="location.href='#'">메뉴관리</button>
     <button class = "orderbutton" onClick="location.href='../serving/01'">주문관리</button>
     <button class = "statusbutton" onClick="location.href='../serving/02'">주문현황</button>
  <br><br>
<div class = "buttonnav">
  <button class = "hamburger">햄버거</button>
  <button class = "side">사이드</button>
  <button class = "beverage">음료</button>
  <button class = "custom">재료</button>
</div>
<div class="table_container">
  <table>
    <colgroup>
      <col width = "15%" />
      <col width = "20%" />
      <col width = "15%" />
      <col width = "20%" />
      <col width = "15%" />
      <col width = "15%" />
    </colgroup>
    <thead>
      <th>추천메뉴</th>
      <th>이름</th>
      <th>가격</th>
      <th>사진</th>
      <th>수정</th>
      <th>삭제</th>
    </thead>
    <tbody>
      <tr>
        <td>등록</td>
        <td>오징어버거</td>
        <td>4,500원 </td>
        <td>상품 이미지</td>
        <td><button class = "updatebutton" onClick="location.href='03'">수정하기</button></td>
        <td><button class = "deletebutton">삭제하기</button></td>
      </tr>
      <tr>
        <td>미등록</td>
        <td>불고기버거</td>
        <td>3,200원 </td>
        <td>상품 이미지</td>
        <td><button class = "updatebutton" onClick="location.href='03'">수정하기</button></td>
        <td><button class = "deletebutton">삭제하기</button></td>
      </tr>
      <tr>
        <td>미등록</td>
        <td>AZ버거</td>
        <td>4,200원 </td>
        <td>상품 이미지</td>
        <td><button class = "updatebutton" onClick="location.href='03'">수정하기</button></td>
        <td><button class = "deletebutton">삭제하기</button></td>
      </tr>
      <tr>
        <td>등록</td>
        <td>오징어버거</td>
        <td>4,500원 </td>
        <td>상품 이미지</td>
        <td><button class = "updatebutton" onClick="location.href='03'">수정하기</button></td>
        <td><button class = "deletebutton">삭제하기</button></td>
      </tr>
    </tbody>
  </table>
  </div>
  <button class = "addbutton" onClick="location.href='02'">메뉴 추가</button>
  </div>
</body>
</html>