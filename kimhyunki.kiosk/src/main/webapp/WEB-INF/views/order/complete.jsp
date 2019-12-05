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

    @font-face { font-family: '배달의민족 한나는 열한살 TTF';
      src: url(../font/hannah.ttf) format('truetype');
    }
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

    .container {
      text-align : center;
      font-family: '배달의민족 한나는 열한살 TTF';
      border: 3px solid rgb(17, 65, 15);
      padding-right: 0;
      padding-left: 0;
      border-radius: 15px 15px 15px 15px;
      width: 45%;
      height: 790px;
      margin-left: auto;
      margin-right: auto;
      max-width: initial;
      margin-top: 25px;
    }
    .result_header{
      margin-top: 100px;
      font-size: 4.0em;
    }
    .result_text1{
      margin-top: 120px;
      font-size: 2.5em;
    }
    .result_text2{
      margin-top: 130px;
      font-size: 1.7em;
    }
    .result_text3{
      font-size: 1.7em;
    }
    .result_second{
      margin-top: 80px;
      font-size: 1.5em;
    }

}
</style>
<script>
  var second=10;
  function time(){
    second--;
    var text = document.getElementById("second");
    text.innerHTML=second;
    if(second==0){
      location.href='../';
    }
  }
  function startTime(){
    setInterval(time,1000);
  }

</script>
</head>
<body onload="startTime()">
  <div class="header"><marquee class="ad_text" width="100%">광고 텍스트 영역</marquee></div>

<div class="container">
  <div class="result_header">결제 완료</div>
  <div class="result_text1">주문번호는 0001번입니다.</div>
  <div class="result_text2">메뉴가 준비되면</div>
  <div class="result_text3">주문번호가 주문현황판에 출력됩니다</div>
  <div class="result_second"><span id="second">10</span>초 후 초기 화면으로 돌아갑니다</div>
</div>

  <div class="footer"></div>
</body>
</html>
