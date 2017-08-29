$(function (){
	var dataSource = new kendo.data.DataSource({
		data : [{
			name : "index",
			description : "This is index page content.",
			url : "/jsp/indexDiv.jsp",
			editable : true
		},{
			name : "download",
			description : "This is download page content.",
			url : "",
			editable : true
		},{
			name : "document",
			description : "This is document page content.",
			url : "",
			editable : false
		},{
			name : "community",
			description : "This is community page content.",
			url : "",
			editable : true
		},{
			name : "feedback",
			description : "This is feedback page content.",
			url : "",
			editable : true
		}],
		page: 1,
		pageSize : 5
	});
	
	
	var grid = $("#grid").kendoGrid({
		dataSource : dataSource,
		scrollable : false,
		sortable : true,
		pageable : {
			refresh : true,
			pageSizes : true,
			buttonCount : 5
		},
		editable : false,
		columns : [{
			field : "name",
			title : "Name",
			editable : false
		}, {
			field : "description",
			title : "Description",
			editable : false
		}, {
			field : "editable",
			title : "Editable",
			editable : false
		},{
			title : "Operation",
			command : [{
				name : "edit",
				click : function(e) {
					tr = $(e.target).closest("tr");
					grid = this;
					var data = this.dataItem(tr);
					if(data.editable){
						window.open(path + "/backstage/jsp/pageEdit.jsp?page=" + path + data.url);
					}else{
						alert("This page can't be edited.");
					}
					
				}
			}]
		} ]
	});
});