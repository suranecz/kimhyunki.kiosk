<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>메뉴수정</title>
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css' />
<script    src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js'></script>
<script src='http://code.jquery.com/jquery-3.1.1.min.js'></script>
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
            font-size: 2.2em;
            border-radius: 10px;
            background-color: #ffffff;
            background-color: rgba( 255, 255, 255, 0.5 );
        }
        .updatebutton{ /* 추가하기 버튼 */
          position:absolute;
          bottom: 12.5%;
          right: 32%;
          border-radius: 10px;
          background-color: #ffffff;
          background-color: rgba( 255, 255, 255, 0.5 );
          width: 7%;
          height: 5%;
          font-size:20px;
        }
        .updateimgbutton{
          position:absolute;
          bottom: 12.5%;
          left: 20.5%;
          border-radius: 10px;
          background-color: #ffffff;
          background-color: rgba( 255, 255, 255, 0.5 );
          width: 7%;
          height: 5%;
          font-size:20px;
        }
        .updateimgbutton {
          overflow: hidden;
          display: inline-block;
          position:absolute;
          bottom: 12.5%;
          left: 20.5%;
        }
        .realupdateimgbutton { /* 이미지 변경 버튼 */
          border: 2px solid gray;
          color: gray;
          background-color: white;
          padding: 8px 20px;
          border-radius: 8px;
          font-size: 20px;
          font-weight: bold;
        }
        .updateimgbutton input[type=file] {
          font-size: 100px;
          position: absolute;
          left: 0;
          top: 0;
          opacity: 0;
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
        .btn{
          font-size: 1em;
        }
        .recommend_Btn{
          background-color:rgba(17,65,15,0.8);
          border-radius: 5px;
          font-size: 1.1em;
          width:250px;
          margin-right: 20px;
          border: 2px solid white;
          color:white;
        }
        .recommend_Btn:hover{
          background-color: white;
	        color: rgba(17,65,15,0.8);
        }
        table {
          border-collapse: separate;
          border-spacing: 0;
          min-width: 60%;
          min-height:64.5%;
          margin-right:2%;

        }
        table tr th,
        table tr td {
          border-right: 1px solid #bbb;
          border-bottom: 1px solid #bbb;
          font-size:30px;
        }
        table tr th:first-child,
        table tr td:first-child {
          border-left: 1px solid #bbb;
          background: #eee;
        }
        table tr th {
          border-top: 1px solid #bbb;
          text-align: center;
        }
        table tr:first-child th:first-child {
          border-top-left-radius: 6px;
        }
        table tr:first-child th:last-child {
          border-top-right-radius: 6px;
        }
        table tr:last-child td:first-child {
          border-bottom-left-radius: 6px;
        }
        table tr:last-child td:last-child {
          border-bottom-right-radius: 6px;
        }
        input {
          width:50%;
          height:40%;
          font-size:40px;
        }
    </style>
</head>
<script>
  var regButtons=function(){
    $(".recommend_Btn").bind("click",function(){
      var check=$(".recommend_Btn").html();

      if(check=='등록'){
      $(".recommend_Btn").text('미등록');
    }else{
      $(".recommend_Btn").text('등록');
    }
    });
    
    $("#updateBtn").bind("click",function(){
    	var menuId = $("#menuId").val();
    	
    	var menuImg = $("#menuImg").val();
    	var menuName = $(".menuName").val();
    	if(menuName==''){
    		menuName='noName';
    	}
    	var menuPrice = $(".menuPrice").val();
    	if(menuPrice==''){
    		menuPrice=-1;
    	}
    	var recommend = $(".recommend_Btn").text();

    	$.ajax({
    		url: "update",
    		data:{
    			menuId : menuId,
    			menuImg : menuImg,
    			menuName : menuName,
    			menuPrice : menuPrice,
    			recommend : recommend
    		},
    		success:function(){
    			alert("메뉴 수정 완료");
    			location.href="menuManage";
    		},
    		error:function(a,b,errMsg){
    			alert("수정한 내용이 없습니다");
    		}
    		
    	});
    	
    });
    
  };
  $(document).ready(function(){
    regButtons();
  });
  

</script>
<body>
  <div class="header"><marquee class="ad_text" width="100%">광고 텍스트 영역</marquee></div>
<div class="footer"></div>
  <br><input id="menuId" type="hidden" value="${menu.menuId }"/>
<div class="container">
  <br><br>
    <h2 font-style = "배달의민족 을지로체 TTF">메뉴수정</h2>
  <br>
    <button class = "backbutton"  onClick="location.href='menuManage'">BACK</button>
    <div class = "imgbox">
      <br><br><br><br><br>
      <br><br><br><br>
      <h5><input type="hidden" id="menuImg" value="${menu.menuImg }"/>${menu.menuImg}</h5>
    </div>
    <button id="updateBtn" class = "updatebutton">수정</button>
    <!-- <button class = "updatebutton" onClick="location.href='01'">수정</button>-->

    <div class="updateimgbutton">
      <button class="btn">이미지추가</button>
      <input type="file" name="myfile" />
    </div>
  <table>
    <colgroup>
      <col width = "30%" />
      <col width = "70%" />
    </colgroup>
    <tr>
        <th>메뉴이름</th>
        <th><input class="menuName" style="text-align:right;" name="menuName" type="text" placeholder="${menu.menuName }"></th>
    </tr>
    <tr>
        <td>가격</td>
        <td><input class="menuPrice" style="text-align:right;" name="menuPrice" type="number" placeholder="${menu.menuPrice }" ></td>
    </tr>
    <tr>
        <td>추천메뉴등록</td>
        <td><button class="recommend_Btn">${menu.recommend}</button></td>
    </tr>
  </table>
  </div>
</body>
</html>
