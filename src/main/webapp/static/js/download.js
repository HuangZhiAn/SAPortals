$(function (){
/*		$(".downloadMiddleIntroductionsProduct").each(function(){
			$(this).mouseenter(function(){
				obj=$(this).children("a").children("div").first();
				obj1=$(this).children("a").children("div").last();
				obj.stop();
				obj1.fadeOut(500,function(){
					obj1.stop();
					obj.fadeIn(500)
				});
			})
			
			$(this).mouseleave(function(){
				obj=$(this).children("a").children("div").first();
				obj1=$(this).children("a").children("div").last();
				obj.stop();
				obj.fadeOut(500,function(){
					obj1.stop();
					obj1.fadeIn(500);
				});
			})
		})*/

		$(".downloadMiddleIntroductionsProduct > a").mouseenter(function (){
			var obj = $(this).children("div").first();
			var obj1 = $(this).children("div").last();
			obj.stop(true);
			obj1.stop(true);
			obj.fadeOut(0);
			obj1.fadeOut(500,function(){
				obj.fadeIn(500)
			});
		});
		
		$(".downloadMiddleIntroductionsProduct > a").mouseleave(function (){
			var obj=$(this).children("div").first();
			var obj1=$(this).children("div").last();
			obj.stop(true);
			obj1.stop(true);
			obj1.fadeOut(0);
			obj.fadeOut(500,function(){
				obj1.fadeIn(500);
			});
		});
		$(".downloadOthersProductIntroduction").find("a").mouseenter(function (){
			
			$(this).stop(true)
			$(this).animate({height:'190',width:'330'},500);
			
			
			
		});
		$(".downloadOthersProductIntroduction").find("a").mouseleave(function (){
			$(this).stop(true)
			$(this).animate({height:'170',width:'300'},500);
			
			
			
		});
})
	
