
$(document).ready(function(){
	$("input").focus(function(){
		$(this).parent().addClass("curFocus")
	});
	$("input").blur(function(){
		$(this).parent().removeClass("curFocus")
	});
});