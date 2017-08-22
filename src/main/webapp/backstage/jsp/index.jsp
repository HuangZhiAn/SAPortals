<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>Index</title>
<link href="<%=path%>/static/css/kendo/kendo.common.min.css" rel="stylesheet">
<link href="<%=path%>/static/css/kendo/kendo.rtl.min.css" rel="stylesheet">
<link href="<%=path%>/static/css/kendo/kendo.default.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/common/baseCss.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/backstage/static/css/indexCss.css">

<script src="<%=path%>/static/js/common/jquery.min.js"></script>
<script src="<%=path%>/static/js/kendo/kendo.web.min.js"></script>
<script src="<%=path%>/static/js/common/baseJs.js"></script>
<script src="<%=path%>/backstage/static/js/indexJs.js"></script>


</head>
<body>
	<div class="header-div">
		<div class="icon-div" >
			<img alt="" src="<%=path%>/static/img/logo.png" class="logo-img">
		    <span class="application-name">HMDM PORTAL</span>
		</div>
		<div class="function-div">
			<a href="javascript:void(0);">role</a>
			<a href="javascript:void(0);">name</a>
			<a href="javascript:void(0);">report</a>
			<a href="javascript:void(0);">logout</a>
		</div>
	</div>
	<div class="tool-div">
		<div class="current-div">
			<span>Current：</span>
			<a value="index" href="javascript:void(0);">index</a>
		</div>
		<div class="menu-div">
			<ul id="menu">
				<li>
					main menu
					<ul>
						<li>menu1</li>
						<li>menu2</li>
						<li>menu3</li>
						<li>menu4</li>
					</ul>
				</li>
				<li>
					main menu
					<ul>
						<li>menu1</li>
						<li>menu2</li>
						<li>menu3</li>
						<li>menu4</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="vertical">
         <div id="top-pane">
         	
         </div>
         <div id="bottom-pane">
         	<div id="content-div">
				
			</div>
         </div>
    </div>
	<input id="_csrf" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</body>
</html>