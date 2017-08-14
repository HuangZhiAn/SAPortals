<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%--
	<meta http-equiv="Content-Security-Policy"  content="default-src *; style-src 'self' 'unsafe-inline'; script-src 'self' 'unsafe-inline' 'unsafe-eval'">
--%>

	<title>Login</title>
<link href="<%=path%>/static/css/kendo/kendo.common.min.css"
	rel="stylesheet">
<link href="<%=path%>/static/css/kendo/kendo.rtl.min.css"
	rel="stylesheet">
<link href="<%=path%>/static/css/kendo/kendo.default.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/common/baseCss.css">
<link href="<%=path%>/static/css/backstageLoginCss.css" rel="stylesheet">
<script src="<%=path%>/static/js/kendo/jquery.min.js"></script>
<script src="<%=path%>/static/js/common/jquery.form.min.js"></script>
<script src="<%=path%>/static/js/kendo/kendo.web.min.js"></script>
<script src="<%=path%>/static/js/common/md5.js"></script>
<script src="<%=path%>/static/js/backstageLoginJs.js"></script>

<script>
	var path = "<%=path%>";
</script>
</head>
<body>
	<div class="login-header">
		<div class="container">
			<img alt="" src="<%=path%>/static/img/logo.png" class="login-logo">
		    <span class="application-name">HMDM PORTAL</span>
	    </div>
	    <div class="split-line"></div>
	</div>
	
	<div class="login-body">
		<div class="container">
			<div id="login-form" class="login-form">
				<form id="loginForm" name='loginForm' action="${pageContext.request.contextPath }/login"
					  method='POST'>
				<div class="form-top"><img class="home-icon" src="<%=path%>/static/img/home-icon.png">HMDM PORTAL</div>
				<div class="form-container">
					<div class="img-div">
						<img src="<%=path%>/static/img/home_HMDM_introduce.jpg">
					</div>
					<div class="submit-div">
						<span class="note-span">Please input username and password.</span>
						<div class="input-div">
							<input class="username-input" id="username" name="username" data-bind="value:username"
							type="text" placeholder="Please input username" required 
							pattern="[a-zA-Z]{1}([a-zA-Z0-9]|[_]){5,11}" validationMessage="Invalid username">
							<i class="username-icon"></i>
						</div>
						<div class="input-div">
							<input class="password-input" id="password" name="password" data-bind="value:password"
								type="password" placeholder="Please input password" required 
								pattern="[a-zA-Z]{1}[a-zA-Z0-9]{5,11}" validationMessage="Invalid password">
							<i class="password-icon"></i>
						</div>
						<div class="input-div">
							<a style="display: inline-block;margin-top: 6px;float: left;margin-right: 4px" href="javascript:void(0);"><img id="checkword-img" class="checkword-img" src="<%=path%>/verifyCode"></a>
							<input style="width: 56%" id="checkword" name="validateCode" class="checkword" data-bind="value:checkword"
								   type="text" placeholder="Please input very code">
							<input type="hidden" id="_csrf" name="${_csrf.parameterName}" data-bind="value:_csrf" value="${_csrf.token}"/>
						</div>
						<input type="button" name="submit" class="submit-btn" onclick="loginClick()" value="Sign In">
						<span id="result-span" class="result-span">result</span>

					</div>
				</div>
				</form>
			</div>
		</div>
	</div>

	<div class="login-bottom">
	    <div class="container">
	        <span>
	         	All Rights Reserved. Portions of this site originally &copy; Copyright Hand China Co.,Ltd.
	        </span>
	    </div>
	</div>
</body>
</html>