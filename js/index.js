// JavaScript Document
	
$(function() {
	$("#member_intro a").mouseover(function (){
		$(this).next().slideUp("fast");
	});
	$("#member_intro a").mouseout(function (){
		$(this).next().slideDown("fast");
	});
});