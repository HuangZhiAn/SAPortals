$(function (){
	var horizontal = $(".horizontal").kendoSplitter({
		panes : [ {
			resizable : false,
			size : "240px"
		}, {
			resizable : false
		} ]
	});
	$(".horizontal > div").css({height:"100%"});
	
	
	$("#left-pane .item-div .title-div").click(function (){
		if($(this).attr("isOpened") == "true"){
			$(this).attr("isOpened","false");
			$(this).find(".icon-span").html("+");
			$(this).parent().find(".children-div").animate({"height":"toggle"},200);
		}else{
			$(this).attr("isOpened","true");
			$(this).find(".icon-span").html("-");
			$(this).parent().find(".children-div").animate({"height":"toggle"},200);
		}
	});
	$("#left-pane .item-div .folder-doc").click(function (){
		if($(this).attr("isOpened") == "true"){
			$(this).attr("isOpened","false");
			var src = $(this).find(".icon-span img").attr("src");
			src = src.substring(0,src.lastIndexOf("/") + 1) + "file_close.ico";
			$(this).find(".icon-span img").attr("src",src);
			$(this).next("ul").animate({"height":"toggle"},200);
		}else{
			$(this).attr("isOpened","true");
			var src = $(this).find(".icon-span img").attr("src");
			src = src.substring(0,src.lastIndexOf("/") + 1) + "file_open.ico";
			$(this).find(".icon-span img").attr("src",src);
			$(this).next("ul").animate({"height":"toggle"},200);
		}
	});
	
	$("#left-pane .item-div .file-doc").click(function (){
		$("#right-pane .pane-content").html("loading...");
		$("#right-pane .pane-content").load($(this).attr("file"));
	});
});