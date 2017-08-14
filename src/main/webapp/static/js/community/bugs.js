
$(function(){
	
	// 查询 产品类型确定bug类型  
	
	$.ajax({
        url:path+"/product/query",
        type: "GET",
        dataType: "json",
        data: {},
        success: function (data) {
        	console.log(data);
            $("#BugsType").kendoDropDownList({
                optionLabel: "--Select  Type--",
                dataTextField: "name",
                dataValueField: "productId",
                dataSource: data
                 // 当前默认选中项，索引从0开始。
            });
        },
        error:function(){
            alert("error!");
        }
    });
	  
	  

    $("#BugsType").change(function () {
        $.ajax({
            url:path+"/function/query",
            type: "GET",
            dataType: "json",
            data: {"productId":$(this).val()},
            success: function (data) {
                $("#BugsTypeChild").kendoDropDownList({
                    optionLabel: "--Select  Type--",
                    dataTextField: "functionName",
                    dataValueField: "functionId",
                    dataSource: data
                    // 当前默认选中项，索引从0开始。
                });
            },
            error:function(){
                alert("error!");
            }
        });
    });
	
	/*//点击按钮提交表单
	var data = [
        { text: "HMDM 4.0", value: "1" },
        { text: "HMDM 5.0", value: "2" },
        { text: "Others", value: "3" }
    ];

	var data1 = [
        { text: "HMDM 4.0", value: "1" },
        { text: "HMDM 5.0", value: "2" },
        { text: "Others", value: "3" }
        ];
	
	  $("#BugsType").kendoDropDownList({
		  	optionLabel: "--Select  Type--",
        	  dataTextField: "text",
              dataValueField: "value",
              dataSource: data,
              index: 0 // 当前默认选中项，索引从0开始。
      });
	  
	  $("#BugsTypeChild").kendoDropDownList({
          optionLabel: "--Select Child  Type--",
          	  dataTextField: "text",
                dataValueField: "value",
                dataSource: data1,
                index: 0 // 当前默认选中项，索引从0开始。

      });*/
	  
	  var validator = $("#ticketsForm").kendoValidator().data("kendoValidator");
	  
	  
	
	  
	  
	 /* $("#imgFile").change(function(e) {
		  
			 var files = e.target.files;
			 
			 alert(files.length)
			 
				for(i = 0 ; i < files.length ; i++){
					
					
					
					//alert(files[i]['name'])
					
					
					
					createImage(files,i,files);
					
				}
				
			});*/
	  



              /*  alert($("#context").val());
                alert(path+"/suggestInfo/Submit");*!/
*/
                /*$.ajax({
                    url: path+"/suggestInfo/Submit",
                    type: "POST",
                    dataType: "json",
                    data: {
                    	"functionId":$("BugsTypeChild").val(),
						/!*"files":fileUtil.fileFilter,*!/
						"suggestInfo":$("#context").val(),
						"_csrf":$("#_csrf").val()
					},
                    success: function (data) {
                        alert(data)
                    },
                    error:function(){
                        alert("error!");
                    }
                });

				alert("gggg");*/


			
			
})
/*
 *
 * 查看input file  个数
function fileCountCheck(objForm){ 
	
	alert(objForm)
  if (window.File && window.FileList) { 
	  
	  
   var fileCount1 = objForm["mulUp[]"].files.length;
   
 
   alert(fileCount);
   if(fileCount > 5){ 
	   window.alert('文件数不能超过5个，你选择了' + fileCount + '个'); 
   } 
   else { 
	   window.alert('符合规定'); 
   	} 
  } 
  else { 
	  window.alert('抱歉，你的浏览器不支持FileAPI，请升级浏览器！'); 
  } 

  return false; 

 }*/
/*function createImage(files,index,target){
		var file = files[index];
		
		var fReader = new FileReader();
		
		fReader.onload = (function(var_file) {
			
			return function(e) {
				
				var $div = $("<div class='imgDiv'><img class='img" + index + "' src=" + this.result + "><a href='javascript:void(0)'  data-index='"+ index +"' class='delete-btn'>X<a/>   </div>");
				
				$(".img-div").append($div);
				
				$div.find(".delete-btn").click(function (){
					
					$(this).parent().remove();

					ZXXFILE.funDeleteFile(files[parseInt($(this).attr("data-index"))]);
					
					
				});
				
				
				
			}
		})(file);
		
		fReader.readAsDataURL(file);
	};
*/
 var params = {
		 
			fileInput: $("#fileImage").get(0),
			dragDrop: $("#fileDragArea").get(0),
			upButton: $("#fileSubmit").get(0),
			
			url: $("#ticketsForm").attr("action"),
			
			//过滤文件个数和类型
			filter: function(files) {
				var arrFiles = [];
				
				if(files.length>5){
					
					alert('select the Picture num over 5');
					return arrFiles;
				} else {
					for (var i = 0, file; file = files[i]; i++) {
						
						if (file.type.indexOf("image") == 0) {
							
							var num = this.fileFilter.length
							
							if((num+files.length)>5){
								
								alert('the Picture num over 5');
								return arrFiles;
							}
							
							else  if (file.size >= 512000) {
								alert('the"'+ file.name +'"Picture size over 500k');
								return arrFiles;
							} else {
								arrFiles.push(file);	
							}			
						} else {
							alert('flie"' + file.name + '"not is the images');
							return arrFiles;
						}
					}
				}
				return arrFiles;
			},
			
			
			onSelect: function(files) {
				var html = '', i = 0;
				$("#preview").html('<div class="upload_loading"></div>');
				var funAppendImage = function() {
					file = files[i];
					if (file) {
						var reader = new FileReader()
						reader.onload = function(e) {
							html = html + '<div id="uploadList_'+ i +'" class="upload_append_list"><p><strong>' + file.name + '</strong>'+ 
								'<a href="javascript:" class="upload_delete" title="delete" data-index="'+ i +'">X</a><br />' +
								'<img id="uploadImage_' + i + '" src="' + e.target.result + '" class="upload_image" /></p>'+ 
								'<span id="uploadProgress_' + i + '" class="upload_progress"></span>' +
							'</div>';
							i++;
							funAppendImage();
						}
						reader.readAsDataURL(file);
					} else {
						$("#preview").html(html);
						if (html) {
							//删除方法
							$(".upload_delete").click(function() {
								
								fileUtil.funDeleteFile(files[parseInt($(this).attr("data-index"))]);
								
								return false;	
							});
							//提交按钮显示
							$("#fileSubmit").show();	
						} else {
							//提交按钮隐藏
							$("#fileSubmit").hide();	
						}
					}
				};
				funAppendImage();		
			},
			onDelete: function(file,num) {
				
				$("#uploadList_" + file.index).fadeOut();
				//删除后间接的重置表单的值  jquery方法不支持 $("#from").reset(),只能间接获取 dom模型 然后调用方法。
				$('#ticketsForm')[0].reset();
				
				if(num==0){
					$("#fileSubmit").hide();
				}
				
				
			},
			onDragOver: function() {
				$(this).addClass("upload_drag_hover");
			},
			onDragLeave: function() {
				$(this).removeClass("upload_drag_hover");
			},
			onProgress: function(file, loaded, total) {
				var eleProgress = $("#uploadProgress_" + file.index), percent = (loaded / total * 100).toFixed(2) + '%';
				eleProgress.show().html(percent);
			},
			onSuccess: function(file, response) {
				$("#uploadInf").append("<p>upload successd，address is：" + response + "</p>");
			},
			onFailure: function(file) {
				$("#uploadInf").append("<p>图片" + file.name + "upload error！</p>");	
				$("#uploadImage_" + file.index).css("opacity", 0.2);
			},
			
			onComplete: function() {
				//提交按钮隐藏
				$("#fileSubmit").hide();
				//file控件value置空
				$('#ticketsForm')[0].reset();
				// 成功提示
				$("#uploadInf").append("<p>The current picture is all uploaded, but can continue to add upload。</p>");
			}
			
			
			
			
		};

	fileUtil = $.extend(fileUtil, params);
	fileUtil.init();
 	
		$("#clickFiles").click(function(){
			$("#fileImage").click();
		})
		