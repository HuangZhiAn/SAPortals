<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Security-Policy"  content="default-src *; style-src 'self' 'unsafe-inline'; script-src 'self' 'unsafe-inline' 'unsafe-eval'">
	<link rel="stylesheet" type="text/css" href="<%=path%>/backstage/static/css/workFlowCss.css">
	<script src="<%=path%>/backstage/static/js/workFlowJs.js"></script>
</head>
<body>
	<div class="my-work-flow">
		<table id="form-table">
			<thead>
				<tr>
					<td colspan="6">flow work</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>flow type:</td>
					<td><div id="flow-type"></div></td>
					<td>flow name:</td>
					<td><input id="flow-name"></td>
					<td>proposer:</td>
					<td><input id="proposer"></td>
				</tr>
				<tr>
					<td>flow state:</td>
					<td><div id="flow-state"></div></td>
					<td>start time:</td>
					<td><input id="start-time"></td>
					<td>end time:</td>
					<td><input id="end-time"></td>
				</tr>
				<tr>
					<td colspan="6">
						<a class="operation-btn" href="javascript:void(0);">Search</a>
						<a class="operation-btn" href="javascript:void(0);">Reset</a>
					</td>
				</tr>
			</tbody>
		</table>
		<div id="grid"></div>
		
		<div id="dialogEdit">
			<div class="dialog-body">
				<div class="dialog-header" style="display: none">
					<span>Flow Detail</span>
					<a href="javascript:void(0);">×</a>
				</div>
				<div class="dialog-content"></div>
			</div>
		</div>
	</div>
	
</body>
</html>