$(function (){
	$(".index-bg-div .shuffling-div").css("display","none");
	$(".index-bg-div .shuffling-div:first").css("display","block");
	$(".index-bg-div .shuffling-div:first").addClass("selected-shuffling");
	
	
	$(".index-bg-div .choice-div").mouseenter(function (){
		$(".index-bg-div .choice-div a").stop();
		$(".index-bg-div .choice-div a").fadeIn(1000);
	});
	$(".index-bg-div .choice-div").mouseleave (function (){
		$(".index-bg-div .choice-div a").stop();
		$(".index-bg-div .choice-div a").fadeOut(1000);
	});
	$(".index-bg-div .choice-div a").fadeOut(3000);
	
	
	$(".index-bg-div .choice-div .next-btn").click(function (){
		$(".index-bg-div .shuffling-div").stop();
		
		var $current = $(".index-bg-div .selected-shuffling");
		
		$(".index-bg-div .shuffling-div").removeClass("selected-shuffling");
		
		var $next = $current.next(".shuffling-div");
		
		if($next.length == 0){
			$next = $($(".index-bg-div .shuffling-div")[0]);
		}
		$(".index-bg-div .shuffling-div").fadeOut(500);
		$next.addClass("selected-shuffling");
		$next.fadeIn(500);
	});
	$(".index-bg-div .choice-div .prev-btn").click(function (){
		$(".index-bg-div .shuffling-div").stop();
		
		var $current = $(".index-bg-div .selected-shuffling");
		
		$(".index-bg-div .shuffling-div").removeClass("selected-shuffling");
		
		var $prev = $current.prev(".shuffling-div");
		if($prev.length == 0){
			$prev = $($(".index-bg-div .shuffling-div")[$(".index-bg-div .shuffling-div").length - 1]);
		}
		
		$(".index-bg-div .shuffling-div").fadeOut(500);
		$prev.addClass("selected-shuffling");
		$prev.fadeIn(500);
	});
	
	
	
});