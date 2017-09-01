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
  	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
  	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/common/headerCss.css">
  	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/kendo/kendo.common.min.css" rel="stylesheet" media="print">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/kendo/kendo.rtl.min.css" rel="stylesheet" media="print">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/kendo/kendo.default.min.css" rel="stylesheet" media="print">

	<script type="text/javascript" src="<%=path%>/static/js/kendo/kendo.web.min.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/common/headerJs.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/security.js"></script>
	<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
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
					<script>
                        feather.replace({class: 'login-icons'});
					</script>
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

