<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>관리자 메뉴선택</title>
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
         .zoom{
	color: white;
	font-size: 1.5em;
}
          h2 {
            font-size: 3.2em;
            color:white;
          }
          h5 {
            font-size:2.4em;
            color:white;
          }
          @font-face { font-family: '배달의민족 한나는 열한살 TTF';
            src: url(../font/hannah.ttf) format('truetype');
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
          .imgbox { /* 메뉴사진 */
            padding: 50px;
            border: 5px;
            background-color: gray;
            border-radius: 15px 15px 15px 15px;
            width: 30%;
            height: 510px;
            text-align: center;
            margin-left:3%;
            margin-right:4.5%;
            position:relative;
            display: inline-block;
            float:left;
          }
          .zoom {
           padding: 50px;
           background-color: green;
           transition: transform .2s;
           border-radius: 15px 15px 15px 15px;
           width: 20%;
           height: 580px;
           text-align: center;
           position:relative;
           display: inline-block;
          }
          .zoom:hover {
          -ms-transform: scale(1.1); /* IE 9 */
          -webkit-transform: scale(1.1); /* Safari 3-8 */
          transform: scale(1.1);
          }
      </style>
</head>
<body>
  <div class="header"><marquee class="ad_text" width="100%">광고 텍스트 영역</marquee></div>
  <div class="footer"></div>
  <br>
<div class="container">
<button class = "backbutton"  onClick="location.href='../'">MAIN</button>
  <br><br><br>
  <a href='../menu/menuManage'><div class="zoom">
    <br><br><br><br>
      사진
    <br><br><br><br><br>
    <h5>메뉴관리</h5>
  </div></a>
      &nbsp;&nbsp;&nbsp;
      <a href='../serving/orderManage'><div class="zoom">
        <br><br><br><br>
          사진
        <br><br><br><br><br>
        <h5>주문관리</h5>
      </div></a>
      &nbsp;&nbsp;&nbsp;
      <a href='../serving/orderStatus'><div class="zoom">
        <br><br><br><br>
          사진
        <br><br><br><br><br>
        <h5>주문현황</h5>
      </div></a>
      &nbsp;&nbsp;&nbsp;
      <a href='../login/imgManage'><div class="zoom">
        <br><br><br><br>
          사진
        <br><br><br><br><br>
        <h5>사진관리</h5>
      </div></a>
  <br><br><br>
<h5 font-style = "배달의민족 을지로체 TTF">원하는 메뉴를 선택하세요</h5>
</div>
</body>
</html>
