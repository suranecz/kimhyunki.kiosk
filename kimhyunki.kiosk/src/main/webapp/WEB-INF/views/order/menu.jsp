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
	/*각 페이지의 html에 selected라는 클래스 속성을 정적으로 부여하세요. 좀 더 커짐*/
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
	/*
  그림을 보고 이해가 안가서 대충 냅뒀으니
  알아서 사용하기 좋게 만드시오.
  if, 좌우 <>버튼으로 페이지를 이동한다면
  height을 450px(main-panel)과 맞춘 현재 상태를 유지한다.
  else if, 아래로 스크롤할 예정이라면 height의 500px을 지우고,
  grid-template-rows에 item의 세로픽셀만큼을 두번 연달아 적는다.
  (ex: grid-template-rows: 360px 360px)
  else, 이도저도아니면 확실히 마음을 정해서 다시 문의하도록한다.
  (html 재구축은 공짜가 아니다,,,)
  */
	width: 850px;
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
	background-color: ivory;
	margin: 10px;
	border: 1px solid black;
	transition: 0.2s;
}

.item:hover {
	transform: scale(1.04);
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
	right: -80px;
	top: 35%;
}

#pre {
	position: fixed;
	left: -80px;
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
	font-size: 1.3em;
	margin-top: -8px;
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

	var testRegButtons = function(pageNum){
		page=1*1;
		temp = pageNum;
		totalPage = parseInt(temp/8);
		alert('생성된 페이지넘버'+totalPage);
 		for(var i=2; i<=totalPage+1; i++){
			$("#item_page"+i).addClass('off');
		} 

		$("#next").on("click", function() {
			for(var i =1; i<=totalPage; i++){
				if(page==i && page<=totalPage){
					for(var k=1; k<totalPage+1; k++){
						$("#item_page"+k).addClass('off');
					}
				}
			}
			$("#item_page"+(page+1)).removeClass('off');
			page++;
			console.log(page);

		});

		$("#pre").on("click", function() {

			for(var k =1 ; k>=-5; k--){
			if(page == totalPage*1+k){
				for(var i =totalPage*1+1; i>=1; i--){
					$("#item_page"+i).addClass('off');
					}
				}
			}
			$("#item_page"+(page-1)).removeClass('off');
			page--;
			console.log(page);
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
			if ($("#list4").hasClass("selected") === true) {
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
				alert('intPage값: '+intPage);

				
				createTable = "<div id='item_page"+Cnt+"' class='items-wrapper'>";
				for(var i=0; i <= menuList.length-1; i++){
					if(i%8==0 && i !=0){
						Cnt++;
						createTable = createTable + "</div><div id='item_page"+Cnt+"' class='items-wrapper'>";
					}
					createTable = createTable + "<div class='item'><img class='menuImgTag' src='../img/"+menuList[i].menuImg+"'></img><div class='menuImgTagText'>"+menuList[i].menuName+"</div></div>";	
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
				alert('intPage값: '+intPage);
				
				createTable = createTable + "<div id='item_page"+Cnt+"' class='items-wrapper'>";
				for(var i=0; i <= menuList.length-1; i++){
					if(i%8==0 && i !=0){
						Cnt++;
						createTable = createTable + "</div>"+
						"<div id='item_page"+Cnt+"' class='items-wrapper'>";
					}
					createTable = createTable + "<div class='item'><img class='menuImgTag' src='../img/"+menuList[i].menuImg+"'></img><div class='menuImgTagText'>"+menuList[i].menuName+"</div></div>";	
				}
					createTable = createTable + "</div>";
				$(".main-panel").html(createTable);
				$("#next").off("click");
				$("#pre").off("click");
				testRegButtons(intPage);
				//이부분

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
					<div class="item">
						<img class='menuImgTag' src='../img/${list.menuImg}'></img>
						<div class='menuImgTagText'>${list.menuName }</div>
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
				<h4>주문 내역</h4>
				1955 버거 + 치즈볼 + 콜라<br>

			</div>
			<div class="button-area">
				<div class="btn" onclick="location.href='../'">주문 취소</div>
				<div class="btn" onclick="location.href='checkOrder'">주문하기</div>
			</div>
		</div>
	</div>
	<div class="footer"></div>
</body>
</html>
