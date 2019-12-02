<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css' />
<script    src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js'></script>
<script src='http://code.jquery.com/jquery-3.1.1.min.js'></script>
</head>
<style>
@font-face { 
	font-family: '배달의민족 한나는 열한살 TTF';
    src: url(../font/hannah.ttf) format('truetype');
    }
body {
	margin: 0 auto;
	background-color: rgb(17, 65, 15);
	font-family: '배달의민족 한나는 열한살 TTF';
}
.backbutton {  /* 뒤로가기 */
    position: absolute;
    top: 2.5%;
    right: 2.5%;
    border-radius: 10px;
    background-color: #ffffff;
    background-color: rgba( 255, 255, 255, 0.5 );
}
.container {
	background-color: lightgrey;
	width: 550px;
	height: 700px;
	margin: 0 auto;
	font-family: '배달의민족 한나는 열한살 TTF';
	border: 3px solid black;
	border-radius: 15px 15px 15px 15px;
}

.header {
	text-align: center;
}

h1 {
	margin: 50px auto;
	font-size: 3.0em;
	color: white;
}

.print {
  position: fixed;
	width: 543px;
  margin-left: -15px;
	height: 200px;
}

.textarea {
	background-color: white;
	border-radius: 15px 15px 0px 0px;
	width: 100%;
	height: 180px;
	margin: 0px auto;
  	display: block;
	vertical-align: middle;
	text-align: center;
	line-height: 200px;
	font-size: 5.0em;
	z-index : 10;
}

.button {
	width: 460px;
	height: 550px;
	margin: 0 auto;
  display: block;
  margin-top: 200px;
}

.keypad {
	width: 33.33%;
	height: 120px;
	display: block;
	background-color: #eee;
	margin: 0px auto;
	float: left;
	font-size: 2.2em;
}

.keypad:nth-child(4), .keypad:nth-child(7), .keypad:nth-child(10) {
	clear: both;
}

.hiddenarea {
	background-color: lightpink;
	display: none;
}
</style>
<script type="text/javascript">
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
	function setKey() {
		var arr = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 ];
		arr.sort(function() {
			return 0.5 - Math.random()
		})
		console.log(arr);
		for (var i = 0; i < arr.length; i++) {
			document.getElementById("key" + i).value = arr[i];
		}
	}

	var temp = "";
	var asterisk = "";

	function erase() {
		var textarea = document.getElementById("textarea");
		var hiddenarea = document.getElementById("hiddenarea");
		asterisk = asterisk.substring(0, asterisk.length - 1);
		temp = temp.substring(0, temp.length - 1);
		textarea.innerHTML = asterisk;
		hiddenarea.innerHTML = temp;
	}

	function inputNum(text) {
		var textarea = document.getElementById("textarea");
		var hiddenarea = document.getElementById("hiddenarea");

		temp = temp + text;
		asterisk = asterisk + "*";
		textarea.innerHTML = asterisk;
		hiddenarea.innerHTML = temp;
		if(temp.length>3){
		passwordCheck(temp);
		}
	}

	function clearText() {
		var textarea = document.getElementById("textarea");
		var hiddenarea = document.getElementById("hiddenarea");

		asterisk = "";
		temp = "";
		textarea.innerHTML = asterisk;
		hiddenarea.innerHTML = temp;
	}
	function passwordCheck(password){
		$.ajax({
			method:"get",
			url: "check",
			data:{
				password: password
			},
			success: function(flag){
				if(flag){ 
					alert('관리자 로그인 성공','success');
					clearText();
					setTimeout(function(){location.href="../"}, 1200);
					}
				else{ 
					alert('패스워드를 확인하세요','warning');
					setTimeout(function(){clearText();}, 1100);
					
					}
				//session.setAttribute("admin", login.getPassword());
			},
			error:function(a,b,errMsg){
				
			}
		});
		
	}
</script>
<body onload="setKey()">
	<div class="header">
		<h1>관리자 로그인 ( password = 1234 )</h1>
		 <button class = "backbutton"  onClick="location.href='../'">BACK</button>
	</div>
	<div class="container">
		<div class="print">
			<div class="textarea" id="textarea"></div>
			<div class="hiddenarea" id="hiddenarea"></div>
		</div>
		<div class="button">
			<%
				for (int i = 0; i < 10; i++) {
			%>
			<input type="button" class="keypad" id="key<%=i%>" onclick="inputNum(this.value)">
			<%
				if (i == 8) {
			%>
			<input type="button" class="keypad" id="clear" value="정정" onclick="clearText()">
			<%
				}
				}
			%>

			<!--<input type="button" class="keypad" id="clear" value="정정" onclick="clearText()">  -->
			<input type="button" class="keypad" id="erase" value="↩" onclick="erase()">

		</div>
	</div>
</body>
</html>
