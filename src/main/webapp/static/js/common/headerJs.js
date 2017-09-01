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
        if(data.username == ""){
            alert("Please input username");
            return;
        }else if(data.password == ""){
            alert("Please input password");
            return;
        }else if(data.checkword == ""){
            alert("Please input checkword");
            return;
        }
        var key;
        $.ajax({
            url: path+"/customer/getPublicKey",
            type: "get",
            dataType: "json",
            success: function (xhr) {
                RSAUtils.setMaxDigits(200);
                //setMaxDigits(256);
                key = new RSAUtils.getKeyPair(xhr.publicKeyExponent, "", xhr.publicKeyModulus);
                var reversedPwd = data.password.split("").reverse().join("");
                var encrypedPwd = RSAUtils.encryptedString(key,reversedPwd);
                data.password = encrypedPwd;
                $.ajax({
                    url:path+"/login",
                    type: "post",
                    dataType: "text",
                    data: data,
                    success: function (data) {
                        if(data=="success"){
                            location.href=path+"/";
                        }else{
                            alert(data);
                            $("#result-span").append(data);
                            $("#checkword-img").attr("src",path + "/verifyCode?date=" + new Date());
                        }

                    },
                    error:function(){
                        alert("error!");
                    }
                });
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
        $(this).find(".child-menu a").fadeOut(0);
    });

    $(".index-header-div .page-link .link-menu-div .child-menu a").fadeOut(0);
    $(".index-header-div .page-link .link-menu-div .child-menu").css("display","block");

    var showMenu = function(child){
        $(child).fadeIn(150,function (){
            var next = $(this).next();
            if(next.length > 0){
                showMenu(next);
            }
        });
    };

    $.ajax({
        url: path+"/customer/counts",
        type: "get",
        data: {},
        dataType: "json",
        success: function (data) {
            $("#number").html('Number：'+toThousands(data));
        },
        error: function (data) {
            alert(data);
        }
    })


    $(".index-header-div .page-link .link-menu-div .top-link").click(function (){

        $(".index-bg-div .shuffling-div").css("display","none");
        $(".index-bg-div .shuffling-div").removeClass("selected-shuffling");

        var title = $(this).attr("title");

        var $selected = $(".index-bg-div .shuffling-div[title=" + title + "]");

        $selected.css("display","block");
        $selected.addClass("selected-shuffling");

        if($selected.html().trim() == ""){
            $selected.load($selected.attr("page"));
        }
    });
});

function sendDownloadEmail(version) {
    $.ajax({
        url:path+"/sendDownloadEmail",
        type: "get",
        dataType: "text",
        data: {"version":version},
        success: function (data) {
            if(data=="success"){
                location.href=path +"/jsp/fdw/downloadSuccess.jsp";
            }
        },
        error:function(){
            alert("error!");
        }
    })
}

function loginCheck(version) {
    $.ajax({
        url:path+"/loginCheck",
        type: "get",
        dataType: "text",
        data: {},
        success: function (data) {
            if(data=="notLogin"){
                $(".login-div").css("display","block");
                $("#checkword-img").attr("src",path + "/verifyCode?date=" + new Date());
            }else if(data=="login"){
                if(version!=null&&version!=""){
                    sendDownloadEmail(version);
                }
                return true;
            }else{
                alert("Login state error!");
            }
            return false;
        }
    });
}

function toThousands(num) {
    var num = (num || 0).toString(), result = '';
    while (num.length > 3) {
        result = ',' + num.slice(-3) + result;
        num = num.slice(0, num.length - 3);
    }
    if (num) { result = num + result; }
    return result;
}

function feedback() {
    $.ajax({
        url:path+"/loginCheck",
        type: "get",
        dataType: "text",
        data: {},
        success: function (data) {
            if(data=="notLogin"){
                $(".login-div").css("display","block");
                $("#checkword-img").attr("src",path + "/verifyCode?date=" + new Date());
            }else if(data=="login"){
                location.href=path+"/jsp/fdw/bugs.jsp";
            }else{
                alert("Login state error!");
            }
        }
    });
}


