
$(function(){
    /*var viewModel = kendo.observable({
        username: "",
        password: "",
        _csrf: $("#_csrf").val()
    });
    kendo.bind($("#login-form"), viewModel);
    
    $(".login-body .login-form .form-container .submit-div .submit-btn").click(function (){
        $.ajaxSetup({
            headers : {
                "X-CSRF-TOKEN" : $("#_csrf").val()
            }
        });
        if(!validator.validate()){
			return;
		}
    	var data = viewModel.toJSON();
    	data.password = hex_md5(data.password);
		$.ajax({
            url:"http://10.211.98.5:8080/login",
            type: "post",
            dataType: "text",
            data: data,
            success: function (data) {
            	alert("ok")
            },
            error:function(data){
            	alert("error!");
            }
        });
	});*/
    $("#checkword-img").click(function (){
        $("#checkword-img").attr("src",path + "/verifyCode?date=" + new Date());
    });

});

function loginClick() {
/*    var validator = $("#login-form").kendoValidator({}).data("kendoValidator");
    if(!validator.validate()){
        return;
    }*/
    var key;
    $.ajax({
        url: path+"/customer/getPublicKey",
        type: "get",
        dataType: "json",
        success: function (data) {
            RSAUtils.setMaxDigits(200);
            //setMaxDigits(256);
            key = new RSAUtils.getKeyPair(data.publicKeyExponent, "", data.publicKeyModulus);
            var reversedPwd = $("#password").val().split("").reverse().join("");
            var encrypedPwd = RSAUtils.encryptedString(key,reversedPwd);
            $("#password").val(encrypedPwd);
            $("#loginForm").ajaxSubmit({
                dataType: "json",
                success: function(data){
                    if(data=="success"){
                        location.href="index.jsp";
                    }else{
                        alert(data);
                        $("#result-span").append(data);
                        $("#checkword-img").attr("src",path + "/verifyCode?date=" + new Date());
                    }
                }
            });
        }
    });

}

