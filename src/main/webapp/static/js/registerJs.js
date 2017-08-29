$(function (){
	$(".content-div .register-div .form-table .send-btn").click(function (){
		alert("ok");
	});
	$(".content-div .register-div .form-table .sign-up-now").click(function (){
		if(!$("#check")[0].checked){
			alert("Please check the checkbox.");
			return;
		}
		var data = viewModel.toJSON();
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
});