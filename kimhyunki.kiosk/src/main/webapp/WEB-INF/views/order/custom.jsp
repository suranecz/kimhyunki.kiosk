<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  width: 450px;
  height: 80px;
  background-color: lightgrey;
  bottom:1.5%;
  border: 1px solid black;
  left:50%;
  right:50%;
  transform: translate(-50%,0%);
  display: none;

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
<style>
#burger-item1{
  background:#e7c582;
  border-radius:30px 30px 50px 50px;
  border:none;
}
#burger-item1 div{
  width:100%; height:40px;
  background:#ffbf65;
  border-radius:100px;
}
#burger-item2{
  background:none;
  border:none;
}
#burger-item2 div:first-child{
  background:#4dd091;
  height:100%; transform:skewX(20deg) rotate(3deg);
  border-radius:0px 150px 10px 35px;
}
#burger-item2 div:last-child{
  background:#4dd091;
  width:100%;
  margin-top:-60px;
  height:60px; transform:skewX(-10deg) rotate(-2deg);
  border-radius:50px 30px 10px 25px;
}
#burger-item3{
  background:red;
  border:none;
  border-radius:100px;
}
#burger-item3 div{
  background:#ff4444;
  border:none;
  border-radius:100px;
  width:100%; height:70px;
}
#burger-item4{
  background:#a52a2a;
  border:none;
  border-radius: 20px;
}
#burger-item4 div{
  width:100%; height:60%;
  background:#cc5d40;
  border-radius: 20px;
  display:flex;
  justify-content: center;
  align-items: center;
}
#burger-item4 div span{
  display:block;
  width:100px; height:3px;
  background-color:#fed4cc;
  transform: rotate(-20deg);
}
#burger-item5{
  background:radial-gradient(transparent 0%, transparent 25%, white 25%, white 50%, #f9f5ea 50%, #f9f5ea 100%);
  border-radius:50%;
  border:2px solid plum;
  height:70px;
}
#burger-item5 div{
  background:radial-gradient(transparent 0%, transparent 25%, white 25%, white 50%, #f9f5ea 50%, #f9f5ea 100%);
  border-radius:50%;
  border:2px solid plum;
  height:60px; width:46%;
  margin-top:-20px;
  display:inline-block;
}
#burger-item5 div:last-child{
  width:50%;
}
#burger-item6{
  background:none;
  border:none;
  transform:scaleY(0.3) translate(-50%, -100px);
}
#burger-item6 div{
  background:#ffec59;
  width:400px; height:400px;
  border:none;
  border-radius:200px 10px 10px 10px;
  transform:rotate(45deg);
}
#burger-item7{
  background:#e7c582;
  border-radius:100px 100px 0px 0px;
  border:none;
}
#burger-item7 div{
  width:10px; height:10px;
  border:1px solid #cd7f32;
  background:white;
  border-radius:10px;
  margin:0 auto;
  display:inline-block;
}
#burger-item7 div:nth-child(1){
  transform:skewX(30deg) translateX(-20px);
}
#burger-item7 div:nth-child(2){
  transform:skewX(30deg);
}
#burger-item7 div:nth-child(3){
  transform:skewX(30deg) translate(15px);
}
</style>
</head>
<script>
var page=1*1;
var pages=[1,2,3];

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
	$("#next").bind("click",function(){
		if(page==1){
			$("#item_page1").addClass('off');
			$("#item_page2").removeClass('off');
			$("#item_page3").addClass('off');
			page++;
		}else if(page==2){
			$("#item_page1").addClass('off');
			$("#item_page2").addClass('off');
			$("#item_page3").removeClass('off');
			page++;
		};
	});

	$("#pre").bind("click",function(){
		if(page==3){
			$("#item_page1").addClass('off');
			$("#item_page2").removeClass('off');
			$("#item_page3").addClass('off');
			page--;
		}else if(page==2){
			$("#item_page1").removeClass('off');
			$("#item_page2").addClass('off');
			$("#item_page3").addClass('off');
			page--;
		};
	});

	$("li").bind("click",function(){
				$(this).addClass("selected");
				$(this).siblings().removeClass("selected");
	});
  $(".item").bind("click",function(){
    if(stack>7){
      alert('더 이상 재료를 추가 할 수 없습니다!','warning');
    }else{
        $("#burger-item"+stack).css('display','block');
        $("#burger-item"+stack).css('bottom',-3+6*stack+'%');
        $("#item"+stack).css('display','block');
          stack++;
        }
  });

};
$(document).ready(function(){
	$("#item_page2").addClass('off');
	$("#item_page3").addClass('off');
	regButtons();
});
var stack=1;



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
      <div id="item_page1" class="items-wrapper">
      <input type="hidden" value="1">
        <div class="item">재료 사진</div>
        <div class="item">재료 사진</div>
        <div class="item">재료 사진</div>
        <div class="item">재료 사진</div>

      </div>

      <div id="item_page2" class="items-wrapper">
      <input type="hidden" value="2">
        <div class="item">재료 사진1</div>
        <div class="item">재료 사진1</div>
        <div class="item">재료 사진1</div>
        <div class="item">재료 사진1</div>

      </div>

      <div id="item_page3" class="items-wrapper">
      <input type="hidden" value="3">
        <div class="item">재료 사진2</div>
        <div class="item">재료 사진2</div>
        <div class="item">재료 사진2</div>
        <div class="item">재료 사진2</div>

      </div>
    </div>
<button class="menuBtn" id="pre"><</button>
<button class="menuBtn" id="next">></button>


    <div class="making-box">
      <div class="burger-item" id="burger-item1"><div></div></div>
      <div class="burger-item" id="burger-item2"><div></div><div></div></div>
      <div class="burger-item" id="burger-item3"><div></div></div>
      <div class="burger-item" id="burger-item4"><div><span></span><span></span><span></span></div></div>
      <div class="burger-item" id="burger-item5"><div></div><div></div><div></div></div>
      <div class="burger-item" id="burger-item6"><div></div></div>
      <div class="burger-item" id="burger-item7"><div></div><div></div><div></div></div>

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
    <div class="total-price">6,500원</div>
  </div>
  <div class="button-area">
    <div class="btn" onclick="location.href='menu'">주문 취소</div>
    <div class="btn" onclick="location.href='menu'">주문하기</div>
  </div>
    <div class="footer"></div>
</body>
</html>
