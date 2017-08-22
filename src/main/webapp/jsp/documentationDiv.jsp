<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/documentationDivCss.css">

<script type="text/javascript" src="<%=path%>/static/js/documentationDivJs.js"></script>
</head>
<body>

         <div id="bottom-pane">
         	<div class="horizontal">
                 <div id="left-pane">
                 	<div class="pane-content">
                 	
                 	
                 
                 	<c:forEach items="${documents}" var="item">
                 		<c:if test="${item.documentType == 0}">
                 			<div class="item-div">
                 				<a href="javascript:void(0);" class="title-div">
									<span class="text-span">${item.documentName}</span>
									<span class="icon-span">+</span>
								</a>
								<ul class="children-div">
								
								
									<c:forEach items="${item.childList}" var="child">
										<c:if test="${child.documentType == 1}">
											<li>
												<a class="folder-doc" href="javascript:void(0);">
													<span class="icon-span"><img src="<%=path%>/static/img/file_close.ico"></span>
													<span class="text-span">${child.documentName}</span>
												</a>
												<ul>
													<c:forEach items="${child.childList}" var="file">
														<li>
															<a file="<%=path%>${file.documentUrl}" class="file-doc" href="javascript:void(0);">
																<span class="icon-span"><img src="<%=path%>/static/img/txt_icon.png"></span>
																<span class="text-span">${file.documentName}</span>
															</a>
														</li>
													</c:forEach>
												</ul>
											</li>
										</c:if>
										
										
										<c:if test="${child.documentType == 2}">
											<li>
												<a file="<%=path%>${child.documentUrl}" class="file-doc" href="javascript:void(0);">
													<span class="icon-span"><img src="<%=path%>/static/img/txt_icon.png"></span>
													<span class="text-span">${child.documentName}</span>
												</a>
											</li>
										</c:if>
										
										
									</c:forEach>
								</ul>
                 			</div>
                 		</c:if>
                 		
                 		
                 		<c:if test="${item.documentType == 1}">
							<div class="item-div">
								<a class="folder-doc" href="javascript:void(0);">
									<span class="icon-span"><img src="<%=path%>/static/img/file_close.ico"></span>
									<span class="text-span">${item.documentName}</span>
								</a>
								<ul>
									<c:forEach items="${child.childList}" var="file">
										<li>
											<a file="<%=path%>${file.documentUrl}" class="file-doc" href="javascript:void(0);">
												<span class="icon-span"><img src="<%=path%>/static/img/txt_icon.png"></span>
												<span class="text-span">${file.documentName}</span>
											</a>
										</li>
									</c:forEach>
								</ul>
							</div>
						</c:if>
						
						
                 		<c:if test="${item.documentType == 2}">
							<div class="item-div">
								<a file="<%=path%>${item.documentUrl}" class="file-doc" href="javascript:void(0);">
									<span class="icon-span"><img src="<%=path%>/static/img/txt_icon.png"></span>
									<span class="text-span">${item.documentName}</span>
								</a>
							</div>
						</c:if>
                 		
                 		
                 	</c:forEach>
                 	</div>
                 </div>
                 <div id="right-pane">
                     <div class="pane-content">
                     	
                     </div>
                 </div>
             </div>
         </div>
</body>
</html>

