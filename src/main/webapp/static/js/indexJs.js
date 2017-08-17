$(function (){
	$(".index-bg-div .shuffling-div").css("display","none");
	$(".index-bg-div .shuffling-div:first").css("display","block");
	$(".index-bg-div .shuffling-div:first").addClass("selected-shuffling");
	
	$(".index-bg-div .choice-div .next-btn").click(function (){
		var $current = $(".index-bg-div .selected-shuffling");
		
		$(".index-bg-div .shuffling-div").removeClass("selected-shuffling");
		
		var $next = $current.next(".shuffling-div");
		
		if($next.length == 0){
			$next = $($(".index-bg-div .shuffling-div")[0]);
		}
		
		$next.addClass("selected-shuffling");
		$(".index-bg-div .shuffling-div").css("display","none");
		$next.css("display","block");
		if($next.html().trim() == ""){
			$next.load($next.attr("page"));
		}
		
	});
	$(".index-bg-div .choice-div .prev-btn").click(function (){
		var $current = $(".index-bg-div .selected-shuffling");
		
		$(".index-bg-div .shuffling-div").removeClass("selected-shuffling");
		
		var $prev = $current.prev(".shuffling-div");
		if($prev.length == 0){
			$prev = $($(".index-bg-div .shuffling-div")[$(".index-bg-div .shuffling-div").length - 1]);
		}
		
		$prev.addClass("selected-shuffling");
		$(".index-bg-div .shuffling-div").css("display","none");
		$prev.css("display","block");
		if($prev.html().trim() == ""){
			$prev.load($prev.attr("page"));
		}
	});
	
	
	
});