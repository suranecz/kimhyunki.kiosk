<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src='http://code.jquery.com/jquery-3.1.1.min.js'></script>
<title>Menu</title>
<style>
body {
	margin: 0;
}

.header {
	width: 100%;
	height: 50px;
	display: block;
	background: rgb(17, 65, 15);
}

.ad_text {
	font-size: 2.0em;
	color: white;
}

.logo {
	width: 270px;
	height: 270px;
	position: absolute;
	border: 1px solid black;
	margin-top: 30px;
	margin-left: 30px;
}

.container {
	width: 800px;
	height: 800px;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.top-nav {
	width: 1000px;
}

.top-nav ul {
	padding: 0px;
	margin: 0px;
	width: 100%;
	height: 55px;
	list-style: none;
	display: flex;
	flex-direction: row;
	align-items: flex-end;
}

.top-nav ul li {
	width: 200px;
	height: 50px;
	display: flex;
	justify-content: center;
	align-items: center;
	background: rgb(197, 22, 29);
	color: white;
	border: 2px solid #333;
	margin-right: -2px; /*border의 픽셀과 동일하게 맞추는것을 추천*/
	border-radius: 20px 20px 0px 0px;
	cursor: pointer;
	transition: 0.2s;
}

.top-nav ul li:hover { /*hover시 메뉴는 아주 살짝 커지고*/
	width: 200px;
	height: 58px;
	font-size: 1.2em;
}

.top-nav ul li.selected {
	width: 200px;
	height: 58px;
	font-size: 1.5em;
}

.top-nav ul li.selected:hover {
	/*선택된 메뉴에서는 hover속성이 없어야합니다.*/
	width: 200px;
	height: 58px;
	font-size: 1.5em;
}

.main-panel {
	width: 1200px;
	height: 450px;
}

.items-wrapper {
	margin: 0 auto;
	display: grid;
	width: 1050px;
	height: 450px;
	grid-template-columns: 25% 25% 25% 25%;
	grid-template-rows: 50% 50%;
}

.on {
	display: block;
}

.off {
	display: none;
}

.item {

	margin: 10px;

	transition: 0.2s;
}

.item:hover {
	transform: scale(1.07);
}

.order-table {
	width: 1000px;
	height: 250px;
}

.order-box {
	margin: 20px;
	padding: 20px;
	margin-left: 0px;
	margin-right: 0px;
	height: 100px; /*최소 height을 확보하는게 좋음. 알아서 조절하셈*/
	border: 1px solid #333;
}

.button-area {
	height: 50px;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
}

.menuBtn {
	border: none;
	background-color: white;
	font-size: 2.0em;
	display: block;
	color: #A4A4A4;
	cursor: pointer;
}

#next {
	position: fixed;
	right: -150px;
	top: 35%;
}

#pre {
	position: fixed;
	left: -150px;
	top: 35%;
}

.btn {
	background: rgb(197, 22, 29);
	color: white;
	cursor: pointer;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 48%;
}

.btn:hover {
	background: #c0392b;
}

.footer {
	position: fixed;
	bottom: 0;
	width: 100%;
	height: 50px;
	background-color: rgb(17, 65, 15);
}

.menuImgTagText {
	text-align: center;
	font-size: 1.2em;
	width:130%;
	margin-left:-15%;
	margin-top: -8px;
	font-weight:bold;
}
.menuImgTagPrice{
	text-align: center;
	font-weight:bold;
	font-size: 1.2em;
	
}

.menuImgTag {
	width: 100%;
	height: 85%;
}
</style>
</head>
<script>
	var temp = ${menuList.size() };
	var totalPage_float = temp/8;
	var totalPage = parseInt(totalPage_float);
	var page = 1 * 1;
	var sessionOrderNo = sessionStorage.getItem("orderNo");

	
	function cancleOrder(){
		$.ajax({
			url:"secedeOrder",
			data:{
				orderNo: sessionOrderNo
			},
			success:function(){
				console.log(sessionOrderNo+"번 주문 취소");
				location.href='../';
			}
		});
	}
	
	var testRegButtons = function(menuNum){
		page=1*1;
		totalPage = parseInt(menuNum/8);
 		for(var i=2; i<=totalPage+1; i++){
			$("#item_page"+i).addClass('off');
		} 
		$("#pre").on("click", function() {
			if(page>1){
				for(var i =totalPage*1+1; i>=1; i--){
					$("#item_page"+i).addClass('off');
				}
			$("#item_page"+(page-1)).removeClass('off');
			page--;
			console.log(page);
			}else{
				console.log('첫페이지');
			}
		});
		$("#next").on("click", function() {
			if(page<=totalPage){
				for(var k=1; k<totalPage+1; k++){
					$("#item_page"+k).addClass('off');
				}
			$("#item_page"+(page+1)).removeClass('off');
			page++;
			console.log(page);
			}else{
				console.log('마지막 페이지');
			}
		});
	}
	
	var regButtons = function() {
		$("li").on("click", function() {

			$(this).addClass("selected");
			$(this).siblings().removeClass("selected");
			
			if($(this).html() =='사이드'){
				getMenuList($(this).html());
				
			}else if($(this).html() =='햄버거'){
				getMenuList($(this).html());

			}else if($(this).html() =='음료'){
				getMenuList($(this).html());

			}else if($(this).html() =='추천메뉴'){
				getRecommendMenuList();
			}
			if($("#list4").hasClass("selected") === true){
				location.href = "custom";
			}
		});
	};
	var getRecommendMenuList = function(){
		$(".main-panel").empty();
		$.ajax({
			url:"recommendMenuList",
			success:function(menuList){
				
				var createTable = ""
				var Cnt = 1*1;
				var pageLength = menuList.length/8;
				var intPage =menuList.length;
				
				createTable = "<div id='item_page"+Cnt+"' class='items-wrapper'>";
				for(var i=0; i <= menuList.length-1; i++){
					if(i%8==0 && i !=0){
						Cnt++;
						createTable = createTable + "</div><div id='item_page"+Cnt+"' class='items-wrapper'>";
					}
					createTable = createTable + "<div class='item' onclick='setCartList(this)'>"+
					"<img class='menuImgTag' src='../img/"+menuList[i].menuImg+"'></img>"+
					"<div class='menuImgTagText'>"+menuList[i].menuName+"</div>"+
					"<div class='menuImgTagPrice'>₩ "+menuList[i].menuPrice+"원</div>"+
					"<input type='hidden' class='hiddenMenuId' value="+menuList[i].menuId+"></div>";
					}
					createTable = createTable + "</div>";
				$(".main-panel").html(createTable);
				$("#next").off("click");
				$("#pre").off("click");
				testRegButtons(intPage);
			}
		});
	}
	
	
	var getMenuList = function(category) {
		$(".main-panel").empty();
			var menuCategory = category;
			$.ajax({
				url:"customWithAjax",
				data:{
					menuCategory : menuCategory
				},
				success:function(menuList){
				var createTable = ""
				var Cnt = 1*1;
				var pageLength = menuList.length/8;
				var intPage = menuList.length;
				
				createTable = createTable + "<div id='item_page"+Cnt+"' class='items-wrapper'>";
				for(var i=0; i <= menuList.length-1; i++){
					if(i%8==0 && i !=0){
						Cnt++;
						createTable = createTable + "</div>"+
						"<div id='item_page"+Cnt+"' class='items-wrapper'>";
					}
					createTable = createTable + "<div class='item' onclick='setCartList(this)'>"+
												"<img class='menuImgTag' src='../img/"+menuList[i].menuImg+"'></img>"+
												"<div class='menuImgTagText'>"+menuList[i].menuName+"</div>"+
												"<div class='menuImgTagPrice'>₩ "+menuList[i].menuPrice+"원</div>"+
												"<input type='hidden' class='hiddenMenuId' value="+menuList[i].menuId+"></div>";	
				}
					createTable = createTable + "</div>";
				$(".main-panel").html(createTable);
				$("#next").off("click");
				$("#pre").off("click");
				testRegButtons(intPage);
				}
			});
	}
	$(document).ready(function(){
		for(var i=2; i<=totalPage+1; i++){
			$("#item_page"+i).addClass('off');
		} 
		var pageNum=${menuList.size()}
		regButtons();
		testRegButtons(pageNum);
	});
function setCartList(item){
	var cartList = $(".order-list").html();
	
	var menuName= $(item).children(".menuImgTagText").html();
	var menuId = $(item).children(".hiddenMenuId").val();
	var menuPrice = $(item).children(".menuImgTagPrice").html();
	
	var strMenuPrice =menuPrice+"";
	var len = strMenuPrice.length;
	strMenuPrice= strMenuPrice.substr(2,len-1);
	menuPrice=parseInt(strMenuPrice);

	var orderNo = sessionStorage.getItem("orderNo");
	
	$.ajax({
		url:"setCartList",
		data:{
			orderNo: orderNo,
			menuId : menuId,
			menuName : menuName,
			menuPrice : menuPrice
		},
		success: function(){
			console.log('장바구니 등록성공');
		}
	});
	cartList = cartList +menuName;
	$(".order-list").html(cartList+"/");
}

</script>
<body>
	<div class="header">
		<marquee class="ad_text" width="100%">광고 텍스트 영역</marquee>
	</div>
	<div class="logo">로고사진</div>
	<div class="container">
		<div class="top-nav">
			<ul>
				<li id="list0" class="selected">추천메뉴</li>
				<li id="list1">햄버거</li>
				<li id="list2">음료</li>
				<li id="list3">사이드</li>
				<li id="list4">나만의 햄버거</li>
			</ul>
		</div>

		<div class="main-panel">
			<c:set var="count" value="1"></c:set>
			<c:set var="divCnt" value="1"></c:set>
			<div id="item_page${count}" class="items-wrapper">
				<c:forEach var="list" items="${menuList}">
					<div class="item" onclick="setCartList(this)">
						<img class='menuImgTag' src='../img/${list.menuImg}'></img>
						<div class='menuImgTagText'>${list.menuName}</div>
						<div class='menuImgTagPrice'>₩ ${list.menuPrice }원</div>
						<input type="hidden" class="hiddenMenuId" value="${list.menuId}">
					</div>
					<input type="hidden" value="${count = count + 1}">
					<c:choose>
					<c:when test="${count%8==1 && count !=1}">
						</div><div id="item_page${divCnt = divCnt + 1}" class="items-wrapper">
					</c:when>

					</c:choose>
				</c:forEach>
			</div>
		</div>
		
		<button class="menuBtn" id="pre"><</button>
		<button class="menuBtn" id="next">></button>
		<div class="order-table">
			<div class="order-box">
				주문내역
        		<div class="order-list"></div>

			</div>
			<div class="button-area">
				<div class="btn" id="cancleOrder()">주문 취소</div>
				<div class="btn" onclick="location.href='checkOrder'">주문하기</div>
			</div>
		</div>
	</div>
	<div class="footer"></div>
</body>
</html>
