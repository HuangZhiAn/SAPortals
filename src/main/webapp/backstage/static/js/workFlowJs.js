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
		dataSource : [{"id":"1005","name":"反馈审核","description":null,"priority":50,"owner":null,"assignee":null,"delegationState":null,"processInstanceId":"1001","executionId":"1001","createTime":1502436041000,"taskDefinitionKey":"task1","dueDate":null,"parentTaskId":null,"taskLocalVariables":null,"processVariables":{},"suspended":false},{"id":"105","name":"反馈审核","description":null,"priority":50,"owner":null,"assignee":null,"delegationState":null,"processInstanceId":"101","executionId":"101","createTime":1502422930000,"taskDefinitionKey":"task1","dueDate":null,"parentTaskId":null,"taskLocalVariables":null,"processVariables":{},"suspended":false},{"id":"1105","name":"反馈审核","description":null,"priority":50,"owner":null,"assignee":null,"delegationState":null,"processInstanceId":"1101","executionId":"1101","createTime":1502436289000,"taskDefinitionKey":"task1","dueDate":null,"parentTaskId":null,"taskLocalVariables":null,"processVariables":{},"suspended":false},{"id":"1205","name":"反馈审核","description":null,"priority":50,"owner":null,"assignee":null,"delegationState":null,"processInstanceId":"1201","executionId":"1201","createTime":1502436618000,"taskDefinitionKey":"task1","dueDate":null,"parentTaskId":null,"taskLocalVariables":null,"processVariables":{},"suspended":false},{"id":"1305","name":"反馈审核","description":null,"priority":50,"owner":null,"assignee":null,"delegationState":null,"processInstanceId":"1301","executionId":"1301","createTime":1502436833000,"taskDefinitionKey":"task1","dueDate":null,"parentTaskId":null,"taskLocalVariables":null,"processVariables":{},"suspended":false},{"id":"1405","name":"反馈审核","description":null,"priority":50,"owner":null,"assignee":null,"delegationState":null,"processInstanceId":"1401","executionId":"1401","createTime":1502436985000,"taskDefinitionKey":"task1","dueDate":null,"parentTaskId":null,"taskLocalVariables":null,"processVariables":{},"suspended":false},{"id":"1414","name":"反馈审核","description":null,"priority":50,"owner":null,"assignee":null,"delegationState":null,"processInstanceId":"1410","executionId":"1410","createTime":1502437127000,"taskDefinitionKey":"task1","dueDate":null,"parentTaskId":null,"taskLocalVariables":null,"processVariables":{},"suspended":false},{"id":"1423","name":"反馈审核","description":null,"priority":50,"owner":null,"assignee":null,"delegationState":null,"processInstanceId":"1419","executionId":"1419","createTime":1502437385000,"taskDefinitionKey":"task1","dueDate":null,"parentTaskId":null,"taskLocalVariables":null,"processVariables":{},"suspended":false},{"id":"1505","name":"反馈审核","description":null,"priority":50,"owner":null,"assignee":null,"delegationState":null,"processInstanceId":"1501","executionId":"1501","createTime":1502439588000,"taskDefinitionKey":"task1","dueDate":null,"parentTaskId":null,"taskLocalVariables":null,"processVariables":{},"suspended":false},{"id":"1605","name":"反馈审核","description":null,"priority":50,"owner":null,"assignee":null,"delegationState":null,"processInstanceId":"1601","executionId":"1601","createTime":1502439854000,"taskDefinitionKey":"task1","dueDate":null,"parentTaskId":null,"taskLocalVariables":null,"processVariables":{},"suspended":false},{"id":"1614","name":"反馈审核","description":null,"priority":50,"owner":null,"assignee":null,"delegationState":null,"processInstanceId":"1610","executionId":"1610","createTime":1502439980000,"taskDefinitionKey":"task1","dueDate":null,"parentTaskId":null,"taskLocalVariables":null,"processVariables":{},"suspended":false}]/*{
			transport : {
				read : {
					url : "http://10.211.98.5:8080/suggest/queryTask",
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
						}
					}
				}
			}
		}*/,
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
			field : "name",
			title : "Name",
			editable : false
		}, {
			field : "step",
			title : "Step",
			editable : false
		}, {
			field : "proposer",
			title : "Proposer",
			editable : false
		}, {
			field : "processor",
			title : "Processor",
			editable : false
		}, {
			field : "createTime",
			title : "Create Time",
			
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
					//grid.removeRow(tr);
					
				}
			}]
		} ]
	});
	
	
	function showDetail(item){
		var dialog = $("#dialogEdit").kendoWindow({
	        width: ($(".my-work-flow").outerWidth() - 4) + "px",
	        height: ($(".my-work-flow").outerHeight()) + "px",
	        title: 'Flow Detail',
	        visible: false,
	        iframe: true,
	        modal: true,
	        resizable: false,
	        draggable: false,
	        content: getContextPath() + '/backstage/jsp/flowDetail.jsp'
	    }).data("kendoWindow");
	    /*dialog.maximize();*/
		
		$("div.k-window").css({
			left: "2px",
			top: "0px",
			"z-index" : 99
		});
		$(".my-work-flow").append($("div.k-window"));
	    dialog.open();
	}
	showDetail();
});