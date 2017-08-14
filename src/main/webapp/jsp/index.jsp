<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
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
  	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/common/baseCss.css">

	<script type="text/javascript" src="<%=path%>/static/js/kendo/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/common/baseJs.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/indexJs.js"></script>
  </head>

  <script>
	  path = "<%=path%>";
  </script>
  <body>
  	<div class="index-bg-div">
  		<jsp:include page="/jsp/common/header.jsp"></jsp:include>
  		  		
  		<div class="choice-div">
  			<a class="next-btn" href="javascript:void(0);">&gt;</a>
  			<a class="prev-btn" href="javascript:void(0);">&lt;</a>
  		</div>
  		
  		<div class="shuffling-div" attr="1">
  			<jsp:include page="/jsp/indexDiv.jsp"></jsp:include>
  		</div>
  		
  		<jsp:include page="/jsp/common/footer.jsp"></jsp:include>
  	</div>
	
	
  </body>
</html>

