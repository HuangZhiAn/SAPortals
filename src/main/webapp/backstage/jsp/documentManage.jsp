<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="<%=path%>/backstage/static/css/documentManageCss.css">

<script src="<%=path%>/static/js/common/ajaxfileupload.js"></script>
<script src="<%=path%>/backstage/static/js/documentManageJs.js"></script>
<script src="<%=path%>/static/js/common/jquery.form.min.js"></script>

</head>
<body>
	<div id="documents-pane">
		<div class="horizontal">
			<div id="left-pane" style="height: 100%;">
				<c:forEach items="${documents}" var="item">
					<c:if test="${item.documentType == 0}">
						<div class="item-div">
							<a documentId="${item.documentId}" href="javascript:void(0);" class="title-div"> <span
								class="text-span">${item.documentName}</span> <span
								class="icon-span">+</span>
							</a>
							<ul class="children-div">

								<c:forEach items="${item.childList}" var="child">
									<c:if test="${child.documentType == 1}">
										<li><a documentId="${child.documentId}" class="folder-doc" href="javascript:void(0);">
												<span class="icon-span"><img
													src="<%=path%>/static/img/file_close.ico"></span> <span
												class="text-span">${child.documentName}</span>
										</a>
											<ul>
												<c:forEach items="${child.childList}" var="file">
													<li><a documentId="${file.documentId}" file="<%=path%>/${file.documentUrl}"
														class="file-doc" href="javascript:void(0);"> <span
															class="icon-span"><img
																src="<%=path%>/static/img/txt_icon.png"></span> <span
															class="text-span">${file.documentName}</span>
													</a></li>
												</c:forEach>
											</ul></li>
									</c:if>


									<c:if test="${child.documentType == 2}">
										<li><a documentId="${child.documentId}" file="<%=path%>/${child.documentUrl}"
											class="file-doc" href="javascript:void(0);"> <span
												class="icon-span"><img
													src="<%=path%>/static/img/txt_icon.png"></span> <span
												class="text-span">${child.documentName}</span>
										</a></li>
									</c:if>


								</c:forEach>
							</ul>
						</div>
					</c:if>


					<c:if test="${item.documentType == 1}">
						<div class="item-div"><a documentId="${item.documentId}" class="folder-doc" href="javascript:void(0);"> <span
								class="icon-span"><img
									src="<%=path%>/static/img/file_close.ico"></span> <span
								class="text-span">${item.documentName}</span>
						</a>
							<ul>
								<c:forEach items="${item.childList}" var="file">
									<li><a documentId="${file.documentId}" file="<%=path%>/${file.documentUrl}"
										class="file-doc" href="javascript:void(0);"> <span
											class="icon-span"><img
												src="<%=path%>/static/img/txt_icon.png"></span> <span
											class="text-span">${file.documentName}</span>
									</a></li>
								</c:forEach>
							</ul></div>
					</c:if>


					<c:if test="${item.documentType == 2}">
						<div class="item-div"><a documentId="${item.documentId}" file="<%=path%>/${item.documentUrl}" class="file-doc"
							href="javascript:void(0);"> <span class="icon-span"><img
									src="<%=path%>/static/img/txt_icon.png"></span> <span
								class="text-span">${item.documentName}</span>
						</a></div>
					</c:if>
				</c:forEach>
			</div>
			<div id="right-pane" style="height: 100%;">
				<select class="hidden-select">
					<option value="0">none</option>
					<c:forEach items="${documents}" var="item">
						<c:if test="${item.documentType == 0 || item.documentType == 1}">
							<option type="${item.documentType}" value="${item.documentId}">${item.documentName}</option>
						</c:if>
						<c:forEach items="${item.childList}" var="child">
							<c:if test="${child.documentType == 0 || child.documentType == 1}">
								<option type="${child.documentType}" value="${child.documentId}">${child.documentName}</option>
							</c:if>
						</c:forEach>
					</c:forEach>
				</select>
				<div class="editor-div">
					<div class="editor-top">
						<span>Document</span>
						<div class="btn-div">
							<a href="javascript:void(0);" class="create-btn">Create</a>
							<a href="javascript:void(0);" class="save-btn">Save</a>
							<a href="javascript:void(0);" class="delete-btn">Delete</a>
						</div>
					</div>
					<div class="editor-bottom">
						<form id="documentForm" action="<%=path%>/ajax/document/modifyById?${_csrf.parameterName}=${_csrf.token}" method="post">
						<table id="form-table">
							<tbody>
								<tr>
									<td><span>Name</span></td>
									<td>
										<input type="hidden" id="document_id" name="document_id" data-bind="value:document_id">
										<input id="document_name" name="document_name" data-bind="value:document_name"
										type="text" placeholder="Please input name"
										pattern="([a-zA-Z0-9]|[_]){5,11}" 
										validationMessage="Invalid name">
									</td>
									<td><span>Parent</span></td>
									<td>
										<select id="document_parent" name="document_parent" data-bind="value:document_parent">
											<option selected="selected" value="0">none</option>
										</select>
									</td>
									<td><span>Enable</span></td>
									<td>
										<select id="enable" name="enable" data-bind="value:enable">
											<option value="Y">Y</option>
											<option value="N">N</option>
										</select>
									</td>
								</tr>
								<tr>
									<td><span>Type</span></td>
									<td>
										<select id="document_type" name="document_type" data-bind="value:document_type" disabled="disabled">
											<option value="0">topic</option>
											<option value="1">folder</option>
											<option value="2">document</option>
										</select>
									</td>
									<td><span>Version</span></td>
									<td><input id="version" name="version" data-bind="value:version" readonly="readonly"></td>
									
								</tr>
								<tr>
									<td colspan="6">
										<a class="change-btn" href="javascript:void(0);">Document</a>
										<a id="document-url" name="document-url" data-bind="html:document_url">ssss</a>
										<input class="hidden" id="document_file" name="document_file" type="file" >
									</td>
								</tr>
							</tbody>
						</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="create-document-div">
		<div class="create-from">
			<div class="create-from-top">
				<span>Create Document</span><a href="javascript:void(0);" class="close-btn">×</a>
			</div>
			<div class="create-from-bottom">
				<table id="create-table">
					<tbody>
						<tr>
							<td><span>Name</span></td>
							<td><input id="create_name" name="create_name"
								data-bind="value:document_name" type="text"
								placeholder="Please input name"></td>
							<td><span>Parent</span></td>
							<td><select id="create_parent" name="create_parent"
								data-bind="value:document_parent">
									<option selected="selected" value="0">none</option>
							</select></td>
							<td><span>Type</span></td>
							<td><select id="create_type" name="create_type"
								data-bind="value:document_type">
									<option value="0">topic</option>
									<option value="1">folder</option>
									<option value="2">document</option>
							</select></td>
						</tr>
						<tr>
							<td colspan="6">
								<a href="javascript:void(0);" class="save-btn">Save</a>
								<a href="javascript:void(0);" class="reset-btn">Reset</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>