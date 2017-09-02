<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	  <style type="text/css">
		  .index-footer-div{
			  background: rgba(0,0,0,0.4);
			  font-family: Helvetica, Tahoma, Arial, "Hiragino Sans GB", "Hiragino Sans GB W3", "Microsoft YaHei", STXihei, STHeiti, Heiti, SimSun, sans-serif;
		  }
		  .index-footer-div .footer-content{
			  width: 1024px;
			  margin: auto;
		  }
		  .index-footer-div .footer-content .footer-top{
			  padding-top: 30px;
			  height: 160px;
		  }
		  .index-footer-div .footer-content .footer-top > div{
			  float: left;
			  margin-left: 50px;
			  min-width: 100px;
		  }
		  .index-footer-div .footer-content .footer-top > div .title{
			  color: rgba(255,255,255,1);
			  font-size: 18px;
		  }
		  .index-footer-div .footer-content .footer-top a{
			  color: rgba(255,255,255,1);
			  line-height: 20px;
		  }
		  .index-footer-div .footer-content .footer-top a:hover{
			  color: rgba(42, 196, 254,1);
		  }
		  .index-footer-div .footer-content .footer-top .big-div{
			  margin-left:0px;
			  width: 500px;
		  }
		  .index-footer-div .footer-content .footer-bottom{
			  color:rgba(255,255,255,1);
			  border-top:1px solid rgba(255,255,255,1);
			  padding:30px 0px 40px 0px;
			  text-align: center;
		  }
	  </style>
	<script type="text/javascript" src="<%=path%>/static/js/common/footerJs.js"></script>
  </head>
  <body>
	
	<div class="index-footer-div">
  		<div class="footer-content">
  			<div class="footer-top">
  				<div class="big-div">
  					<div class="title">Introduce</div>
  					<div class="content">
  						<a href="javascript:(0);">introduce1</a>
  						<a href="javascript:(0);">introduce2</a>
  						<a href="javascript:(0);">introduce3</a>
  						<a href="javascript:(0);">introduce4</a>
  					</div>
  				</div>
  				<div class="small-div">
  					<div class="title">Community</div>
  					<div class="content">
  						<a href="javascript:(0);">community1</a><br>
  						<a href="javascript:(0);">community2</a><br>
  						<a href="javascript:(0);">community3</a><br>
  						<a href="javascript:(0);">community4</a>
  					</div>
  				</div>
  				<div class="small-div">
  					<div class="title">Feedback</div>
  					<div class="content">
  						<a href="javascript:(0);">feedback1</a><br>
  						<a href="javascript:(0);">feedback2</a><br>
  						<a href="javascript:(0);">feedback3</a><br>
  						<a href="javascript:(0);">feedback4</a>
  					</div>
  				</div>
  				<div class="small-div">
  					<div class="title">Link</div>
  					<div class="content">
  						<a href="javascript:(0);">link1</a><br>
  						<a href="javascript:(0);">link2</a><br>
  						<a href="javascript:(0);">link3</a><br>
  						<a href="javascript:(0);">link4</a>
  					</div>
  				</div>
  			</div>
  			<div class="footer-bottom">
				Copyright Hand China Co.,Ltd. All Rights Reserved.
  			</div>
  		</div>
  	</div>

  </body>
</html>

