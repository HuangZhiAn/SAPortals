$(function (){	
	
	/*var contents = $(".index-div .content-div");

	$(window).scroll(function(){
    	var y = $(this).scrollTop();
    	
    	for(var i in contents){
    		var $content = $(contents[i]);
	    	if(y + $(window).outerHeight() > $content.offset().top){
	    		var move = 200 + (y + $(window).outerHeight() - $content.offset().top) * 0.92 - $content.outerHeight();
	    		$content.find(".bg-div img").css("marginTop",move + "px");
	    	}
    	}
    });*/
    
});

function sendDownloadEmail() {
	$.ajax({
        url:path+"/sendDownloadEmail",
        type: "get",
        dataType: "text",
        data: {},
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

function loginCheck() {
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
                sendDownloadEmail();
            }else{
            	alert("Login state error!");
			}
        },
        error:function(data){
            alert("error: "+data);
        }
    });
}