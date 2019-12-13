<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
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
  width:400px;
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
  margin-left: 50px;
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
	font-size: 2.1em;
	width:140px;
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
#hidden_regist_content{
	display: none;
}
</style>
</head>
<script>
var maxPoint=0;
var usePoint=0;
var sessionPhoneNo=""+"";
var sessionOrderNo = sessionStorage.getItem("orderNo");


var alert = function(msg, type){
    swal({
        title:'',
        text:msg,
        type:type,
        timer:1500,
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

  $("#pointCancleBtn").bind("click",function(){
    $(".point_container").css('display','none');
  });

  $("#pointSearchBtn").bind("click",function(){
	  var phoneNum = $("#hiddenarea").text();

	  if(checkPhoneNo()){
		  $.ajax({
			url:"../user/findUser",
			data:{
				phoneNo : phoneNum
			},
		  	success:function(user){
		  		maxPoint = user.point;
		  		var totalPrice=$("#hidden_totalPrice").text();
		  		
		  		//조회실패 핸드폰번호입력
		  		var strPhoneNum = phoneNum.substring(0,3)+"-"+phoneNum.substring(3,7)+"-"+phoneNum.substring(7,11);
		  		$(".regist_content").html(strPhoneNum);
		  		$("#hidden_regist_content").html(phoneNum);
		  		usePoint=user.point;
		        var strUsePoint=""+usePoint;
		        var pointLeng = strUsePoint.length;
		        if(pointLeng>3){
		        	strUsePoint = strUsePoint.substring(0,pointLeng-3)+','+strUsePoint.substring(pointLeng-3,pointLeng);
		        }
		        var strTotalPrice =String(totalPrice);
		        var totalLeng = strTotalPrice.length;
		        if(totalLeng>3){
		        	strTotalPrice = strTotalPrice.substring(0,totalLeng-3)+','+strTotalPrice.substring(totalLeng-3,totalLeng);
		        }
		  		//포인트사용페이지 입력
		  		$("#oriPoint").html(strUsePoint);
		  		$("#hiddenOriPoint").html(user.point);
		  		$("#searchPhoneNo").html(user.phoneNo);
		  		if(usePoint<=totalPrice){
		  		$("#usablePoint").html(strUsePoint);
		  		}else{
		  		$("#usablePoint").html(strTotalPrice);
		  		}
		  		clearText();

		  		//조회 성공시 이동할 페이지 정하기
		  		if($(user).length==1){
		  	    $(".point_content").css('display','none');
		  	    $(".point_result").css('display','block');
		  		}else{
			  		$(".point_content").css('display','none');
			  	    $(".regist_form").css('display','block');
		  		}
		  	   
		  	},
		  	error:function(a,b,errMsg){
		  		alert('조회실패함','warning');
		  	} 
		  });
	  }else{
		  alert('핸드폰번호를 확인해주세요','warning');
	  }
  });

	$(".regist_cancle").bind("click",function(){
		$(".point_container").css('display','none');
		$(".regist_form").css('display','none');
	});

	/////////////////////////////////////////////////////////////////////
	$(".regist_ok").bind("click",function(){
		var regist_phoneNum = $("#hidden_regist_content").html();
		$.ajax({
			url:"../user/joinUser",
			data:{
				phoneNo : regist_phoneNum
			},
			success:function(flag){
				alert("회원등록이 완료되었습니다",'success');
			},
			complete:function(){
				$(".regist_form").css('display','none');
				$(".point_container").css('display','none');
			}
		});	
	})
	////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////
	$("#addPointBtn").bind("click",function(){
		
		var addPointPhoneNo = $("#hidden_regist_content").html();
		sessionStorage.setItem("phoneNo", addPointPhoneNo);

		var price = $("#hidden_totalPrice").text();
		price=price*1;
		console.log('price값:'+price);
		var totalPrice = price/10;
		$.ajax({
			url:"addPoint",
			data:{
				phoneNo: addPointPhoneNo,
				point : totalPrice
			},
			success:function(){
				console.log('적립성공');
				alert(totalPrice+"원이 적립되었습니다",'success');
				setTimeout(function(){location.href='complete';}, 1600);	
			}
		});
	})
	////////////////////////////////////////////////////////////////////
  $("#base_pointSearchBtn").bind("click",function(){
    $(".point_container").css('display','block');
    $(".point_content").css('display','block');
    $(".point_result").css('display','none');
  });

  $("#delPoint").bind("click",function(){
      var point = $("#usablePoint").html().replace(",","");
      var price = $("#hidden_totalPrice").text();
      
      if((point-500)<0){
        alert("포인트 최소한도입니다",'warning');
      }else{
      point=point-500;
      usePoint = point;
      }
      var strPoint=""+point;
      var leng = strPoint.length;
      if(leng>3){
      strPoint = strPoint.substring(0,leng-3)+','+strPoint.substring(leng-3,leng);
      $("#usablePoint").html(strPoint);
      $("#hiddenusePoint").html(usePoint);
    }else{
      $("#usablePoint").html(strPoint);
      $("#hiddenusePoint").html(usePoint);
    }
  });

  $("#addPoint").bind("click",function(){
      var point = $("#usablePoint").html().replace(",","");
      point=point*1;
      var price = $("#hidden_totalPrice").text();

      if(point+500>maxPoint || point+500>price){
        alert("사용가능 포인트를 초과하였습니다",'warning');
      }else{
        point=point+500;
        usePoint=point;
      }
      var strPoint=""+point;
      if(strPoint.length>3){
      var leng = strPoint.length;
      strPoint = strPoint.substring(0,leng-3)+','+strPoint.substring(leng-3,leng);
      $("#usablePoint").html(strPoint);
      $("#hiddenusePoint").html(usePoint);
    }else{
      $("#usablePoint").html(strPoint);
      $("#hiddenusePoint").html(usePoint);

    }
  });

  $("#close_point_resultBtn").bind("click",function(){
    $(".point_container").css('display','none');
  });

  $("#paymentBtn").bind("click",function(){
	  var oriPoint = $("#hiddenOriPoint").text();
	  var totalPoint = oriPoint - usePoint;
	  var hiddenPhoneNo = $("#searchPhoneNo").text();
	  var price = $("#hidden_totalPrice").text();
		console.log('oriPoint 값:'+oriPoint);
		console.log('totalPoint 값:'+totalPoint);
		console.log('hiddenPhoneNo 값:'+hiddenPhoneNo);
		console.log('price 값:'+price);
		console.log('usePoint 값:'+usePoint);
		
	  price=price*1;
	  var totalPrice = price-usePoint;
	  var strTotalPrice = String(totalPrice);
	  var leng = strTotalPrice.length;
	  var strPrice="";
	  if(leng>3){
	  	strPrice = strTotalPrice.substring(0,leng-3)+','+strTotalPrice.substring(leng-3,leng);
	  }else{
		strPrice=strTotalPrice.substring(leng-3,leng);
	  }
	 
	  $.ajax({
		  url: "../user/usePoint",
		  data:{
			  phoneNo : hiddenPhoneNo,
			  point : totalPoint
		  },
		  success:function(){

			 alert(strPrice+'원 결제 완료','success');
			 setTimeout(function(){location.href='complete';}, 1600);	
		  },
		  error:function(a,b,errMsg){
			  alert(errmsg);
		  }
	  
	  });
	  

    $(".point_container").css('display','none');
  });
  
  
};

$(document).ready(function(){
	regButtons();
	writeTotalPrice();
});
var originNo="";
var temp = "";
var clear ="";

function erase(){
  var textarea = document.getElementById("textarea");
  var hiddenarea = document.getElementById("hiddenarea");

  temp=temp.substring(0, temp.length-1);
  originNo = originNo.substring(0, originNo.length-1);
  textarea.innerHTML = temp;
  hiddenarea.innerHTML = originNo;
  check=temp.substring(temp.length-1);
  if(check=='-'){
    temp=temp.substring(0, temp.length-1);
    textarea.innerHTML = temp;
    hiddenarea.innerHTML = originNo;

  }

}
function clearText(){
  var textarea = document.getElementById("textarea");
  var hiddenarea = document.getElementById("hiddenarea");

  originNo="";
  temp="";
  textarea.innerHTML = clear;
  hiddenarea.innerHTML = clear;
}

function checkPhoneNo(){
	var checkNo = $("#hiddenarea").text();
	var flag = false;
	if(checkNo.length==11){
		flag =true;
	}
	return flag;
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
    originNo = originNo + text;
    textarea.innerHTML = temp;
    hiddenarea.innerHTML = originNo;
  }
  else if(temp.length==8){
    temp= temp+"-";
    temp = temp + text;
    originNo = originNo + text;
    textarea.innerHTML=temp;
    hiddenarea.innerHTML = originNo;
  }else{
    temp = temp + text;
    originNo = originNo + text;
    textarea.innerHTML=temp;
    hiddenarea.innerHTML = originNo;
  }
}
function minusStock(orderNo, menuId, count, menuPrice){
	var presentStock = $("#stock_num"+count).html();
		presentStock = presentStock*1;
	var totalPrice = (presentStock-1)*menuPrice;
	var strTotalPrice = String(totalPrice);
    var leng = strTotalPrice.length;
    var strPrice = strTotalPrice.substring(0,leng-3)+','+strTotalPrice.substring(leng-3,leng);

	if(presentStock>=1){
		$.ajax({
			url:"minusStock",
			data:{
				menuId : menuId
			},
			success:function(){
				console.log('수량 -1 성공');
				$("#stock_num"+count).html(presentStock-1);
				$("#item_price"+count).html(totalPrice+'원');
				$("#totalPrice").html(strPrice);
				//$("#totalPrice").html(totalPrice);

				selectTotalPrice(orderNo);
			}
		});
	};
}

function plusStock(orderNo, menuId, count, menuPrice){
	var presentStock = $("#stock_num"+count).html();
		presentStock = presentStock*1;
	var totalPrice = (presentStock+1)*menuPrice;
		$.ajax({
			url:"plusStock",
			data:{
				menuId : menuId
			},
			success:function(){
				console.log('수량 +1 성공');
				$("#stock_num"+count).html(presentStock+1);
				$("#item_price"+count).html(totalPrice+'원');
				$("#totalPrice").html(totalPrice);
				selectTotalPrice(orderNo);
			}
		});
}

var selectTotalPrice = function(orderNo){
	$.ajax({
		url:"selectTotalPrice",
		data:{
			orderNo : orderNo
		},
		success: function(totalPrice){
			var strTotalPrice = String(totalPrice);
		    var leng = strTotalPrice.length;
		    var strPrice = strTotalPrice.substring(0,leng-3)+','+strTotalPrice.substring(leng-3,leng);
			$("#totalMoney").html(strPrice);
			$("#totalPrice").html(strPrice);
			$("#hidden_totalPrice").html(totalPrice);
			//$("#totalMoney").html(totalPrice);
			//$("#totalPrice").html(totalPrice);
		}
	});
}
var writeTotalPrice = function(){
	var totalPrice=${totalPrice};
	var strTotalPrice = String(totalPrice);
    var leng = strTotalPrice.length;
    var strPrice = strTotalPrice.substring(0,leng-3)+','+strTotalPrice.substring(leng-3,leng);
    $("#totalMoney").html(strPrice);
	$("#totalPrice").html(strPrice);
	$("#hidden_totalPrice").html(totalPrice);
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
	<c:set var="count" value="0"></c:set>
	<c:forEach var="list" items="${cartList}">
	      <div id="item${count=count+1}" class="item">
			  <div class="item_name">${list.menuName }</div>
	          <div>
	          <input id="minus${count}" class="minus" type="button" value=" - " onclick="minusStock(${list.orderNo},${list.menuId},${count},${list.menuPrice})">
	          <span  id="stock_num${count}" class="stock_num">${list.stock }</span>
	          <input id="plus${count}" class="plus" type="button" value=" + " onclick="plusStock(${list.orderNo},${list.menuId},${count},${list.menuPrice})">
	          </div>
	          <div id="item_price${count}" class="item_price">${list.menuPrice}원</div>
          </div>
	</c:forEach>
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
      			<input type="button" class="keypad" id="erase" value="↩" onclick="erase()">
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
<input type="hidden" id="searchPhoneNo">
      잔여 포인트 : <span id="oriPoint"></span>p<br><br>
      <input type="hidden" id="hiddenOriPoint">
      주문 금액 : <span id="totalPrice"></span>원<br><br>
      <input type="hidden" id="hidden_totalPrice">
      사용 포인트: <span id="usablePoint"></span>p<br><br>
      <input id="delPoint" class="point_result_content_btn" type="button" value="-500p">
      &nbsp;
      <input id="addPoint" class="point_result_content_btn" type="button" value="+500p"><br><br>
    <br><input id="hiddenusePoint" type="hidden">
      ※포인트 사용 최소단위는 500p 입니다※<br>
    </div>
    <div class="point_result_footer">
      <input id="close_point_resultBtn" type="button" class="point_result_btn" value="취소하기">
      &nbsp;&nbsp;&nbsp;
      <input id="addPointBtn" type="button" class="point_result_btn" value="적립하기">
      &nbsp;&nbsp;&nbsp;
      <input id="paymentBtn" type="button" class="point_result_btn" value="결제하기">
    </div>
    </div>
	<!-- regist_form 시작-->
	<div class="regist_form">
		<div class="regist_header">회원 조회 실패</div>
		<div class="regist_content"></div>
		<div id="hidden_regist_content"></div>
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
    합계 : <span id ="totalMoney"></span>원
  </div>
  <div class="bottom_btn">
    <button id="base_backBtn" class="base_Btn" onclick="location.href='menu'">돌아가기</button>
    <button id="base_pointSearchBtn" class="base_Btn">포인트 조회</button>
    <button id="base_payment" class="base_Btn" onclick="location.href='complete'">결제하기</button>
  </div>
  	<div class="footer"></div>
</body>
</html>
