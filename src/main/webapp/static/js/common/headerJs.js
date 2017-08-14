$(function (){
	var viewModel = kendo.observable({
        username: "",
        password: "",
        validateCode: "",
		_csrf: $("#_csrf").val()
    });
    kendo.bind($("#form-div"), viewModel);

    var validator = $("#form-div").kendoValidator({}).data("kendoValidator");
	
	
	$("#login-btn").click(function (){
		if($("#login-btn").text()=="Sign Out"){
            $("#logoutForm").submit();
		}else{
            $(".login-div").css("display","block");
            $("#checkword-img").attr("src",path + "/verifyCode?date=" + new Date());
		}
	});
	$(".login-div .form-div .conroller .close-btn").click(function (){
		$(".login-div").css("display","none");
	});
	$("#checkword-img").click(function (){
		$("#checkword-img").attr("src",path + "/verifyCode?date=" + new Date());
	});
	$(".login-div .form-div .login-btn").click(function (){

		if(!validator.validate()){
			return;
		}
    	var data = viewModel.toJSON();
    	/*data.password = hex_md5(data.password);*/
		$.ajax({
            url:path+"/login",
            type: "post",
            dataType: "text",
            data: data,
            success: function (data) {
                //$(".login-div").css("display","none");
                location.href  = "/";
            },
            error:function(){
            	alert("error!");
            }
        });
	});
	
	
	
	
	
	$(".index-header-div .page-link .link-menu-div").mouseenter(function (){
		var $childs = $(this).find(".child-menu a");
		$childs.stop();
		showMenu($childs[0]);
	});
	$(".index-header-div .page-link .link-menu-div").mouseleave (function (){
		var $childs = $(this).find(".child-menu a");
		$childs.stop();
		$(this).find(".child-menu a").fadeOut(500);
	});
	
	$(".index-header-div .page-link .link-menu-div .child-menu a").fadeOut(0);
	$(".index-header-div .page-link .link-menu-div .child-menu").css("display","block");
	
	var showMenu = function(child){
		$(child).fadeIn(50,function (){
			var next = $(this).next();
			if(next.length > 0){
				showMenu(next);
			}
		});
	};
	
	
	
	
});