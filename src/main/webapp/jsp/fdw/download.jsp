<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Download</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/common/baseCss.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/download/download.css">
<script type="text/javascript"
	src="<%=path%>/static/js/common/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/static/js/common/jquery.cookie.js"></script>
<script type="text/javascript"
	src="<%=path%>/static/js/common/baseJs.js"></script>
<script type="text/javascript" src="<%=path%>/static/js/indexJs.js"></script>
<script type="text/javascript" src="<%=path%>/static/js/download.js"></script>
</head>
<body>
	<jsp:include page="/jsp/common/header.jsp"></jsp:include>
	<div class="downloadContain">
		<div class="downloadTop">
			<img src="<%=path%>/static/img/download_bg2.jpg">
			<div class="downloadTopText">
				<span>HMDM</span><br> <span>Enterprise Edition </span><br>
				<span>Version 5.1</span>
				<div class="dowLoadBtn">
					<a href="javascript:void(0);" onclick="loginCheck(5.1)">Download</a>
				</div>
			</div>
			<div class="downloadTopBG"></div>

		</div>
		<div class="downloadMiddle">
			<div class="downloadMiddleTop">
				<span>Version Introduction And Download</span>
			</div>
			<div class="downloadMiddleIntroductions">
				<div class="downloadMiddleIntroductionsTop"></div>
				<div class="downloadMiddleIntroductionsProducts">
					<div class="downloadMiddleIntroductionsProduct">
						<a href="#"> 
							<img src="<%=path%>/static/img/img1.jpg">
							<div class="downloadMiddleIntroductionsProductDiv1">
								<span> HMDM </span><br> <span>Enterprise Edition </span><br>
								<span> Version 4.0 </span><br> <span> introduction </span>

								<div class="downloadMiddleBtn">
									<span onclick="loginCheck(4.0)"> Download </span>
								</div>
							</div>
							<div class="downloadMiddleProductIntroduction">
								<span> HMDM Enterprise Edition </span><br> <span>
									Version 4.0 </span>
							</div>
						</a>
					</div>

					<div class="downloadMiddleIntroductionsProduct">
						<a href="#">
							<img src="<%=path%>/static/img/img2.jpg">
							<div class="downloadMiddleIntroductionsProductDiv1">
								<span> HMDM </span><br> <span>Enterprise Edition </span><br>
								<span> Version 4.1 </span><br> <span> introduction </span>
								<div class="downloadMiddleBtn">
									<span onclick="loginCheck(4.1)"> Download </span>
								</div>
							</div>
							<div class="downloadMiddleProductIntroduction">
								<span> HMDM Enterprise Edition </span><br> <span>
									Version 4.1 </span>

							</div> 
						</a>

					</div>
					<div class="downloadMiddleIntroductionsProduct">
						<a href="#">
							<img src="<%=path%>/static/img/img3.jpg">


							<div class="downloadMiddleIntroductionsProductDiv1">
								<span> HMDM </span><br> <span>Enterprise Edition </span><br>
								<span> Version 5.1 </span><br> <span> introduction </span>
								<div class="downloadMiddleBtn">
									<span onclick="loginCheck(5.1)"> Download </span>
								</div>
							</div>
							<div class="downloadMiddleProductIntroduction">
								<span> HMDM Enterprise Edition </span><br> <span>
									Version 5.1 </span>

							</div> 
						</a>

					</div>


				</div>
				


			</div>
			


		</div>
		<div class="downloadOthersProduct">
			<div class="downloadOthersProductTop">
					<span>
							 More  And  Others 
					</span>
			</div>	
			<div class="downloadOthersProductIntroductions">
				<div class="downloadOthersProductIntroduction">
					<a href="#">
					Other1
					
					
					</a>	
				</div>
				<div class="downloadOthersProductIntroduction">
				<a href="#">
					Other1
					
					
					</a>	
				
				</div>
				<div class="downloadOthersProductIntroduction">
				<a href="#">
					Other1
					
					
					</a>	
				
				</div>
				<div class="downloadOthersProductIntroduction">
				<a href="#">
					Other1
					
					
					</a>	
				
				</div>
				<div class="downloadOthersProductIntroduction">
				<a href="#">
					Other1
					
					
					</a>	
				
				</div>
				<div class="downloadOthersProductIntroduction">
				<a href="#">
					Other1
					
					
					</a>	
				
				</div>
				<div class="downloadOthersProductIntroduction">
				<a href="#">
					Other1
					
					
					</a>	
				
				</div>
				<div class="downloadOthersProductIntroduction">
				<a href="#">
					Other1
					
					
					</a>	
				
				</div>
				<div class="downloadOthersProductIntroduction">
				<a href="#">
					Other1
					
					
					</a>	
				
				</div>
			</div>
		</div>
		<!-- 	 -->
	</div>

	<jsp:include page="/jsp/common/footer.jsp"></jsp:include>
</body>
</html>

