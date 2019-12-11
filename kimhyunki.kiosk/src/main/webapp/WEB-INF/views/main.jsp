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
<style>
    body{
      width:100%;
      background-color: rgb(17,65,15);
      margin: 0 auto;
    }
    .adminbutton {
        position: absolute;
        top: 3.5%;
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
    }
    .container{
      text-align: center;
      background-color: rgb(17,65,15);
      font-family: '배달의민족 한나는 열한살 TTF';
      padding-right: 0;
      padding-left: 0;
      height: 100%;
      width: 100%;
      max-width: initial;
    }


    @font-face { 
    	font-family: '배달의민족 한나는 열한살 TTF';
     	src: url(font/hannah.ttf) format('truetype');
    }

    .ad{
        background:#eee;
        border-radius:10px;/*사진의 radius값은 취향과 사진에 맞게 조절하십시오*/
        overflow:hidden; /*사진에 radius를 줄 때 필요한 속성*/
        text-align:center;
        margin:0 auto;
        width: 70%
    }
    .carousel-inner > d.carousel-item > img{
      width: 80%;
    }
    .clickcontainer{
     text-align: center;
     line-height: 400%;
     font-size:20px;
     font-weight:bold;
     color:#888;
     animation:flick 0.9s infinite;
     background-color: #21610B;
     position: relative;
     overflow: hidden;
   }
   @keyframes flick {
      0%{
        color:#888;
   }
      33%{
        color:#333;
   }
      66%{
        color:#333;
   }
      100%{
        color:#888;
   }
}
</style>
</head>
<body>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
  <script>
    $('.carousel').carousel({
      interval: 1500
    })
  </script>

<div class="container">
  <br><br>

  <br>
    <button class = "adminbutton"  onClick="location.href='login/login'">ADMIN</button>
    <h5>기다리지 말고 여기서 주문해보세요</h5>
  <br>
 <a href="order/selectPlace">
  <div id="demo" class="carousel slide" data-ride="carousel">
    <div class = "ad">
    <div class="carousel-inner">
      <!-- 슬라이드 쇼 -->
      <div class="carousel-item active">
        <!--가로-->
        <br><br><br><br><br><br><br><br><br><br><br>
        
        <br><br><br><br><br><br><br><br><br><br><br>
      </div>
      <div class="carousel-item">
        <br><br><br><br><br><br><br><br><br><br><br>
        
          <br><br><br><br><br><br><br><br><br><br><br>
      </div>
      <div class="carousel-item">
        <br><br><br><br><br><br><br><br><br><br><br>
        
          <br><br><br><br><br><br><br><br><br><br><br>
      </div>
    <!-- / 슬라이드 쇼 끝 -->

    <!-- 왼쪽 오른쪽 화살표 버튼 -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <!-- <span>Previous</span> -->
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <!-- <span>Next</span> -->
    </a>
    <!-- / 화살표 버튼 끝 -->

    <!-- 인디케이터 -->
    <ul class="carousel-indicators">
      <li data-target="#demo" data-slide-to="0" class="active"></li> <!--0번부터시작-->
      <li data-target="#demo" data-slide-to="1"></li>
      <li data-target="#demo" data-slide- to="2"></li>
    </ul>
    <!-- 인디케이터 끝 -->
  </div>
  </div>
</div>
  <br><br><br></a>
  <div class = "clickcontainer">
    <h5>주문을 위해 화면을 클릭해 주세요</h5>
    <img class = "clickimg" width = "7.5%">
  </div>
</div>
</body>
</html>
