$(function (){
	$(".content-div .register-div .form-table .send-btn").click(function (){
		$.ajax({
			url: path + "/customer/sendRegisterEmail",
			type: "get",
			dataType: "json",
			data: {
				"email": $("#email").val()
			},
			success: function (data) {
				if(data=="success"){
					alert("验证邮件已发送，请检查邮箱获取");
				}else{
					alert(data);
				}
            },
			error: function (data) {
				alert(data);
            }
		});
	});

	$("#name").blur(function () {
        $.ajax({
            url: path + "/customer/usernameExist",
            type: "get",
            dataType: "json",
            data: {
                "username": $("#name").val()
            },
            success: function (data) {
                if(data=="exist"){
                    alert("Username is exist!");
                }
            },
            error: function (data) {
                alert(data);
            }
        });
    });

	var viewModel = kendo.observable({
		"name": "",
        email: "",
        password: "",
        re_password: "",
        code: ""
    });
    kendo.bind($("#form-table"), viewModel);

    var validator = $("#form-table").kendoValidator({
		rules : {
			re_password : function(input) {
				if (input.is("[name=re_password]")) {
					return viewModel.password == viewModel.re_password;
		        }else{
		        	return true;
		        }
			}
		},
		messages : {
			requireRule : "This "
		}
    }).data("kendoValidator");


    $(".content-div .register-div .form-table .sign-up-now").click(function (){
        if(!$("#check")[0].checked){
            alert("Please check the checkbox.");
            return;
        }
        var data = viewModel.toJSON();
        data["_csrf"]=$("#_csrf").val();
        $.ajax({
            url: path + "/customer/register",
            type: "post",
            dataType: "json",
            data: data,
            success: function (data) {
                if(data=="success"){
                    location.href=path + "/";
                }else{
                    var check = confirm(data);
                    if(check) window.location.href="/jsp/register.jsp";
                }
            },
            error: function (data) {
                alert(data);
            }
        });

    });
});