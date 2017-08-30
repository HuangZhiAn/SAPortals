$(function (){
	var img;

    $("#reset_img").change(function(e) {
        if($(this).val() == ""){
            return;
        }
        var type = ["jpg","png"];
        if (!RegExp("\.(" + type.join("|") + ")$", "i").test($(this).val().toLowerCase())) {
            alert("error,file type must be " + type.join(","));
            $(this).val("");
            return;
        }
        //提交事件
		console.log($("#imgForm1"));
        $("#imgForm1").ajaxSubmit({
            dataType: "json",
            success: function(data){
                $(img).attr("src",data);
            }
        });
    });

	$(".page-div").load(pg,function(){
		$(".page-div img").click(function (){
            img = this;
			$("#reset_img").click();
		});
		$(".page-div p").click(function (){
			var $p = $(this);
			$(".text-edit .form-div .textarea-edit").val($p.html());
			$(".text-edit").css("display","block");
			$(".text-edit .form-div .confirm-btn").off("click");
			$(".text-edit .form-div .confirm-btn").click(function (){
				var val = $(".text-edit .form-div .textarea-edit").val();
				$p.html(val);
				$(".text-edit .form-div .header .close-btn").click();
			});
		});
		
		$(".page-div span").click(function (){
			var $span = $(this);
			$(".text-edit .form-div .textarea-edit").val($span.html());
			$(".text-edit").css("display","block");
			$(".text-edit .form-div .confirm-btn").off("click");
			$(".text-edit .form-div .confirm-btn").click(function (){
				var val = $(".text-edit .form-div .textarea-edit").val();
				$span.html(val);
				$(".text-edit .form-div .header .close-btn").click();
			});
		});
		
		$(".page-div a").click(function(){
			var $a = $(this);
			$(".link-edit .form-div table .text-input").val($a.html());
			$(".link-edit .form-div table .href-input").val($a.attr("href"));
			$(".link-edit").css("display","block");
			$(".link-edit .form-div .confirm-btn").off("click");
			$(".link-edit .form-div .confirm-btn").click(function (){
				var text = $(".link-edit .form-div table .text-input").val();
				var href = $(".link-edit .form-div table .href-input").val();
				$a.html(text);
				$a.attr("href",href);
				$(".link-edit .form-div .header .close-btn").click();
			});
			return false;
		});
	});
	$(".save-page-btn").click(function (){
		var html = $(".page-div").html();
		$(".page-div").html("");
		alert("ok");
		$.ajax({
			url: path+"/pageEdit",
			dataType: "json",
			type: "post",
			data: {
                "_csrf": $("#_csrf").val(),
				"html": html,
				"pagePath": pg
			},
			success: function (data) {
				if(data=="success"){
					location.href = path+"/";
				}
            },
			error: function (data) {
				alert(data);
            }
		});
	});
	$(".text-edit .form-div .header .close-btn").click(function (){
		$(".text-edit .form-div .textarea-edit").val("");
		$(".text-edit").css("display","none");
	});
	$(".link-edit .form-div .header .close-btn").click(function (){
		$(".link-edit .form-div table .text-input").val("");
		$(".link-edit .form-div table .href-input").val("");
		$(".link-edit").css("display","none");
	});
});