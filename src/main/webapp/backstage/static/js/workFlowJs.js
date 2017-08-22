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
					url : path+"/suggest/queryTask",
					dataType : "json"
				}
			},
			schema : {
				model : {
					id : "id",
					fields : {
						name : {
							editable : false
						},
						processInstanceId :{
							editable : false
						}/*,
                        createTime :{
							type: "date",
                            editable : false
                        }*/
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
			field : "id",
			title : "id",
			editable : false,
			hidden : true
		}, {
			field : "processInstanceId",
			title : "ProcessInstanceId",
			hidden : true,
			editable : false
		}, {
            field : "customerId",
            title : "CustomerId",
            hidden : true,
            editable : false
        }, {
			field : "processDefineName",
			title : "Name",
			editable : false
		}, {
			field : "name",
			title : "Step",
			editable : false
		}, {
			field : "owner",
			title : "Proposer",
			editable : false
		}, {
			field : "candidateUsers",
			title : "Processor",
			editable : false
		}, {
			field : "createTime",
			title : "Create Time",
            filterable: {
                multi:true,
                itemTemplate: function(e) {
                    return getLocalTime(e.createTime);
                }
            },
			editable : false
		}, {
			field : "priority",
			title : "Priority",
			editable : false
		},{
			command : [{
				name : "show detail",
				click : function(e) {
					tr = $(e.target).closest("tr");
					grid = this;

					var data = this.dataItem(tr);
					showDetail(data)

				}
			}]
		} ],
        filterable: true,
    });

    $("#dialogEdit > .dialog-body > .dialog-header a").click(function (){
        $("#dialogEdit").css({display:"none"});
        $("#grid").css("display","block");
        $("#form-table").css("display","block");
    });
    function showDetail(item){
        var data =[];

        data=item.toJSON();
		data["_csrf"]=$("#_csrf").val();
        $("#dialogEdit").css({display:"block"});
        $("#dialogEdit .dialog-content").load(path + '/suggest/querySuggest',data);
        $("#grid").css("display","none");
        $("#form-table").css("display","none");
        $("#dialogEdit > .dialog-body > .dialog-header").css({display:"block"});
    }
});




