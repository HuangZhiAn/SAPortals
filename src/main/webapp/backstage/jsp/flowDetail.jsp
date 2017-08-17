<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Security-Policy"  content="default-src *; style-src 'self' 'unsafe-inline'; script-src 'self' 'unsafe-inline' 'unsafe-eval'">
	<link rel="stylesheet" type="text/css" href="<%=path%>/backstage/static/css/flowDetailCss.css">
	<script src="<%=path%>/backstage/static/js/flowDetailJs.js"></script>
</head>
<body>
	<div class="flow-detail">
		<div class="proposer-div">
			<div class="title-div">Proposer Detail</div>
			<table>
				<tbody>
					<tr>
						<td>Proposer</td>
						<td> : <input class="disable-input" readonly="readonly" value="zoukunhong"></td>
						<td>Application Date</td>
						<td> : <input class="disable-input" type="date"  readonly="readonly" value="1999-08-01"></td>
					</tr>
					<tr>
						<td>Approval Process</td>
						<td> : <input class="disable-input" readonly="readonly" value="process name"></td>
					</tr>
					<tr>
						<td>Description</td><td> : </td>
					</tr>
					<tr>
						<td colspan="4"><textarea class="disable-input" readonly="readonly">Description</textarea></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<div class="title-div">Approval Records</div>
			<table class="records-table" cellspacing="0">
				<thead>
					<tr>
						<th>Time</th>
						<th>Approval Node</th>
						<th>Number Of Processor</th>
						<th>Processor</th>
						<th>Opinion</th>
						<th>Comment</th>
						<th>Attachment</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2017-07-22 23:23</td>
						<td>approval</td>
						<td>12758</td>
						<td>zoukunhog</td>
						<td>ok</td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<div class="title-div">Detail</div>
			<table class="detail-table">
				<tbody>
					<tr>
						<td>name:</td>
						<td>zoukunhong</td>
					</tr>
					<tr>
						<td>number:</td>
						<td>12758</td>
					</tr>
					<tr>
						<td>Attachment:</td>
						<td colspan="2">
							<div class="notice-div">Format：JPG、JPEG、GIF、PNG</div>
							<div class="attachment-item">
								<img src="<%=path%>/backstage/static/img/home_HMDM_introduce.jpg">
								<div>
									<a target="_blank" href="<%=path%>/backstage/static/img/home_HMDM_introduce.jpg">12758_xue.jpg</a>
									<span>881.5 KB</span><span>2017-07-22 23:21:39</span>
								</div>
							</div>
							<div class="attachment-item">
								<img src="<%=path%>/backstage/static/img/home_HMDM_introduce.jpg">
								<div>
									<a target="_blank" href="<%=path%>/backstage/static/img/home_HMDM_introduce.jpg">12758_wei.jpg</a>
									<span>1.2 MB</span><span>2017-07-22 23:20:58</span>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<div class="title-div">Audit</div>
			<textarea class="audit-text" placeholder="Please input approval opinion in here."></textarea>
			<div class="audit-btns">
				<a href="javascript:void(0);" class="submit-btn">submit</a>
			</div>
		</div>
		
	</div>
</body>
</html>