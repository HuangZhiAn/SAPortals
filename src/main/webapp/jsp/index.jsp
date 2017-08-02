<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/indexCss.css">
  	
	<script type="text/javascript" src="<%=path%>/static/js/common/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/common/jquery.cookie.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/common/base.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/indexJS.js"></script>
  </head>
  <body>
  	<h2>Hello HMDM portals</h2>
	<form action="${pageContext.request.contextPath}/logout" method="POST">
		<input type="submit" value="Logout" />
		<input type="hidden"
			   name="${_csrf.parameterName}"
			   value="${_csrf.token}"/>
	</form>
  </body>
</html>

