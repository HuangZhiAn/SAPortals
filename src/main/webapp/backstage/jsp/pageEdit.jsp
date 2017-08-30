<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String pg = request.getParameter("page");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/common/baseCss.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/backstage/static/css/pageEditCss.css">
<script src="<%=path%>/static/js/common/jquery.min.js"></script>
<script src="<%=path%>/static/js/common/jquery.form.min.js"></script>
	<script src="<%=path%>/backstage/static/js/pageEditJs.js"></script>
<script type="text/javascript">
var pg = "<%=pg%>";
var path = "<%=path%>";
</script>
</head>
<body>
	<a class="save-page-btn" href="javascript:void(0);">Save</a>
	<div class="page-div">
		
	</div>

	<form id="imgForm1" action="${pageContext.request.contextPath}/ImageUpload?${_csrf.parameterName}=${_csrf.token}" method="post">
		<input id="reset_img" name="reset_img" type="file">
	</form>
	<input id="_csrf" type="hidden"
		   name="${_csrf.parameterName}"
		   value="${_csrf.token}"/>
	
	<div class="text-edit">
		<div class="form-div">
			<div class="header">
				<span>Edit</span>
				<a href="javascript:void(0);" class="close-btn">×</a>
			</div>
			<textarea class="textarea-edit"></textarea>
			<div>
				<a class="confirm-btn"  href="javascript:void(0);">OK</a>
			</div>
		</div>
	</div>
	
	<div class="link-edit">
		<div class="form-div">
			<div class="header">
				<span>Edit</span>
				<a href="javascript:void(0);" class="close-btn">×</a>
			</div>
			<table>
				<tbody>
					<tr>
						<td>text : </td>
						<td><input class="text-input"></td>
					</tr>
					<tr>
						<td>href : </td>
						<td><input class="href-input"></td>
					</tr>
				</tbody>
			</table>
			<div>
				<a class="confirm-btn"  href="javascript:void(0);">OK</a>
			</div>
		</div>
	</div>
</body>

</html>