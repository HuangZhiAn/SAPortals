<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>首页</title>
	<style type="text/css">
		.index-bg-div{
			width: 100%;
			min-height: 600px;
			min-width: 1024px;
		}
		.index-bg-div .choice-div{
			position: absolute;
			top:50%;
			left: 0%;
			width: 100%;
			margin-top: -70px;
			z-index: 999;
			height: 0px;
			min-width: 1024px;
		}
		.index-bg-div .choice-div a{
			display:inline-block;
			font-size:30px;
			width: 40px;
			height: 70px;
			line-height:70px;
			text-align:center;
			background:rgba(0,0,0,0.3);
			color:rgba(255,255,255,1);
			font-family: iconfont;
			font-style: normal;
			-webkit-text-stroke-width: .2px;
			-moz-osx-font-smoothing: grayscale;
		}
		.index-bg-div .choice-div a:hover{
			background:rgba(0,0,0,0.5);
		}
		.index-bg-div .choice-div .prev-btn{
			float: left;
			border-radius: 0px 3px 3px 0px;
		}
		.index-bg-div .choice-div .next-btn{
			float: right;
			border-radius: 3px 0px 0px 3px;
		}
	</style>
  	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/common/baseCss.css">

	<script type="text/javascript" src="<%=path%>/static/js/kendo/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/common/baseJs.js" async></script>
	<script type="text/javascript" src="<%=path%>/static/js/indexJs.js" async></script>
  </head>
  <body>
  	<div class="index-bg-div">
  		<jsp:include page="/jsp/common/header.jsp"></jsp:include>
  		  		
  		<div class="choice-div">
  			<a class="next-btn" href="javascript:void(0);">&gt;</a>
  			<a class="prev-btn" href="javascript:void(0);">&lt;</a>
  		</div>
  		
  		<div class="shuffling-div" title="home" page="<%=path%>/jsp/indexDiv.jsp">
  			<jsp:include page="/jsp/indexDiv.jsp"></jsp:include>
  		</div>
  		<div class="shuffling-div" title="document" page="<%=path%>/document/all.action">
  			
  		</div>
		<div class="shuffling-div" title="download" page="<%=path%>/jsp/fdw/download.jsp">

		</div>
		<div class="shuffling-div" title="community" page="<%=path%>/jsp/fdw/community.jsp">

		</div>
  		<jsp:include page="/jsp/common/footer.jsp"></jsp:include>
  	</div>
	
	
  </body>
</html>

