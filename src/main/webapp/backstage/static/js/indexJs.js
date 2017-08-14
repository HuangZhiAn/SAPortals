$(function (){
	$("#menu").kendoMenu();
	
	
	var setListView = function (){
		$(".img-list-div").append("<div id='listView'></div>");
    	
    	var path = getContextPath();
    	var items = [{
    		p_name : "avd.jpg",
    		url : "/backstage/jsp/myWorkFlow.jsp",
    		path : path
    	},{
    		p_name : "bg1.jpg",
    		url : "",
    		path : path
    	},{
    		p_name : "bg2.jpg",
    		url : "",
    		path : path
    	},{
    		p_name : "bg4.jpg",
    		url : "",
    		path : path
    	},{
    		p_name : "home_HMDM_introduce.jpg",
    		url : "",
    		path : path
    	},{
    		p_name : "home-icon.png",
    		url : "",
    		path : path
    	},{
    		p_name : "icons.jpg",
    		url : "",
    		path : path
    	},{
    		p_name : "index_top_bg.jpg",
    		url : "",
    		path : path
    	}];
        var dataSource = new kendo.data.DataSource({
            data: items
        });

        $("#listView").kendoListView({
            dataSource: dataSource,
            template: kendo.template("<div class='item'>" + 
            		"<a href='javascript:void(0);' url='#: url #'>" + 
            			"<img src='#= path #/static/img/#= p_name #' alt='#: p_name # image' />" +
            		"</a>" + 
            	"</div>")
        });
        $("#listView a").click(function (){
        	loadDiv($(this).attr("url"));
        });
	};
	setListView();
	
	
	loadDiv("/backstage/jsp/myWorkFlow.jsp");
});
function loadDiv(url){
	$("#content-div").html("");
	$("#content-div").load(getContextPath() + url);
}
