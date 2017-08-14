<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript">
	var path = "<%=path%>";
</script>
<title>User Feedback</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
  	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/kendo/kendo.common.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/kendo/kendo.rtl.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/kendo/kendo.default.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/kendo/kendo.dataviz.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/community/community.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/common/baseCss.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/community/bugs.css">
<%--  --%>

<script type="text/javascript"
	src="<%=path%>/static/js/common/baseJs.js"></script>


	<%-- <script type="text/javascript"
	src="<%=path%>/static/js/common/jquery-1.11.2.js"></script> --%>
<script type="text/javascript"
	src="<%=path%>/static/js/common/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/static/js/kendo/kendo.web.min.js"></script>
<script type="text/javascript" src="<%=path%>/static/js/community/FileUtil.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.1/jquery.form.min.js"></script>


</head>
<body>
	<jsp:include page="/jsp/common/header.jsp"></jsp:include>
	<div class="bugsContain">
		<div class="communityTop">
			<div class="communityTopText">
				<div class="communityTopTextList">
					<div class="communityTopTestListleft">
						<span> HMDM Community </span>
					</div>
					<div class="communityTopTestListRight">
						<ul>
							<li><a href="#">bugs</a></li>
							<li><a href="#">posts</a></li>
							<li><a href="#">topics</a></li>
							<li><a href="#">discussion</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	<form id="ticketsForm" action="<%=path%>/suggestInfo/Submit?${_csrf.parameterName}=${_csrf.token}" method="POST">
		<input id="_csrf" type="hidden"
		name="${_csrf.parameterName}"
		value="${_csrf.token}"/>
		<div class="bugsMiddleContain"> 
			<div class="bugsMiddle">
				<div class="bugsMiddleTop">
					<span>
						User Feedback
					</span>
				</div>
				<div class="bugsMiddleContext">
					<div class="bugsMiddleQuestion">
						<div class="bugsMiddleQuestionTitle">
							<span>	
								Describe the problem
							</span>
						</div>
						<div class="bugsMiddleQuestionDecribe">
							<div class="bugsMiddleQuestionDecribeTop">
								<a>
									Question Type:
								</a>
								
								<select id="BugsType"  required data-required-msg="Select the type">
									
								</select>
								<span class="k-invalid-msg BugsType-span" data-for="BugsType"></span>	
								
							
								<select name="functionId"  id="BugsTypeChild"   required data-required-msg="Select child type" style="width: 220px;"   >
									
								</select>
								
								<span class="k-invalid-msg BugsTypeChild" data-for="BugsTypeChild"></span>
								
								
							</div>
							<div class="bugsMiddleQuestionDecribeMiddle">
								<span>
									Question Describe:
								</span>
								<textarea name="suggestInfo" id="context"   placeholder="please write your question on the textarea!"
									required pattern="[a-zA-Z0-9]{10,200}" validationMessage="Invalid context"
								></textarea>
							</div>
							<div >
								<span class="k-invalid-msg" data-for="context"></span>
							</div> 
							<div class="bugsMiddleQuestionDescribeFile">
							 	<div class="demo">
									<div class="upload_box">
										<div class="upload_main">
											<div class="upload_choose">
												<input id="fileImage" type="file" size="30" name="files" multiple>
												 <span>Upload file：</span>
												<a id="clickFiles" href="javasript:;void(0)" onclick="">Choice</a>
													<span   id="fileDragArea" class="upload_drag_area">Drag and drop images </span>
												
												<div id="preview" class="upload_preview"> 
												
												
												
												</div>
												
											</div>
											
											<div id="uploadInf" class="upload_inf"></div>
										</div>
									</div>
							
								</div>
    							
							</div>
							<div class="bugsMiddleQuestionDescribeSubmit">
								
								<a  href="javaSript:;void(0)" onclick="submitClick()" >Submit</a>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>

		</form>
	</div>
	
	
	
    <script type="text/javascript"
	src="<%=path%>/static/js/community/bugs.js"></script>
	<jsp:include page="/jsp/common/footer.jsp"></jsp:include>
</body>
<script>
    function submitClick() {
        alert("gggg");
        $("#ticketsForm").ajaxSubmit({
            dataType: "json",
            success: function(data){
                alert(data);
            }
        });
    }
</script>
</html>