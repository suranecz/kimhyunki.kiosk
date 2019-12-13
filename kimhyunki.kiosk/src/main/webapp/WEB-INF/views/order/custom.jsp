<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css' />
<script    src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js'></script>
<script src='http://code.jquery.com/jquery-3.1.1.min.js'></script>
<title>Menu</title>
<style>

body{
  margin:0;
}
.header{
width:100%;
height: 50px;
display:block;
background: rgb(17,65,15);
}
.ad_text{
font-size: 2.0em;
color:white;

}

.logo{
width: 270px;
height: 270px;
position: absolute;
border: 1px solid black;
margin-top: 30px;
margin-left: 30px;
}

.container{

  width:800px;
  height:800px;
  position:absolute;
  left:50%; top:50%;
  transform:translate(-50%,-50%);
  display:flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  
}
.top-nav{
  width:1000px;
}
.top-nav ul{
  padding:0px; margin:0px;
  width:100%; height:55px;
  list-style: none;
  display:flex;
  flex-direction: row;
  align-items: flex-end;
}
.top-nav ul li{
  width:200px;
  height:50px;
  display:flex;
  justify-content: center; align-items: center;
  background:rgb(197, 22, 29);
  color:white;
  border:2px solid #333;
  margin-right:-2px; /*border의 픽셀과 동일하게 맞추는것을 추천*/
  border-radius:20px 20px 0px 0px;
  cursor:pointer;
  transition: 0.2s;
}
.top-nav ul li:hover{/*hover시 메뉴는 아주 살짝 커지고*/
  width:200px;
  height:58px;
  font-size:1.2em;
}
.top-nav ul li.selected{
  /*각 페이지의 html에 selected라는 클래스 속성을 정적으로 부여하세요. 좀 더 커짐*/
  width:200px;
  height:58px;
  font-size:1.5em;
}
.top-nav ul li.selected:hover{
  /*선택된 메뉴에서는 hover속성이 없어야합니다.*/
  width:200px;
  height:58px;
  font-size:1.5em;
}
.main-panel{
  width:1200px;
  height:170px;
}
.items-wrapper{
  margin:0 auto;
  display:grid;
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
  width:850px;
  height:170px;
  grid-template-columns: 25% 25% 25% 25%;
  grid-template-rows: 100%;
}
.on{
display: block;
}
.off{
display: none;
}
.item{
  background-color:ivory;
  margin:10px;
  border: 1px solid black;
  transition: 0.2s;
}

.item:hover{
transform: scale(1.04);
}

.making-box{
  width:1000px;
  height:550px;
  background-color: #E6E6E6;
  text-align: center;

}
.burger-item{
  position: fixed;
  width: 600px;
  height: 150px;
  display:none;  
  bottom:1.5%;
  border: none;
  left:50%;
  right:50%;
  transform: translate(-50%,0%);


}

.add-burger-item{
  display:block;
}
.order-box{
  padding:20px;
  right:4%;
  top: 15%;
  position: fixed;
  width: 250px;
  border:1px solid #333;
}
.order-box-header{
  text-align: center;
  font-size: 1.5em;
  margin-bottom: 30px;
}
.total-price{
  text-align: right;
  font-size: 1.6em;
  margin-top: 30px;
}

.menuBtn{
 border: none;
 background-color: white;
 font-size: 2.0em;
 display: block;
 color: #A4A4A4;
 cursor: pointer;
}
#next{
position: fixed;
right: -80px;
top: 18%;
}

#pre{
position: fixed;
left: -80px;
top: 18%;
}

.button-area{
  height:50px;
  position: fixed;
  right:3%;
  bottom: 15%;
  justify-content: space-between;
}

.btn{
  background: rgb(197, 22, 29);
  color:white;
  cursor:pointer;
  width:280px;
  font-size: 1.6em;
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 15px;
}
.btn:hover{
  background: #c0392b;
  color:white;
}
.items{
  display: none;
}

.footer{
  position: fixed;
  bottom: 0;
  width: 100%;
  height: 50px;
  background-color: rgb(17,65,15);
}
</style>


</head>
<script>
var temp = ${menuList.size() };
var totalPage_float = temp/8;
var totalPage = parseInt(totalPage_float);
var page = 1 * 1;
var sessionOrderNo = sessionStorage.getItem("orderNo");
var burgerCnt=0;

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

var testRegButtons = function(pageNum){
	page=1*1;
	temp = pageNum;
	totalPage = parseInt(temp/4);
		for(var i=2; i<=totalPage+1; i++){
		$("#item_page"+i).addClass('off');
	} 

	$("#next").on("click", function() {
		if(page<=totalPage){
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
		}else{
			console.log('ㄴㄴ초과');
		}

	});

	$("#pre").on("click", function() {
		if(page>1){
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
		}else{
			console.log('ㄴㄴ첫페이지');
		}
	});
	
	  $(".item").on("click",function(){
		    if(burgerCnt>7){
		    	var addBread="<div id='burger-item"+burgerCnt+"' class='burger-item'>"+
							"<img src='../img/bread2.png' style='width: 100%; height:100%;'"+
							"</div>";
					    	$(".making-box").append(addBread);
					        $("#burger-item"+burgerCnt).css('bottom',7+6*burgerCnt+'%');
					        $("#burger-item"+burgerCnt).css('display','block');
					    	burgerCnt++;
				
		      alert('더 이상 재료를 추가 할 수 없습니다!','warning');
		    }else{
		    	var imgName = $(this).children(".hiddenMenuImg").val();
		    	var makingBurger ="";
		    	
		    	if(imgName=='패티.png'){
		    		console.log('패티맞음');
		    	   makingBurger =  "<div id='burger-item"+burgerCnt+"' class='burger-item'>"+
 								"<img src='../img/"+imgName+"' style='width: 130%; height:100%; margin-right:-20px;'"+
 								"</div>";
		    	}else if(imgName=='토마토'){
			       makingBurger =  "<div id='burger-item"+burgerCnt+"' class='burger-item'>"+
		 							"<img src='../img/"+imgName+"' style='width: 90%; height:100%;'"+
		 							"</div>";
		    	}else if(imgName=='더블치즈'){
				       makingBurger =  "<div id='burger-item"+burgerCnt+"' class='burger-item'>"+
						"<img src='../img/"+imgName+"' style='width: 110%; height:100%;'"+
						"</div>";
		    	}else{
		    	   makingBurger =  "<div id='burger-item"+burgerCnt+"' class='burger-item'>"+
				 				"<img src='../img/"+imgName+"' style='width: 100%; height:100%;'"+
				 				"</div>";
		    	}
		    	$(".making-box").append(makingBurger);
		        $("#burger-item"+burgerCnt).css('bottom',7+6*burgerCnt+'%');
		        $("#burger-item"+burgerCnt).css('display','block');
		    	burgerCnt++;
		        }
		  });
}

var getMenuList = function(menuCategory){
	$(".main-panel").empty();
	$.ajax({
		url:"customWithAjax",
		data:{
			menuCategory : menuCategory
		},
		success:function(menuList){
			var createTable = ""
			var Cnt = 1*1;
			var pageLength = menuList.legnth/4;
			var intPage = menuList.length;
			
			createTable = createTable + "<div id='item_page"+Cnt+"' class='items-wrapper'>";
			for(var i=0; i <= menuList.length-1; i++){
				if(i%4==0 && i !=0){
					Cnt++;
					createTable = createTable + "</div><div id='item_page"+Cnt+"' class='items-wrapper'>";
				}
				createTable = createTable + "<div class='item'>"+
											"<img class='menuImgTag' src='../img/"+menuList[i].menuImg+"' style='width:100%; height:80%;'></img>"+
											"<div class='menuImgTagText'>"+menuList[i].menuName+"</div>"+
											"<input class='hiddenMenuImg' type='hidden' value='"+menuList[i].menuImg+"'>"+
											"</div>";	
			}
				createTable = createTable + "</div>";
			$(".main-panel").html(createTable);
			$("#next").off("click");
			$("#pre").off("click");
			$(".item").off("click");
			testRegButtons(intPage);
		}
	});
}
	
var regButtons=function(){
	$("li").bind("click",function(){
			$(this).addClass("selected");
			$(this).siblings().removeClass("selected");
			var category = $(this).html();
			getMenuList(category);	
	});
};
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
  <div class="header"><marquee  class="ad_text" width="100%">광고 텍스트 영역</marquee></div>
  <div class="logo">로고사진</div>
  <div class="container">
    <div class="top-nav">
      <ul>
        <li id="list0" class="selected">빵</li>
        <li id="list1">패티</li>
        <li id="list2">해산물</li>
        <li id="list3">야채</li>
        <li id="list4">소스</li>
      </ul>
    </div>

    <div class="main-panel">
		<c:set var="count" value="1"></c:set>
		<c:set var="divCnt" value="1"></c:set>
		<div id="item_page${count}" class="items-wrapper">
			<c:forEach var="list" items="${menuList}">
				<div class="item">
					<img class='menuImgTag' src='../img/${list.menuImg}' style="width:100%; height: 80%;"></img>
					<div class='menuImgTagText'>${list.menuName }</div>
					<input class='hiddenMenuImg' type='hidden' value='${list.menuImg }'>
				</div>
											
				<input type="hidden" value="${count = count + 1}">
				<c:choose>
				<c:when test="${count%4==1 && count !=1}">
					</div><div id="item_page${divCnt = divCnt + 1}" class="items-wrapper">
				</c:when>

				</c:choose>
			</c:forEach>
		</div>
    </div>
<button class="menuBtn" id="pre"><</button>
<button class="menuBtn" id="next">></button>


    <div class="making-box">

    </div>
    
  </div>
  <div class="order-box">
    <div class="order-box-header">주문 내역</div>
      <div class="item_list">
        <div class="items" id="item1">오트밀</div>
        <div class="items" id="item2">소고기 패티</div>
        <div class="items" id="item3">소고기 패티</div>
        <div class="items" id="item4">양상추</div>
        <div class="items" id="item5">토마토</div>
        <div class="items" id="item6">피클</div>
        <div class="items" id="item7">올리브</div>

    </div>
    <div class="total-price">${menuList.size()}6,500원</div>
  	
  </div>
  <div class="button-area">
    <div class="btn" onclick="location.href='menu'">주문 취소</div>
    <div class="btn" onclick="location.href='menu'">주문하기</div>
  </div>
    <div class="footer"></div>
</body>
</html>
