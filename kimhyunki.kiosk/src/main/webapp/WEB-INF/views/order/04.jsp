<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>OrderCheck</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css' />
<script  src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js'></script>

<style>
body {
	margin: 0;
	overflow: auto;
}

.header {
	width: 100%;
	height: 50px;
	display: block;
	background: rgb(17, 65, 15);
}
.ad_text{
color:white;
font-size: 2.5em;
}
h2{
  width:300px;
  margin: 50px auto;
}

h3 {
	width: 100%;
	text-align: center;
	margin: 50px auto;
  color:white;
	font-size: 2.0em;
}

.logo {
	margin-top: 10px;
	margin-left: 10px;
	width: 280px;
	height: 280px;
	display: block;
	border: 1px solid black;
	position: fixed;
}

.container {
	width: 900px;
}

.item {
	font-size: 1.6em;
  box-shadow:0px 0px 5px grey;
  border-radius:5px;
  margin-top: 15px;
  display:flex;
  align-items:center;
  padding:10px 40px;
}

.item_name{
  width:200px;
}

.item_price {
	width:170px;
  text-align:right;
  padding-right:10px;
}

.minus {
  font-size: 1.2em;
	border-radius: 10px;
	background: white;
  margin-left: 250px;
  margin-right: 20px;
  width:45px;
  height:45px;
	transition: all 0.2s;
}
.minus:hover{
	transform:scale(1.15);
}
.plus{
  font-size: 1.2em;
  border-radius: 10px;
  background: white;
  margin-left: 20px;
  width:45px;
  height:45px;
	transition: all 0.2s;
}
.plus:hover{
	transform: scale(1.15);
}

.point_container{
  display:none;

}
.backgroundColor{
  position:absolute;
  width:100%; height:100%;
  left:50%; top:50%;
  transform:translate(-50%,-50%);
  background:rgba(0,0,0,0.8);

}

.point_content{
  position: absolute;
  width: 550px;
  height: 80%;
  left:50%; top:50%;
  transform:translate(-50%,-50%);
  background-color: rgba(17,65,15,0.8);
  border: 2px solid white;
  border-radius: 15px;
	display: none;
}
.regist_form{
	position: absolute;
	width: 550px;
	height: 80%;
	left:50%; top:50%;
	transform:translate(-50%,-50%);
	background-color: rgba(17,65,15,0.8);
	border: 2px solid white;
	border-radius: 15px;
	color:white;
	text-align: center;
	display: none;
}
.regist_header{
	margin-top: 120px;
	font-size: 3.0em;
}

.regist_content{
	margin-top: 120px;
	font-size: 3.0em;
}

.regist_question{
	margin-top: 80px;
	font-size: 1.7em;
}

.regist_point{
	font-size: 1.7em;
	margin-top: 10px;
}
.regist_btn{
	margin-top: 120px;

}

.regist_ok{
	background-color:rgba(17,65,15,0.8);
	border-radius: 5px;
	font-size: 2.3em;
	width:150px;
	border: 2px solid white;
}
.regist_ok:hover{
	background-color: white;
	color: rgba(17,65,15,0.8);
}

.regist_cancle{
	background-color:rgba(17,65,15,0.8);
	border-radius: 5px;
	font-size: 2.3em;
	width:150px;
	margin-right: 20px;
	border: 2px solid white;
}
.regist_cancle:hover{
	background-color: white;
	color: rgba(17,65,15,0.8);
}

.point_result{
  position: absolute;
  width: 550px;
  height: 80%;
  left:50%; top:50%;
  transform:translate(-50%,-50%);
  background-color: rgba(17,65,15,0.8);
  border: 2px solid white;
  border-radius: 15px;
  display:
}
.point_result_content{
  position: absolute;
  width: 530px;
  height: 70%;
  left:50%; top:50%;
  transform:translate(-50%,-50%);
  font-size: 1.7em;
  margin-top: 100px;
  color:white;
  text-align: center;
}
.point_result_footer{
  position: absolute;
  width: 100%;
  text-align: center;
  bottom: 70px;
}
.point_result_btn{
	background-color:rgba(17,65,15,0.8);
	border-radius: 5px;
	font-size: 2.2em;
	width:160px;
	margin-bottom: -15px;
	border: 2px solid white;
	color:white;
}
.point_result_btn:hover{
	background-color: white;
	color: rgba(17,65,15,0.8);
}
.point_result_content_btn{
  background-color: white;
  color:black;
  border-radius: 15px;
  border: 2px solid black;
}

.footer {
	position: fixed;
	bottom: 0;
	width: 100%;
	height: 50px;
	background-color: rgb(17, 65, 15);
  z-index: -1;
}

.phoneNumber {
	background-color: lightgrey;
	width: 480px;
	height: 62%;
  margin: 0 auto;
  border: 3px solid black;
  border-radius: 15px 15px 15px 15px;
}

.header{
  text-align: center;
}

h1{
  margin:50px auto;
  font-size: 3.0em;
  color:white;
}

.print {
	width: 100%;
	height: 20%;
}

.textarea {
  background-color: white;
  border-radius: 15px 15px 0px 0px;
	width: 100%;
	height: 100%;
  margin: 0 auto;
	vertical-align: middle;
	text-align: center;
	line-height:105px;
	font-size: 3.6em;
}

.button {
  width: 100%;
  margin: 0 auto;
}

.keypad {
	width: 33.33%;
	height: 91.1px;
	display: block;
	background-color: #eee;
	margin-bottom: 0px;
	margin-right: 0px;
  margin: 0px auto;
	float: left;
	font-size: 2.0em;
}
.keypad:nth-child(4), .keypad:nth-child(7), .keypad:nth-child(10){
  clear:both;
}
.keypad:nth-child(10){
  border-radius: 0px 0px 0px 15px;
}
.keypad:nth-child(12){
  border-radius: 0px 0px 15px 0px;
}
.pointBtnBox{
  text-align: center;
  margin-top: 10%;
}
.pointBtn{
	background-color:rgba(17,65,15,0.8);
	border-radius: 5px;
	font-size: 1.9em;
	width:150px;
	margin-right: 5px;
	border: 2px solid white;
	padding: 5px;
	color:white;
}

.pointBtn:hover{
	background-color: white;
	color: rgba(17,65,15,0.8);
}
.point_result_header{
  font-size: 2.6em;
  color:white;
  text-align: center;
  margin-top: 50px;
}
.hiddenarea {
  display: none;
}
.bottom_btn{
  position: fixed;
  width: 100%;
  bottom: 120px;
  text-align: center;
  z-index: -1;
}

.base_Btn{
  background-color: white;
  border: 2px solid rgb(17, 65, 15);
  font-size: 1.6em;
  border-radius: 10px;
	width:150px;
  margin:10px;
  padding: 10px;
  box-shadow: 0px 0px 3px grey;
}

#base_backBtn:hover{
	background-color: rgba(17,65,15,0.8);
	color: white;
}
#base_pointSearchBtn:hover{
	background-color: rgba(17,65,15,0.8);
	color: white;
}
#base_payment:hover{
	background-color: rgba(17,65,15,0.8);
	color: white;
}
.total_price_container{
  width:900px;
  margin-left: 20%;
  font-size: 2.1em;
  position: fixed;
  bottom: 230px;
  text-align: right;
  z-index: -1;
}
</style>
</head>
<script>

var alert = function(msg, type){
    swal({
        title:'',
        text:msg,
        type:type,
        timer:1000,
        customClass:'sweet-size',
        showConfirmButton:false
    });
}

var regButtons=function(){
	$("#minus1").bind("click",function(){
		var stock = $("#stock_num1").html();
		if(stock>1){
			stock--;
		}
		$("#stock_num1").html(stock);
	});
	$("#plus1").bind("click",function(){
		var stock = $("#stock_num1").html();
		stock++;
		$("#stock_num1").html(stock);
	});


	$("#minus2").bind("click",function(){
		var stock = $("#stock_num2").html();
		if(stock>1){
			stock--;
		}
		$("#stock_num2").html(stock);
	});
	$("#plus2").bind("click",function(){
		var stock = $("#stock_num2").html();
		stock++;
		$("#stock_num2").html(stock);
	});


	$("#minus3").bind("click",function(){
		var stock = $("#stock_num3").html();
		if(stock>1){
			stock--;
		}
		$("#stock_num3").html(stock);
	});
	$("#plus3").bind("click",function(){
		var stock = $("#stock_num3").html();
		stock++;
		$("#stock_num3").html(stock);
	});

  $("#pointCancleBtn").bind("click",function(){
    $(".point_container").css('display','none');
  });

  $("#pointSearchBtn").bind("click",function(){
    $(".point_content").css('display','none');
    $(".regist_form").css('display','block');
    clearText();
  });

	$(".regist_cancle").bind("click",function(){

		$(".point_container").css('display','none');
		$(".regist_form").css('display','none');
	});

	$(".regist_ok").bind("click",function(){
		$(".point_result").css('display','block');
		$(".regist_form").css('display','none');
	});

  $("#base_pointSearchBtn").bind("click",function(){
    $(".point_container").css('display','block');
    $(".point_content").css('display','block');
    $(".point_result").css('display','none');
  });

  $("#delPoint").bind("click",function(){
      var point = $("#usablePoint").html().replace(",","");
      if((point-500)<0){
        alert("포인트 최소한도입니다",'warning');
      }else{
      point=point-500;
      }
      var strPoint=""+point;
      var leng = strPoint.length;
      if(leng>3){
      strPoint = strPoint.substring(0,leng-3)+','+strPoint.substring(leng-3,leng);
      $("#usablePoint").html(strPoint);
    }else{
      $("#usablePoint").html(strPoint);
    }
  });

  $("#addPoint").bind("click",function(){
      var point = $("#usablePoint").html().replace(",","");
      point=point*1;

      if(point+500>4200){
        alert("잔여 포인트를 초과하였습니다",'warning');
      }else{
        point=point+500;
      }
      var strPoint=""+point;
      if(strPoint.length>3){
      var leng = strPoint.length;
      strPoint = strPoint.substring(0,leng-3)+','+strPoint.substring(leng-3,leng);
      $("#usablePoint").html(strPoint);
    }else{
      $("#usablePoint").html(strPoint);
    }
  });

  $("#close_point_resultBtn").bind("click",function(){
    $(".point_container").css('display','none');
  });

  $("#paymentBtn").bind("click",function(){
    $(".point_container").css('display','none');
  });
};

$(document).ready(function(){
	regButtons();
});

var temp = "";
var clear ="";

function erase(){
  var textarea = document.getElementById("textarea");
  var hiddenarea = document.getElementById("hiddenarea");

  temp=temp.substring(0, temp.length-1);
  textarea.innerHTML = temp;
  hiddenarea.innerHTML = temp;
  check=temp.substring(temp.length-1);
  if(check=='-'){
    temp=temp.substring(0, temp.length-1);
    textarea.innerHTML = temp;
    hiddenarea.innerHTML = temp;

  }

}
function clearText(){
  var textarea = document.getElementById("textarea");
  var hiddenarea = document.getElementById("hiddenarea");

  temp="";
  textarea.innerHTML = clear;
  hiddenarea.innerHTML = clear;
}

function inputNum(text) {
  var textarea = document.getElementById("textarea");
  var hiddenarea = document.getElementById("hiddenarea");
  if(temp.length>12){
    alert('핸드폰 번호를 확인해주세요','warning');
  }
  else if(temp.length==3){
    temp= temp+"-";
    temp = temp + text;
    textarea.innerHTML=temp;
    hiddenarea.innerHTML = temp;
  }
  else if(temp.length==8){
    temp= temp+"-";
    temp = temp + text;
    textarea.innerHTML=temp;
    hiddenarea.innerHTML = temp;
  }else{
    temp = temp + text;
    textarea.innerHTML=temp;
    hiddenarea.innerHTML = temp;
  }
}

</script>
<body>
	<div class="header">
		<marquee class="ad_text" width="100%">광고 텍스트 영역</marquee>
	</div>
	<div class="logo">로고사진</div>
	<h2>주문을 확인해주세요</h2>
	<div class="container">
		<div class="orderList">
      <div class="item">
          <div class="item_name">메뉴이름</div>
          <div>
          <input id="minus1" class="minus" type="button" value=" - ">
          <span  id="stock_num1" class="stock_num">5</span>
          <input id="plus1" class="plus" type="button" value=" + ">
          </div>
          <div class="item_price">3,000원</div>
      </div>
      <div class="item">
          <div class="item_name">메뉴이름</div>
          <div>
            <input id="minus2" class="minus" type="button" value=" - ">
            <span  id="stock_num2" class="stock_num">4</span>
            <input id="plus2" class="plus" type="button" value=" + ">
          </div>
          <div class="item_price">12,000원</div>
      </div>
      <div class="item">
          <div class="item_name">메뉴이름</div>
          <div>
            <input id="minus3" class="minus" type="button" value=" - ">
            <span  id="stock_num3" class="stock_num">2</span>
            <input id="plus3" class="plus" type="button" value=" + ">
          </div>
          <div class="item_price">8,000원</div>
      </div>
		</div>
	</div>
  <div class="point_container">
    <div class="backgroundColor">
      <div class="point_content">
        <h3>핸드폰 번호를 입력하세요</h3>
        <!--테스트-->
        <div class="phoneNumber">
      		<div class="print">
      			<div class="textarea" id="textarea"></div>
      			<div class="hiddenarea" id="hiddenarea"></div>
      		</div>
      		<div class="button">
      			<input type="button" class="keypad" id="key1" value="1" onclick="inputNum(this.value)">
            <input type="button" class="keypad" id="key2" value="2" onclick="inputNum(this.value)">
            <input type="button" class="keypad" id="key3" value="3" onclick="inputNum(this.value)">
            <input type="button" class="keypad" id="key4" value="4" onclick="inputNum(this.value)">
            <input type="button" class="keypad" id="key5" value="5" onclick="inputNum(this.value)">
            <input type="button" class="keypad" id="key6" value="6" onclick="inputNum(this.value)">
            <input type="button" class="keypad" id="key7" value="7" onclick="inputNum(this.value)">
            <input type="button" class="keypad" id="key8" value="8" onclick="inputNum(this.value)">
            <input type="button" class="keypad" id="key9" value="9" onclick="inputNum(this.value)">
            <input type="button" class="keypad" id="clear" value="정정" onclick="clearText()">
            <input type="button" class="keypad" id="key10" value="0" onclick="inputNum(this.value)">
      			<input type="button" class="keypad" id="erase" value="<-" onclick="erase()">
      		</div>
      	</div>
        <!--테스트끝-->
      <div class="pointBtnBox">
        <input type="button" id="pointCancleBtn" class="pointBtn" value="돌아가기">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" id="pointSearchBtn" class="pointBtn" value="조회하기">
      </div>
      </div>
    <!--point_content 끝-->
    <!--point_result 시작-->
    <div class="point_result">
    <div class="point_result_header">포인트 조회</div>
    <div class="point_result_content">

      잔여 포인트 : 4,200p<br><br>
      주문 금액 : <span id="totalPrice">23,000</span>원<br><br>
      사용 포인트: <span id="usablePoint">4,200</span>p<br><br>
      <input id="delPoint" class="point_result_content_btn" type="button" value="-500p">
      &nbsp;
      <input id="addPoint" class="point_result_content_btn" type="button" value="+500p"><br><br>
    <br>
      ※포인트 사용 최소단위는 500p 입니다※<br>
    </div>
    <div class="point_result_footer">
      <input id="close_point_resultBtn" type="button" class="point_result_btn" value="취소하기">
      &nbsp;&nbsp;&nbsp;&nbsp;
      <input id="paymentBtn" type="button" class="point_result_btn" value="결제하기">
    </div>
    </div>
	<!-- regist_form 시작-->
	<div class="regist_form">
		<div class="regist_header">회원 조회 실패</div>
		<div class="regist_content">010-1234-5678</div>
		<div class="regist_question">해당 번호로 가입하시겠습니까?</div>
		<div class="regist_point">※ 결제 금액의 10%가 적립됩니다 ※</div>
		<div class="regist_btn">
			<button class="regist_cancle">CANCLE</button>
			<button class="regist_ok">OK</button>
		</div>
	</div>
    </div>
  </div>
  <div class="total_price_container">
    합계 : 23,000원
  </div>
  <div class="bottom_btn">
    <button id="base_backBtn" class="base_Btn" onclick="location.href='02'">돌아가기</button>
    <button id="base_pointSearchBtn" class="base_Btn">포인트 조회</button>
    <button id="base_payment" class="base_Btn" onclick="location.href='05'">결제하기</button>
  </div>
  	<div class="footer"></div>
</body>
</html>
