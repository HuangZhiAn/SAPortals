function getContextPath() {
    var pathName = document.location.pathname;
    var index = pathName.substr(1).indexOf("/");

    var result = pathName.substr(0,index+1);
    return result;
}


function buildPageDiv(page,pageSize,totalPage,$pageDiv,clickMethod){
	$pageDiv.html("");
	var htmlStr = "";
	if(page > 1){
		htmlStr += "<a class='page-btn' href='javascript:void(0);' value='" + (page - 1) + "'>上一页</a>";
		htmlStr += "<a class='page-btn' href='javascript:void(0);' value='1'>1</a>";
	}else{
		htmlStr += "<span class='page-btn'>上一页</span>";
		htmlStr += "<span class='page-btn select'>1</span>";
	}
	
	
	for(var i = 2 ; i < totalPage  ; i++){
		if(page - i > 0 && page - i < 2){
			htmlStr += "<a class='page-btn' href='javascript:void(0);' value='" + i + "'>" + i + "</a>";
		}else if(i - page > 0 && i - page < 2){
			htmlStr += "<a class='page-btn' href='javascript:void(0);' value='" + i + "'>" + i + "</a>";
		}else if(page == i){
			htmlStr += "<span class='page-btn select'>" + i + "</span>";
		}else if(i - page == 2 && totalPage > i){
			htmlStr += "<span class='page-btn'>...</span>";
		}else if(page - i == 2){
			htmlStr += "<span class='page-btn'>...</span>";
		}
	}
	
	if(totalPage <= 1){
		htmlStr += "<span class='page-btn'>下一页</span>";
	}else if(page >= totalPage){
		htmlStr += "<span class='page-btn select'>" + page + "</span>";
		htmlStr += "<span class='page-btn'>下一页</span>";
	}else{
		htmlStr += "<a class='page-btn' href='javascript:void(0);' value='" + totalPage + "'>" + totalPage + "</a>";
		htmlStr += "<a class='page-btn' href='javascript:void(0);' value='" + (parseInt(page) + 1) + "'>下一页</a>";
	}
	$pageDiv.html(htmlStr);
	$pageDiv.find("a").click(function (){
		clickMethod($(this).attr("value"));
	});
}