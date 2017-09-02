<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%
String path = request.getContextPath();
%>
<script>
	var path = "<%=path%>";
	$(function () {
		if("${sessionScope.customer.name}"!=null&&"${sessionScope.customer.name}"!=""){
		    $("#login-btn").text("Sign Out");
        }
    })
</script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	  <style type="text/css">
		  .login-div{
			  display:none;
			  position: fixed;
			  width: 100%;
			  height: 100%;
			  background:rgba(0,0,0,0.2);
			  z-index: 9999;
			  font-family: Helvetica, Tahoma, Arial, "Hiragino Sans GB", "Hiragino Sans GB W3", "Microsoft YaHei", STXihei, STHeiti, Heiti, SimSun, sans-serif;
		  }
		  .login-div .form-div{
			  background:rgba(244,244,244,1);
			  border-radius: 6px;
			  position:absolute;
			  top:50%;
			  left:50%;
			  margin-top:-202px;
			  margin-left:-252px;
			  width: 500px;
			  height: 400px;
			  border: 2px solid rgba(172, 172, 172,1);
		  }
		  .login-div .form-div .conroller{
			  text-align: right;
		  }
		  .login-div .form-div .conroller .close-btn{
			  color:rgba(0, 0, 0,0.4);
			  display: inline-block;
			  margin-right:4px;
			  font-size: 30px;
			  line-height:30px;
			  font-weight: bold;
		  }
		  .login-div .form-div .conroller .close-btn:hover{
			  color: rgba(0, 0, 0,0.6);
		  }
		  .login-div .form-div div{
			  text-align: center;
		  }
		  .login-div .form-div .title{
			  font-size: 26px;
			  margin: 16px 0px;
			  color: rgba(130, 130, 130,1);
		  }
		  .login-div .form-div input{
			  width: 260px;
			  height: 30px;
			  line-height: 28px;
			  font-size: 14px;
			  border: 1px solid rgba(91, 114, 156,0.7);
			  color:rgba(70, 70, 70,1);
			  border-radius: 4px;
			  margin: 10px 0px;
			  padding: 0px 5px;
		  }
		  .login-div .form-div .checkword-div{
			  margin:10px auto;
			  width: 260px;
			  height: 30px;
		  }
		  .login-div .form-div .checkword-div .checkword-img{
			  width: 120px;
			  height: 30px;
			  border-radius: 4px;
			  float: left;
		  }
		  .login-div .form-div .checkword-div .checkword{
			  margin:0px;
			  width: 120px;
			  height: 30px;
			  float:right;
		  }
		  .login-div .form-div .login-btn{
			  margin-top:20px;
			  display: inline-block;
			  width: 260px;
			  height: 30px;
			  line-height: 30px;
			  text-align:center;
			  border: 1px solid rgba(0, 0, 0,0.2);
			  color: white;
			  background-color: rgba(0, 0, 0,0.4);
			  border-radius: 2px;
		  }
		  .login-div .form-div .login-btn:hover{
			  background-color: rgba(0, 0, 0,0.5);
		  }
		  .login-div .form-div .k-invalid-msg{
			  display: block;
			  width: 247px;
			  margin: auto;
			  text-align: left;
		  }
		  .login-div .form-div .other{
			  position: absolute;
			  top: 100%;
			  left: 100%;
			  margin-left: -136px;
			  margin-top: -28px;
			  text-align: right;
		  }
		  .login-div .form-div .other a{
			  color: rgba(70,70,70,0.8);
		  }

		  .fix-div{
			  width: 100%;
			  position: fixed;
			  background: rgba(255,255,255,0.9);
			  z-index: 1000;
		  }

		  .index-header-div{
			  width: 1024px;
			  height: 60px;
			  margin: auto;
		  }
		  .index-header-div a{
			  font-family: Helvetica, Tahoma, Arial, "Hiragino Sans GB", "Hiragino Sans GB W3", "Microsoft YaHei", STXihei, STHeiti, Heiti, SimSun, sans-serif;
		  }

		  .index-header-div .icon-link{
			  width: 100px;
			  height: 100%;
			  float: left;
		  }
		  .index-header-div .icon-link img{
			  width: 100%;
			  height: 100%;
		  }

		  .index-header-div .page-link{
			  margin-left:30px;
			  height: 100%;
			  float: left;
		  }
		  .index-header-div .page-link .link-menu-div{
			  position:relative;
			  display: inline-block;
		  }
		  .index-header-div .page-link .link-menu-div .top-link{
			  display: inline-block;
			  height: 100%;
			  line-height:60px;
			  color: rgba(0, 0, 0,0.7);
			  padding: 0px 5px;
		  }
		  .index-header-div .page-link .link-menu-div:hover .top-link{
			  color: rgba(42, 196, 254,1);
		  }
		  .index-header-div .page-link .link-menu-div .child-menu{
			  position:absolute;
			  top:0px;
			  left:0px;
			  margin-top: 60px;
			  display: none;
		  }

		  .index-header-div .page-link .link-menu-div .child-menu a{
			  font-size:12px;
			  line-height:30px;
			  color: rgba(0, 0, 0,0.7);
			  padding: 0px 5px;
			  background: rgba(255,255,255,0.9);
			  margin-top:1px;
			  border-radius:2px;
			  display: block;
		  }

		  .index-header-div .page-link .link-menu-div .child-menu a:hover{
			  color: rgba(42, 196, 254,1);
		  }

		  .index-header-div .operate-link{
			  float:right;
			  height: 100%;
		  }
		  .index-header-div .operate-link .operate-link-left{
			  float:left;
			  height: 100%;
			  padding-right: 20px;
		  }
		  .index-header-div .operate-link .operate-link-left a{
			  display: inline-block;
			  margin:10px 0px;
			  height: 30px;
			  width: 80px;
			  line-height:30px;
			  text-align:center;
			  background:rgba(42, 196, 254,1);
			  border-radius:15px;
			  color: white;

		  }
		  .index-header-div .operate-link .operate-link-left a:hover{
			  background:rgba(42, 196, 254,0.7);
		  }

		  .index-header-div .operate-link .operate-link-right{
			  float:right;
			  height: 100%;
		  }
		  .index-header-div .operate-link .operate-link-right a{
			  color: rgba(0, 0, 0,0.7);
		  }
		  .index-header-div .operate-link .operate-link-right a:hover{
			  color:rgba(42, 196, 254,1);
		  }
		  .index-header-div .operate-link .operate-link-right .top-link{
			  height:50%;
			  line-height:30px;
			  text-align: center;
		  }
		  .index-header-div .operate-link .operate-link-right .top-link a{
			  display:inline-block;
			  height:100%;
			  padding:0px 5px;
			  text-align: center;
		  }
		  .index-header-div .operate-link .operate-link-right .bottom-link{
			  height:50%;
			  line-height:30px;
			  text-align: center;
		  }
		  .login-icons{
			  position: relative;
			  top: 7px;
			  color: grey;
		  }
	  </style>
  	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
  	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/common/headerCss.css">

	<script type="text/javascript" src="<%=path%>/static/js/kendo/kendo.web.min.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/common/headerJs.js" defer></script>
	<script type="text/javascript" src="<%=path%>/static/js/security.js" async></script>
	<script src="<%=path%>/static/js/common/feather.min.js"></script>
	<script src="<%=path%>/static/js/common/intersection-observer.js" async></script>
  </head>
  <body>
  	<div class="login-div">
  		<div id="form-div" class="form-div">
			<div class="conroller"><a href="javascript:void(0);" class="close-btn">×</a></div>
			<div class="title" id="signStatus">SIGN IN</div>
  			<div>
				<div class="input-div">
					<i data-feather="user"></i>
					<input id="username" name="username" data-bind="value:username"
						type="text" placeholder="Please input username" pattern="[a-zA-Z]{1}([a-zA-Z0-9]|[_]){5,11}" validationMessage="Invalid username">
				</div>
				<div><span class="k-invalid-msg" data-for="username"></span></div>
				
				<div class="input-div">
					<i data-feather="lock"></i>
					<input id="password" name="password" data-bind="value:password"
						type="password" placeholder="Please input password" pattern="[a-zA-Z]{1}[a-zA-Z0-9]{5,11}" validationMessage="Invalid password">
				</div>
				<div><span class="k-invalid-msg" data-for="password"></span></div>
				
				<div class="checkword-div">
					<a href="javascript:void(0);"><img id="checkword-img" class="checkword-img" src=""></a>
					<input id="checkword" name="validateCode" class="checkword" data-bind="value:validateCode"
						type="text" placeholder="Please input security code" pattern="[a-zA-Z0-9]{4}" validationMessage="Invalid security code">
				</div>
				<div><span class="k-invalid-msg" data-for="checkword"></span></div>
				<input id="_csrf" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<div><a class="login-btn" href="javascript:void(0);">Sign In</a></div>
  			</div>
  			<div class="other">
  				<a href="javascript:void(0);">Reset Password</a>
  			</div>
  		</div>
  	</div>
  	


  	<div class="fix-div">
		<div class="index-header-div">
	  		<a class="icon-link" href="javascript:void(0);"><img src="<%=path%>/static/img/logo.png"></a>
	  		<div class="page-link">
	  			<div class="link-menu-div">
	  				<a class="top-link" href="javascript:void(0);" title="home">Home</a>
	  			</div>
	  			<div class="link-menu-div">
	  				<a class="top-link" href="javascript:void(0);" title="download">Download</a>
	  			</div>
	  			<div class="link-menu-div">
	  				<a class="top-link" href="javascript:void(0);" title="document">Documentation</a>
	  			</div>
	  			<div class="link-menu-div">
	  				<a class="top-link" href="javascript:void(0);" title="community">Community</a>
	  			</div>
	  		</div>
	  		<div class="operate-link">
	  			<div class="operate-link-left">
					<a id="login-btn" href="javascript:void(0);">Sign In</a>
					<form id="logoutForm" style="display: none" action="${pageContext.request.contextPath}/logout" method="POST">
						<input type="submit" value="Logout" />
						<input type="hidden"
							   name="${_csrf.parameterName}"
							   value="${_csrf.token}"/>
					</form>
	  			</div>
	  			<div class="operate-link-right">
	  				<div class="top-link">
	  					<a href="<%=path%>/jsp/register.jsp">Sign Up</a>
	  					<a id="feedback" onclick="feedback()" href="javascript:void(0);">Feedback</a>
	  				</div>
	  				<div class="bottom-link">
	  					<a id="number" href="javascript:void(0);">Number：<fmt:formatNumber value="123456789" pattern="###,###,###"/></a>
	  				</div>
	  			</div>
	  		</div>
	  	</div>
  	</div>
  </body>
</html>

