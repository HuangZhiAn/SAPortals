$(function (){
	$(".vertical").kendoSplitter({
		orientation : "vertical",
		panes : [ {
			resizable : false,
			size : "70px"
		}, {
			resizable : false,
		}]
	});
	
	$("#menu").kendoMenu();
	
	
	var setListView = function (){
		$("#content-div").html("<div class='img-list-div'></div>");
		
		$("#content-div .img-list-div").append("<div id='listView'></div>");
    	
    	var path = getContextPath();
    	var items = [{
    		p_name : "NOTECE_ICON.png",
    		url : "/workFlow",
    		path : path
    	},{
    		p_name : "DOCUMENT_ICON.png",
    		url : "/manage",
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
	
	
	$(".tool-div .current-div a").click(function (){
		if($(this).attr("value") == "index"){
			setListView();
		}
	});
	
	
	/*loadDiv("/backstage/jsp/workFlow.jsp");*/
	/*loadDiv("/document/manage.action");*/
});
function loadDiv(url){
	$("#content-div").html("");
	$("#content-div").load(path + url);
}
