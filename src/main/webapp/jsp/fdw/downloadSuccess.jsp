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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/common/baseCss.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/community/downloadSuccess.css">
	<script type="text/javascript"
	src="<%=path%>/static/js/common/baseJs.js"></script>
	<script type="text/javascript"
	src="<%=path%>/static/js/common/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/static/js/kendo/kendo.web.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/jsp/common/header.jsp"></jsp:include>
	<div class="downloadSuccessContian">
		<div class="downloadSuccessTop"> 
			<div class="downloadSuccessContext">
				<div class="downloadSuccessUserMessageTop">
						<span>
							Download Success Message!!
						</span>
				</div>
				<div class="downloadSuccessUserMessageMiddle">
					<div class="downloadSuccessUserMessageMiddleTop">
						<span>
							Dear user :
						</span>
						<a>
							${sessionScope.customer.name}
						</a>
					</div>
					<div class="downloadSuccessUserMessageMiddleContext">
						<span>
							Your download address has been sent to your email address. Please check the email of your account and download it. If there is any mistake, Please feedback the information.
						</span>
					</div>
					
					<div class="downloadSuccessUserMessageMiddleBottom">
						<a href="bugs.jsp">
							Feedback 
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="/jsp/common/footer.jsp"></jsp:include>
</body>
</html>