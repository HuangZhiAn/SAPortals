$(function (){
	var viewModel = kendo.observable({
		document_id: "",
        document_name: "",
        document_type: "0",
        document_parent: "0",
        enable:"Y",
        version:"1",
        document_url:""
    });

    kendo.bind($("#form-table"), viewModel);

	
	$(".horizontal").kendoSplitter({
		panes : [ {
			resizable : false,
			size : "240px"
		}, {
			resizable : false
		} ]
	});
	$(".horizontal > div").css({height: "100%"});
	$("#right-pane").css({left: "240px"});
	
	

	
	$("#right-pane .editor-div .editor-top .btn-div .save-btn").click(function (){
		var data = viewModel.toJSON();
		var name = data.document_name;
		if(data.document_id == ""){
			alert("Please choice a object.");
			return;
		}
		if(name.trim() == ""){
			alert("Please input document's name")
			return;
		}
		/*$.ajaxFileUpload({
			url : path + "/ajax/document/modifyById",
			secureuri : true,
			fileElementId : 'document_file',
			dataType : 'json',
			data: data,
            success: function (data) {
            	if(data.msg=="success"){
            		setDocumentValue(data.data);
            		resetList();
            		alert("Modify success !");
            	}else{
            		alert(data.msg);
            	}
            },
            error:function(data){
            	console.log(data);
            }
		});*/

		$("#documentForm").ajaxSubmit({
            dataType: "json",
            success: function(data){
                alert(data);
            },
            error: function (xhr, status, error) {
                alert(xhr);
            }
        })
	});
	
	$("#right-pane .editor-div .editor-top .btn-div .delete-btn").click(function (){
		var data = viewModel.toJSON();
		if(data.document_id == ""){
			return;
		}
		if(!confirm("This operation will delete the object and its subset,do you want to continue ?")){
			return;
		}
		$.ajax({
            url: path + "/ajax/document/deleteById.action",
            type: "get",
            dataType: "json",
            data: data,
            success: function (data) {
            	if(data.msg=="success"){
            		setDocumentValue({
                		document_id: "",
                        document_name: "",
                        document_type: "0",
                        document_parent: "0",
                        enable:"Y",
                        version:"1"
                    });
            		resetList();
                	alert("Delete success !");
            	}else{
            		alert(data.msg);
            	}
            },
            error:function(data){
            	console.log(data);
            }
        });
	});

	$("#right-pane .editor-div table td .change-btn").click(function (){
		$("#document_file").click();
	});
	$("#document_file").change(function(e) {
		if($(this).val() == ""){
			return;
		}
		var type = ["docx"];
		if (!RegExp("\.(" + type.join("|") + ")$", "i").test($(this).val().toLowerCase())) {
            alert("error,file type must be docx");
            $(this).val("");
            return;
        }
	});
	$("#right-pane .editor-div .editor-top .btn-div .create-btn").click(function (){
		$(".create-document-div").css({display:"block"});
	});

	
	function setDocumentValue(data){
		viewModel.document_id = data.documentId;
		viewModel.document_name = data.documentName;
		viewModel.document_type = data.documentType;
		viewModel.document_parent = data.documentParent;
		viewModel.enable = data.enable_flag;
		viewModel.version = data.version;
		viewModel.document_url = data.documentUrl;
		kendo.bind($("#form-table"), viewModel);
	};
	
	
	
	$("#create_type").change(function (){
		parentSelectFilter($("#create_parent"),$(this).val());
	});
	$(".create-document-div .create-from .create-from-top .close-btn").click(function (){
		$(".create-document-div").css({display:"none"});
	});
	$("#create-table td .reset-btn").click(function (){
		createModel.document_id = "";
		createModel.document_name = "";
		createModel.document_type = "0";
		createModel.document_parent = "0";
		kendo.bind($("#create-table"), createModel);
	});
	$("#create-table td .save-btn").click(function (){
		var data = createModel.toJSON();
		var name = data.document_name;
		if(name.trim() == ""){
			alert("Please input document's name")
			return;
		}else if(! /^([a-zA-Z0-9]|[_]){5,}$/.test(name)){
			alert("Invalid name")
			return;
		}
		$.ajax({
            url: path + "/ajax/document/create.action",
            type: "get",
            dataType: "json",
            data: data,
            success: function (data) {
            	if(data.msg=="success"){
            		resetList();
            		$(".create-document-div .create-from .create-from-top .close-btn").click();
            		alert("save success !");
            	}else{
            		alert(data.msg);
            	}
            },
            error:function(data){
            	console.log(data);
            }
        });
	});
	
	var createModel = kendo.observable({
		document_id: "",
        document_name: "",
        document_type: "0",
        document_parent: "0",
        enable:"Y",
        version:"1"
    });
    kendo.bind($("#create-table"), createModel);
	
	
	
	
	
	
	function resetLeftEvent(){
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
		
		$("#left-pane a").click(function (){
			var id = $(this).attr("documentId");
			$.ajax({
	            url: path + "/ajax/document/searchById.action",
	            type: "get",
	            dataType: "json",
	            data: {"documentId":id},
	            success: function (data) {
	            	if(data.msg=="success"){
	            		console.log(data);
	            		parentSelectFilter($("#document_parent"),data.data.documentType);
	            		if(data.data.documentType == 2){
	            			$("#right-pane .editor-div table td .change-btn").css("display","inline-block");
	            		}else{
	            			$("#right-pane .editor-div table td .change-btn").css("display","none");
	            		}
	            		setDocumentValue(data.data);
	            	}else{
	            		alert(data.msg);
	            	}
	            },
	            error:function(data){
	            	console.log(data);
	            }
	        });
		});
	};
	resetLeftEvent();
	
	
	
	var resetList = function(){
		$.ajax({
            url: path + "/ajax/document/searchAll.action",
            type: "get",
            dataType: "json",
            data: {},
            success: function (data) {
            	if(data.msg=="success"){
            		console.log(data);
            		$("#left-pane").html("");
            		var html = createDocuments(data.data);
            		$("#left-pane").html(html);
            		resetParentSelect(data.data);
            		resetLeftEvent();
            	}else{
            		alert(data.msg);
            	}
            },
            error:function(data){
            	console.log(data);
            }
        });
	};
	
	function resetParentSelect(items){
		var $select = $("#documents-pane > .horizontal .hidden-select");
		$select.html("<option value='0'>none</option>");
		for(var i = 0 ; i < items.length ; i++){
			var item = items[i];
			if(item.documentType == 1 || item.documentType == 0){
				$select.append("<option type='" + item.documentType + "' value='" + item.documentId + "'>" + item.documentName + "</option>");
				for(var j = 0 ; j < item.childList.length ; j++){
					var child = item.childList[j];
					if(child.documentType == 1){
						$select.append("<option type='" + child.documentType + "' value='" + child.documentId + "'>" + child.documentName + "</option>");
					}
				}
			}
		}
	}
	
	
	function parentSelectFilter($select,type){
		$select.html("<option value='0'>none</option>");
		if(type == 1){
			var options = $("#documents-pane > .horizontal .hidden-select option[type=0]").clone();
			$select.append(options);
		}else if(type == 2){
			var options = $("#documents-pane > .horizontal .hidden-select option[type]").clone();
			$select.append(options);
		}
	}
	
	
	
	
	
	function createDocuments(items){
		var html = "";
		for(var i = 0 ; i < items.length ; i++){
			var child = items[i];
			if(child.documentType == 0){
				html = html + "<div class='item-div'>" + createTopic(child) + "</div>";
			}else if(child.documentType == 1){
				html = html + "<div class='item-div'>" + createFolder(child) + "</div>";
			}else{
				html = html + "<div class='item-div'>" + createDocument(child) + "</div>";
			}
		}
		return html;
	}
	function createTopic(item){
		var $div = $("<div></div>");
		var $a = $("<a documentId='" + item.documentId + "' href='javascript:void(0);' class='title-div'> " +
						"<span class='text-span'>" + item.documentName + "</span> " +
						"<span class='icon-span'>+</span>" +
					"</a>");
		var $ul = $("<ul class='children-div'></ul>");
		for(var i = 0 ; i < item.childList.length ; i++){
			var child = item.childList[i];
			if(child.documentType == 1){
				$ul.append("<li>" + createFolder(child) + "</li>");
			}else{
				$ul.append("<li>" + createDocument(child) + "</li>");
			}
			
		}
		$div.append($a);
		$div.append($ul);
		return $div.html();
	}
	
	function createFolder(folder){
		var $div = $("<div></div>");
		var $a = $("<a documentId='" + folder.documentId + "' class='folder-doc' href='javascript:void(0);'> " +
				"<span class='icon-span'><img src='" + documentPath + "/static/img/file_close.ico'></span> " +
				"<span class='text-span'>" + folder.documentName + "</span>" +
			"</a>");
		
		var $ul = $("<ul></ul>");
		for(var i = 0 ; i < folder.childList.length ; i++){
			var child = folder.childList[i];
			$ul.append("<li>" + createDocument(child) + "</li>");
		}
		$div.append($a);
		$div.append($ul);
		return $div.html();
	}
	function createDocument(file){
		var $div = $("<div></div>");
		var $a = $("<a documentId='" + file.documentId + "' file='<%=path%>/'" + file.documentUrl + "' class='file-doc' href='javascript:void(0);'> " +
				"<span class='icon-span'><img src='" + documentPath + "/static/img/txt_icon.png'></span> " +
				"<span class='text-span'>" + file.documentName + "</span> " +
			"</a>")
		$div.append($a);
		return $div.html();
	}
});

