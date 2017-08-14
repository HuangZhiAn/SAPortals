$(function (){
	$("#flow-type").kendoDropDownList({
	    dataTextField: "type",
	    dataValueField: "value",
	    dataSource: [
	        { type: "A", value: 1 },
	        { type: "B", value: 2 },
	        { type: "C", value: 3 },
	        { type: "D", value: 4 },
	        { type: "E", value: 5 },
	        { type: "F", value: 6 },
	    ]
	});
	$("#flow-state").kendoDropDownList({
	    dataTextField: "state",
	    dataValueField: "value",
	    dataSource: [
	        { state: "finished", value: 1 },
	        { state: "processing", value: 2 },
	        { state: "preparing", value: 3 },
	        { state: "stop", value: 4 },
	        { state: "send back", value: 5 },
	        { state: "error", value: 6 },
	        { state: "cancel", value: 7 }
	    ]
	});
	
	
	
	$("#start-time").kendoDateTimePicker({
        value:new Date()
    });
	$("#start-time").attr("readonly","readonly");
	$("#end-time").kendoDateTimePicker({
        value:new Date()
    });
	$("#end-time").attr("readonly","readonly");
	
	
	
	var grid = $("#grid").kendoGrid({
		dataSource : {
			transport : {
				read : {
					url : "http://10.211.97.55:8080/type/query",
					dataType : "json"
				}
			},
			schema : {
				model : {
					id : "typeId",
					fields : {
						name : {
							editable : false
						}
					}
				}
			}
		},
		scrollable : false,
		sortable : true,
		pageable : {
			refresh : true,
			pageSizes : true,
			buttonCount : 5
		},
		editable : false,
		columns : [ {
			field : "typeId",
			title : "TypeId",
			width : "20%",
			editable : false,
			hidden : true
		}, {
			field : "name",
			title : "Name",
			editable : true
		}, {
			command : [{
				name : "submit",
				click : function(e) {
				}
			}]
		} ]
	});
	
	
});