<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script>
		var path = "<%=path%>";
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
<META HTTP-EQUIV="Expires" CONTENT="0"> 
<title>register</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/common/baseCss.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/registerCss.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/kendo/kendo.common.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/kendo/kendo.rtl.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/kendo/kendo.default.min.css" rel="stylesheet">
<script type="text/javascript" src="<%=path%>/static/js/kendo/jquery.min.js" async></script>
<script type="text/javascript" src="<%=path%>/static/js/kendo/kendo.web.min.js" async></script>
<script type="text/javascript" src="<%=path%>/static/js/common/baseJs.js" async></script>
<script type="text/javascript" src="<%=path%>/static/js/registerJs.js" async></script>
</head>
<body>
	<div class="content-div">
		<div class="header-div"></div>
		<div class="register-div">
			<div class="register-top">
				<img class="logo" src="<%=path%>/static/img/logo.png">
				<a class="link-btn" href="javascript:void(0);">feedback</a>
				<a class="link-btn" href="<%=path%>/jsp/index.jsp">index</a>
			</div>
			
			<table id="form-table" class="form-table">
				<tbody>
					<tr>
						<td>Name</td>
						<td><input data-bind="value:name" type="text" pattern="[a-zA-Z]\w{4,17}" validationMessage="Invalid name" placeholder="Please input name" class="text-input" id="name" name="name"></td>
						<td class="validation-message"><span class="k-invalid-msg" data-for="name"></span></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input data-bind="value:email" validationMessage="Invalid email" placeholder="Please input email" class="text-input" id="email" name="email" type="email"></td>
						<td class="validation-message"><span class="k-invalid-msg" data-for="email"></span></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input data-bind="value:password" pattern="[a-zA-Z]{1}([a-zA-Z0-9]|[_]){5,11}" validationMessage="Invalid password" placeholder="Please input password" type="password" class="text-input" id="password" name="password"></td>
						<td class="validation-message"><span class="k-invalid-msg" data-for="password"></span></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input data-bind="value:re_password" validationMessage="The two passwords not match." placeholder="Please input password again" type="password" class="text-input" id="re_password" name="re_password"></td>
						<td class="validation-message"><span class="k-invalid-msg" data-for="re_password"></span></td>
					</tr>
					<tr>
						<td></td>
						<td><div class="code-div">
							<input data-bind="value:code" placeholder="Code" id="code" name="code" class="code-input">
							<a class="send-btn" href="javascript:void(0);">Send</a>
						</div></td>
						<td class="validation-message"><span></span></td>
					</tr>
					<input id="_csrf" type="hidden"
						   name="${_csrf.parameterName}"
						   value="${_csrf.token}"/>
					<tr>
						<td colspan="3">
							<input id="check" name="check"  type="checkbox">
							I have read and agreed to the Service Agreement and the Privacy Policy
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<a class="sign-up-now" href="javascript:void(0);">Sign up now</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="footer-div">
			<span>
				Copyright Hand China Co.,Ltd. All Rights Reserved.
			</span>
		</div>
	</div>
</body>
</html>