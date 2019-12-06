<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>메뉴추가</title>
<script src='http://code.jquery.com/jquery-3.1.1.min.js'></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css' />
<script    src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js'></script>
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
        border-radius: 10px;
        background-color: #ffffff;
        background-color: rgba( 255, 255, 255, 0.5 );
    }
    .addbutton{ /* 추가하기 버튼 */
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
    .addimgbutton{
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
    .addimgbutton {
      overflow: hidden;
      display: inline-block;
      position:absolute;
      bottom: 12.5%;
      left: 20.5%;
    }
    .realaddimgbutton { /* 이미지 변경 버튼 */
      border: 2px solid gray;
      color: gray;
      background-color: white;
      padding: 8px 20px;
      border-radius: 8px;
      font-size: 20px;
      font-weight: bold;
    }
    .addimgbutton input[type=file] {
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
    table input {
      width:50%;
      height:40%;
      font-size:40px;
    }
    #uploadFile{
      display:block;

      width: 150px;
      height: 70px;
      position:absolute;
      bottom:-0px;
      opacity:0;
      border: 1px solid yellow;
      
    }
    #uploadFile:hover{
      cursor:pointer;
    }
    #uploadBtn_wrapper{
      position:fixed;
      bottom: 50%;
      left:20%;
      display:block;
      width: 150px;
      height: 58px;
      background:gray;
      border-radius: 15px;
      font-size: 1.6em;
      
      font-family:'배달의민족 한나는 열한살 TTF';
    }
    #uploadBtn_wrapper:hover{
      cursor:pointer;
      color:white;
    }
    .Btnhide{
      z-index:-10;
    }
    .previewImg{
      width: 430px;
      height: 490px;
      margin-left: -35px;
      margin-top:-40px;
      border: 1px solid grey;
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
	
	var imgView = function(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();        
	        reader.addEventListener("load", function(){
	            $('.previewImg').attr('src', reader.result);
	          }, false);
	        reader.readAsDataURL(input.files[0]);
	    }
	}
  function buttonZIndex(){
    $("#uploadBtn_wrapper").addClass('Btnhide');
  }
	
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	
	 var addMenufunction = function(){
		var image= $("#uploadFile").val();
		var fileName = image.substring(12,image.length);	  
        var menuName = $(".menuName").val();
        var menuCategory = $(".menuCategory").val();
        var menuPrice = $(".menuPrice").val();
        var recommend = $(".recommend_Btn").text();
        $.ajax({
          
            url: "add",
            data:{
              menuCategory : menuCategory,
              menuImg : fileName,
              menuName : menuName,
              menuPrice : menuPrice,
              recommend : recommend
            },
            success:function(){
              alert("메뉴 등록 완료",'success');
              setTimeout(function(){location.href="menuManage"}, 1200);
            },
            error:function(a,b,errMsg){
              alert("입력한 내용이 없습니다");
            }
            
          });
          }
	
	
	//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
  var regButtons=function(){
	  
	    $(".addbutton").bind("click", function() {   
        var formData = new FormData($("form")[0]); 
          
	        $.ajax({
	            method: "post", 
	            url:"uploadImage",
	            data: formData,
	            processData: false, //no serialize
	            contentType: false, // multipart/formdata
				success:function(){
					
				},
	            error: function(a, b, errMsg){
	                alert('업로드실패','warning')
	            },
	        }); 
	        addMenufunction();
	    });
	  
	  
    $(".recommend_Btn").bind("click",function(){
      var check=$(".recommend_Btn").html();
      if(check=='등록'){
      $(".recommend_Btn").text('미등록');
    }else{
      $(".recommend_Btn").text('등록');
    }
    });
    
  };
  $(document).ready(function(){
    regButtons();
  });
</script>
<body>
  <div class="header"><marquee class="ad_text" width="100%">광고 텍스트 영역</marquee></div>
<div class="footer"></div>
  <br>
<div class="container">
  <br><br>
    <h2 font-style = "배달의민족 을지로체 TTF">메뉴추가</h2>
  <br>
    <button class = "backbutton"  onClick="location.href='menuManage'">BACK</button>
    <div class = "imgbox">
       <img class="previewImg">
    </div>
    
    <form>    
    <div font-style = "배달의민족 을지로체 TTF" id="uploadBtn_wrapper"><br>이미지 업로드<input type="file" id="uploadFile" name="uploadFile" onChange="imgView(this),buttonZIndex()"> </div> 
	</form>

    <button class = "addbutton">추가</button>
 
  <table>
    <colgroup>
      <col width = "30%" />
      <col width = "70%" />
    </colgroup>
    <tr>
        <th>메뉴이름</th>
        <th><input class = "menuName" style = "text-align:right;" type="text" required="required"></th>
    </tr>
    <tr>
        <td>가격</td>
        <td><input class = "menuPrice" style = "text-align:right;" type="number" required="required"></td>
    </tr>
    <tr>
	    <td>카테고리</td>
	    <td><input class="menuCategory" style = "text-align:right;" type="text" required="required"></td>
    </tr>
    <tr>
        <td>추천메뉴등록</td>
        <td><button class="recommend_Btn">등록</button></td>
    </tr>
  </table>
  </div>
</body>
</html>

