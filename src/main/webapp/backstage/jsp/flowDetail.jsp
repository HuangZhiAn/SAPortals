<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
						<td> : <input class="disable-input" readonly="readonly" value="${suggestInfo.customer.name}"></td>
						<td>Application Date</td>
						<td> : <input class="disable-input" type="date"  readonly="readonly" value="${createTime}"></td>
					</tr>
					<tr>
						<td>Approval Process</td>
						<td> : <input class="disable-input" readonly="readonly" value="${processDefineName}"></td>
					</tr>
					<tr>
						<td>Description</td><td> : </td>
					</tr>
					<tr>
						<td colspan="4"><textarea class="disable-input" readonly="readonly">${suggestInfo.suggestInfo}</textarea></td>
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
						<th>Processor</th>
						<th>Opinion</th>
						<th>Comment</th>
						<th>Attachment</th>
					</tr>
				</thead>
				<tbody id="taskHistory">

				</tbody>
			</table>
		</div>
		<div>
			<div class="title-div">Detail</div>
			<table class="detail-table">
				<tbody>
					<tr>
						<td>name:</td>
						<td>${suggestInfo.customer.name}</td>
					</tr>
					<tr>
						<td>number:</td>
						<td id="customerId">${suggestInfo.customerId}</td>
					</tr>
					<tr>
						<td>Attachment:</td>
						<td colspan="2">
							<div class="notice-div">Format：JPG、JPEG、GIF、PNG</div>
							<c:forEach items="${suggestInfo.images}" var="item">
								<c:if test="${item.image1 != null}">
									<div class="attachment-item">
										<a target="_blank" href="<%=path%>${item.image1}"><img src="<%=path%>${item.image1}"></a>
										<div>
											<a target="_blank" href="<%=path%>${item.image1}">${fn:substring(item.image1,fn:indexOf(item.image1,"suggestInfo/" )+12,fn:length(item.image1))}</a>
											<%--<span>881.5 KB</span><span>2017-07-22 23:21:39</span>--%>
										</div>
									</div>
								</c:if>
								<c:if test="${item.image2 != null}">
									<div class="attachment-item">
										<a target="_blank" href="<%=path%>${item.image2}"><img src="<%=path%>${item.image2}"></a>
										<div>
											<a target="_blank" href="<%=path%>${item.image2}">${fn:substring(item.image2,fn:indexOf(item.image2,"suggestInfo/" )+12,fn:length(item.image2))}</a>
										</div>
									</div>
								</c:if>
								<c:if test="${item.image3 != null}">
									<div class="attachment-item">
										<a target="_blank" href="<%=path%>${item.image3}"><img src="<%=path%>${item.image3}"></a>
										<div>
											<a target="_blank" href="<%=path%>${item.image3}">${fn:substring(item.image3,fn:indexOf(item.image3,"suggestInfo/" )+12,fn:length(item.image3))}</a>
										</div>
									</div>
								</c:if>
								<c:if test="${item.image4 != null}">
									<div class="attachment-item">
										<a target="_blank" href="<%=path%>${item.image4}"><img src="<%=path%>${item.image4}"></a>
										<div>
											<a target="_blank" href="<%=path%>${item.image4}">${fn:substring(item.image4,fn:indexOf(item.image4,"suggestInfo/" )+12,fn:length(item.image4))}</a>
										</div>
									</div>
								</c:if>
								<c:if test="${item.image5 != null}">
									<div class="attachment-item">
										<a target="_blank" href="<%=path%>${item.image5}"><img src="<%=path%>${item.image5}"></a>
										<div>
											<a target="_blank" href="<%=path%>${item.image5}">${fn:substring(item.image5,fn:indexOf(item.image5,"suggestInfo/" )+12,fn:length(item.image5))}</a>
										</div>
									</div>
								</c:if>
								<c:if test="${item.image6 != null}">
									<div class="attachment-item">
										<a target="_blank" href="<%=path%>${item.image6}"><img src="<%=path%>${item.image6}"></a>
										<div>
											<a target="_blank" href="<%=path%>${item.image6}">${fn:substring(item.image6,fn:indexOf(item.image6,"suggestInfo/" )+12,fn:length(item.image6))}</a>
										</div>
									</div>
								</c:if>
								<c:if test="${item.image7 != null}">
									<div class="attachment-item">
										<a target="_blank" href="<%=path%>${item.image7}"><img src="<%=path%>${item.image7}"></a>
										<div>
											<a target="_blank" href="<%=path%>${item.image7}">${fn:substring(item.image7,fn:indexOf(item.image7,"suggestInfo/" )+12,fn:length(item.image7))}</a>
										</div>
									</div>
								</c:if>
								<c:if test="${item.image8 != null}">
									<div class="attachment-item">
										<a target="_blank" href="<%=path%>${item.image8}"><img src="<%=path%>${item.image8}"></a>
										<div>
											<a target="_blank" href="<%=path%>${item.image8}">${fn:substring(item.image8,fn:indexOf(item.image8,"suggestInfo/" )+12,fn:length(item.image8))}</a>
										</div>
									</div>
								</c:if>
								<c:if test="${item.image9 != null}">
									<div class="attachment-item">
										<a target="_blank" href="<%=path%>${item.image1}"><img src="<%=path%>${item.image9}"></a>
										<div>
											<a target="_blank" href="<%=path%>${item.image9}">${fn:substring(item.image9,fn:indexOf(item.image9,"suggestInfo/" )+12,fn:length(item.image9))}</a>
										</div>
									</div>
								</c:if>
								<c:if test="${item.image10 != null}">
									<div class="attachment-item">
										<a target="_blank" href="<%=path%>${item.image10}"><img src="<%=path%>${item.image10}"></a>
										<div>
											<a target="_blank" href="<%=path%>${item.image10}">${fn:substring(item.image10,fn:indexOf(item.image10,"suggestInfo/" )+12,fn:length(item.image10))}</a>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<div class="title-div">Audit</div>
			<textarea id="responseResult" name="${taskId}" class="audit-text" placeholder="Please input approval opinion in here."></textarea>
			<div class="audit-btns">
				<a href="javascript:void(0);" onclick="completeActiviti()" class="submit-btn">submit</a>
			</div>
		</div>
		
	</div>
</body>
</html>