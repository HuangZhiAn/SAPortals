<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/common/baseCss.css">
	<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/download/productDetials.css">
<script type="text/javascript"
	src="<%=path%>/static/js/common/baseJs.js"></script>
<script type="text/javascript"
	src="<%=path%>/static/js/common/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/static/js/kendo/kendo.web.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="/jsp/common/header.jsp"></jsp:include>
	
	<div class="productDetialsContian">
		<div class="productDetialsContext">
			<img  src="<%=path%>/static/img/product_bg11.jpg">
			<div class="productDetialsContextShowWall">
				<div class="productDetialsContextShowWallLeft">
					<span> HMDM Enterprise Edition  Version  5.0   </span>
					<a href="#">Download</a>
				</div>
				<div class="productDetialsContextShowWallRight">
					<span><img  src="<%=path%>/static/img/pruduct_p2.png"></span>
				</div>	
			</div>
		</div>
		<div class="productDetialsContext1">
			<img  src="<%=path%>/static/img/product_bg15.jpg">
			<div class="productDetialsContext1ShowWall">
				<div class="productDetialsContext1ShowWallLeft">
					<span> Master Data Maintenance Management   </span>
				</div>
				<div class="productDetialsContext1ShowWallRight">
					<span><img  src="<%=path%>/static/img/product_bg10.png"></span>
				</div>	
			</div>
		</div>
		<div class="productDetialsContext2">
			<img  src="<%=path%>/static/img/product_bg13.jpg">
				<div class="productDetialsContext1ShowWall">
					<div class="productDetialsContext1ShowWallLeft">
					<span> HAP Analysis Model   </span>
				</div>
				<div class="productDetialsContext1ShowWallRight">
					<span><img  src="<%=path%>/static/img/product_p3.png"></span>
				</div>	
			</div>
		</div>
		<div class="productDetialsContext3">
			<img  src="<%=path%>/static/img/product_bg16.jpg">
			<div class="productDetialsContext1ShowWall">
					<div class="productDetialsContext1ShowWallLeft">
					<span> Workflow and Personal Affairs   </span>
				</div>
				<div class="productDetialsContext1ShowWallRight">
					<span><img  src="<%=path%>/static/img/pruduct_p1.png"></span>
				</div>	
			</div>
		</div>
		<div class="productBtnFixed">
			<ul>
				<li><a id="move1" href="javasript:void(0);" ><span id="span1"></span></a></li>
				<li><a id="move2" href="javasript:void(0);" ><span id="span2"></span></a></li>
				<li><a id="move3" href="javasript:void(0);" ><span id="span3"></span></a></li>
				<li><a id="move4" href="javasript:void(0);" ><span id="span4"></span></a></li>
			</ul>
		
		</div>
	</div>
	
</body>
<script type="text/javascript">

$(document).ready(function(){
			
		// alert($(document).height()); //dom高度
		
		 //var height = $(window).height();//获取浏览器窗口当前可见区域的高度
		 
		 var height =663;//设置固定高度，避免窗口缩小化获取窗口高度的时候放大变化。
		 
		 var width = $(window).width();//获取浏览器窗口当前可见区域的大宽度
		 
		 
		 var body;
		 /* alert(navigator.userAgent.indexOf("MSIE")) */
		 if(navigator.userAgent.indexOf("Firefox")>0 || navigator.userAgent.indexOf("MSIE")>0){
		 	body = document.documentElement;
		 }else{
		 	body = document.body;
		 }
		 $(body).animate({scrollTop:0},"fast","linear",function(){});
		 $("#span1").css("background-color","black");
		 var isFinish = true;
		 
		 var scrollFunc = function(e){
			 
		 if(isFinish){
			 
		 var scrollTop = body.scrollTop;
		 	e = e || window.event;
		 	
		 if((e.wheelDelta<0|| e.detail>0) && scrollTop>=0 && scrollTop<height-20){ 
		 	scroll(height);
		 	$("#span2").css("background-color","black");
		 	
		 	$("#span1").css("background-color", "");
		 	
		 }else if((e.wheelDelta<0|| e.detail>0) && scrollTop>=height && scrollTop<=height*2-20){
		 	scroll(height*2);
			$("#span3").css("background-color","black");
			$("#span2").css("background-color","");
		 }else if((e.wheelDelta<0|| e.detail>0) && scrollTop>=height*2 && scrollTop<=height*3-20){
		 	scroll(height*3);
		 	
			$("#span4").css("background-color","black");
			$("#span3").css("background-color","");
		 }else if((e.wheelDelta>0 || e.detail<0) && scrollTop>=height && scrollTop<=height+20){
		 	scroll(0);
		 	$("#span2").css("background-color","");
		 	$("#span1").css("background-color","black");
		 }else if((e.wheelDelta>0 || e.detail<0) && scrollTop>=height*2 && scrollTop<=height*2+20){
		 	scroll(height);
		 	$("#span3").css("background-color","");
		 	$("#span2").css("background-color","black");
		 }else if((e.wheelDelta>0 || e.detail<0) && scrollTop>=height*3 && scrollTop<=height*3+20){
		 	scroll(height*2);
		 	$("#span3").css("background-color","black");
		 	$("#span4").css("background-color","");
		 }
		 }

		 };
		  var keydownFunc = function(e){
			  if(isFinish){
					 var scrollTop = body.scrollTop;
					 	e = e || window.event;
					 if(e.keyCode==40 && scrollTop>=0 && scrollTop<height-20){ 
					 	scroll(height);
					 	$("#span2").css("background-color","black");
					 	$("#span1").css("background-color", "");
					 }else if(e.keyCode==40 && scrollTop>=height && scrollTop<=height*2-20){
					 	scroll(height*2);
						$("#span3").css("background-color","black");
						$("#span2").css("background-color","");
					 }else if(e.keyCode==40 && scrollTop>=height*2 && scrollTop<=height*3-20){
					 	scroll(height*3);
						$("#span4").css("background-color","black");
						$("#span3").css("background-color","");
					 }else if(e.keyCode==38 && scrollTop>=height && scrollTop<=height+20){
					 	scroll(0);
					 	$("#span2").css("background-color","");
					 	$("#span1").css("background-color","black");
					 }else if(e.keyCode==38 && scrollTop>=height*2 && scrollTop<=height*2+20){
					 	scroll(height);
					 	$("#span3").css("background-color","");
					 	$("#span2").css("background-color","black");
					 }else if(e.keyCode==38 && scrollTop>=height*3 && scrollTop<=height*3+20){
					 	scroll(height*2);
					 	$("#span3").css("background-color","black");
					 	$("#span4").css("background-color","");
					 }
			  }
		 }
		  
		 $("#move1").click(function(){
			 scroll(0);
			 $("#span1").css("background-color", "black");
			 $(this).parent("li").siblings("li").each(function(){
				 $(this).children("a").children("span").css("background-color","");
			 })
		 })
		 $("#move2").click(function(){
			 scroll(height);
			 $("#span2").css("background-color","black");
			 $(this).parent("li").siblings("li").each(function(){
				 $(this).children("a").children("span").css("background-color","");
			 })
			 
		 })
		 $("#move3").click(function(){
			 scroll(height*2);
			 $("#span3").css("background-color","black");
			 $(this).parent("li").siblings("li").each(function(){
				 $(this).children("a").children("span").css("background-color","");
			 })
		 	
		 })
		 $("#move4").click(function(){
			 
			 scroll(height*3);
			 $("#span4").css("background-color","black");
			 $(this).parent("li").siblings("li").each(function(){
				 $(this).children("a").children("span").css("background-color","");
			 })
			 
		 })

		 var scroll = function(height){
		 	isFinish = false;
		 	$(body).animate({scrollTop:height},"100","linear",function(){
		 	isFinish = true;
		 	});
		 };
		 if(navigator.userAgent.indexOf("Firefox")>0){
			 
		 if(document.addEventListener){
		 	document.addEventListener('DOMMouseScroll',scrollFunc,false);
		 	document.addEventListener('DOMKeydown',keydownFunc,false);
		 }
		 }else{
		 	document.onmousewheel = scrollFunc;
		 	document.onkeydown = keydownFunc;
		 }
});


</script>
</html>
