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
<title>community</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/community/community.css">

<link rel="stylesheet" type="text/css"
	href="<%=path%>/static/css/common/baseCss.css">

<script type="text/javascript"
	src="<%=path%>/static/js/common/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/static/js/common/jquery.cookie.js"></script>
<script type="text/javascript"
	src="<%=path%>/static/js/common/baseJs.js"></script>
<script type="text/javascript" src="<%=path%>/static/js/indexJs.js"></script>
</head>
<body>
	<jsp:include page="/jsp/common/header.jsp"></jsp:include>
	<div class="communityContian">
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
		<div class="communityMiddle">
			<div class="communityMiddleTops"></div>
			<div class="communityMiddleIntroduction">
				<img src="<%=path%>/static/img/community_bg1.png">
				<div class="communityMiddleIntroductionText">
					<h1>Welcome to the HMDM Community!</h1>
					<div class="communityMiddleIntroductionMessage">
						<div class="communityMiddleIntroductionMessageSpan">
							<div class="communityMiddleIntroductionMessageDiv">
								<img src="<%=path%>/static/img/discussions.png">
								<div>
									<span>discussion</span> <span>10000</span>
								</div>
							</div>
							<div class="communityMiddleIntroductionMessageDiv">
								<img src="<%=path%>/static/img/solutions.png">
								<div>
									<span>solution</span> <span>1000</span>
								</div>
							</div>
							<div class="communityMiddleIntroductionMessageDiv">
								<img src="<%=path%>/static/img/online.png">
								<div>
									<span>posts</span> <span>500</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="communityShowDiscussions">
			<div class="communityShowDiscussionsTop">
					<span>
						Discussions	
					</span>
			</div>
			<div class="communityShowDiscussionsFeaturedDiscussions">
				<div class="communityShowDiscussionsFeaturedDiscussion">
					<div class="communityShowDiscussionsFeaturedDiscussionTop">
						<a href="#">topics1</a> 
						<a>></a>
						<a href="#">topics2</a>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionMiddle">
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleImg">
							<a href="#">
								<img src="<%=path%>/static/img/img6.jpg">
							</a>
						</div>
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleTitle">
								<a href="#">
										Compatibility between Solid Edge and Femap
								</a><br>
								
								<span>
									By BeatrizSeoane on Jun 26, 2017
								</span>
						</div>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionBottom">
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContext">
								<span>
									Hi to everyone! I use to draw with Solid Edge and Simulate with Femap.I need to know witch versions
								</span>
							</div>
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContextMore">
									<a href="#">Read more..</a>
							</div>
					</div>
				</div>
				<div class="communityShowDiscussionsFeaturedDiscussion">
					<div class="communityShowDiscussionsFeaturedDiscussionTop">
						<a href="#">topics1</a> 
						<a>></a>
						<a href="#">topics2</a>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionMiddle">
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleImg">
							<a href="#">
								<img src="<%=path%>/static/img/img6.jpg">
							</a>
						</div>
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleTitle">
								<a href="#">
										Compatibility between Solid Edge and Femap
								</a><br>
								
								<span>
									By BeatrizSeoane on Jun 26, 2017
								</span>
						</div>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionBottom">
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContext">
								<span>
									Hi to everyone! I use to draw with Solid Edge and Simulate with Femap.I need to know witch versions
								</span>
							</div>
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContextMore">
									<a href="#">Read more..</a>
							</div>
					</div>
				</div>
				<div class="communityShowDiscussionsFeaturedDiscussion">
					<div class="communityShowDiscussionsFeaturedDiscussionTop">
						<a href="#">topics1</a> 
						<a>></a>
						<a href="#">topics2</a>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionMiddle">
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleImg">
							<a href="#">
								<img src="<%=path%>/static/img/img6.jpg">
							</a>
						</div>
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleTitle">
								<a href="#">
										Compatibility between Solid Edge and Femap
								</a><br>
								
								<span>
									By BeatrizSeoane on Jun 26, 2017
								</span>
						</div>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionBottom">
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContext">
								<span>
									Hi to everyone! I use to draw with Solid Edge and Simulate with Femap.I need to know witch versions
								</span>
							</div>
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContextMore">
									<a href="#">Read more..</a>
							</div>
					</div>
				</div>
				<div class="communityShowDiscussionsFeaturedDiscussion">
					<div class="communityShowDiscussionsFeaturedDiscussionTop">
						<a href="#">topics1</a> 
						<a>></a>
						<a href="#">topics2</a>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionMiddle">
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleImg">
							<a href="#">
								
							</a>
						</div>
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleTitle">
								<a href="#">
										Compatibility between Solid Edge and Femap
								</a><br>
								
								<span>
									By BeatrizSeoane on Jun 26, 2017
								</span>
						</div>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionBottom">
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContext">
								<span>
									Hi to everyone! I use to draw with Solid Edge and Simulate with Femap.I need to know witch versions
								</span>
							</div>
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContextMore">
									<a href="#">Read more..</a>
							</div>
					</div>
				</div>
				<div class="communityShowDiscussionsFeaturedDiscussion">
					<div class="communityShowDiscussionsFeaturedDiscussionTop">
						<a href="#">topics1</a> 
						<a>></a>
						<a href="#">topics2</a>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionMiddle">
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleImg">
							<a href="#">
								
							</a>
						</div>
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleTitle">
								<a href="#">
										Compatibility between Solid Edge and Femap
								</a><br>
								
								<span>
									By BeatrizSeoane on Jun 26, 2017
								</span>
						</div>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionBottom">
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContext">
								<span>
									Hi to everyone! I use to draw with Solid Edge and Simulate with Femap.I need to know witch versions
								</span>
							</div>
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContextMore">
									<a href="#">Read more..</a>
							</div>
					</div>
				</div>
				<div class="communityShowDiscussionsFeaturedDiscussion">
					<div class="communityShowDiscussionsFeaturedDiscussionTop">
						<a href="#">topics1</a> 
						<a>></a>
						<a href="#">topics2</a>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionMiddle">
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleImg">
							<a href="#">
								
							</a>
						</div>
						<div class="communityShowDiscussionsFeaturedDiscussionMiddleTitle">
								<a href="#">
										Compatibility between Solid Edge and Femap
								</a><br>
								
								<span>
									By BeatrizSeoane on Jun 26, 2017
								</span>
						</div>
					</div>
					<div class="communityShowDiscussionsFeaturedDiscussionBottom">
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContext">
								<span>
									Hi to everyone! I use to draw with Solid Edge and Simulate with Femap.I need to know witch versions
								</span>
							</div>
							<div class="communityShowDiscussionsFeaturedDiscussionBottomContextMore">
									<a href="#">Read more..</a>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/jsp/common/footer.jsp"></jsp:include>
</body>
</html>