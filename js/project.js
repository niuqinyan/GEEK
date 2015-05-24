// JavaScript Document
/*****用ajax获取数据*****/
var JSON;
var PAGE;
var ROWS;
$(function() {
	
	$.ajax({
		  type:"post",
		  url:"project.json",
		  contentType:"application/jso",
		  success:function(response){
			  var obj = response;
			  PAGE=Math.ceil(obj.total/9);
			  ROWS=obj.rows;
			  for(var i=1;i<=PAGE;i++){
				  $(".projectShow_a").append("<span>"+i+"</span>");
			  }
			  $(".projectShow_a span:eq(0)").css("border","1px solid red");
			  $(".projectShow_a span").click(function() {
					var cureentPage = $(this).text();
					goPage(cureentPage);
					$(this).css("border","1px solid red");
					$(".projectShow_a span").not($(this)).css("border","1px solid #999");
			  });
			  goPage(1);
			  
		  },
		  error:function() {
			alert("fail");
		  }
			  
	});  
    	
 		
	function goPage(page) {
		var start=(page-1)*9;
		var end=start+9;
		$("#projectShow ul").empty();
		for(start;start<end&&start<ROWS.length;start++){
			$("#projectShow ul").append("<li><img src=\"images\/project/"+ROWS[start].imgUrl+"\"/><a href=\""+ROWS[start].href+"\">"+ROWS[start].projectName+"</a></li>");
		}
		/*****样式设置*****/	
	
		$("#projectShow li:odd a").css({
						"filter":"alpha(opacity=50)",
						"opacity":0.5
						});
		$("#projectShow li:even a").css({
						"filter":"alpha(opacity=90)",
						"opacity":0.9
						});
		$("#projectShow img").hide();
		$("#projectShow li a").hover(function() {
			$(this).css({
				    "filter":"alpha(opacity=0)",
				    "opacity":0.0
				    });
			$(this).prev().fadeIn("slow");
			},function() {
				$("#projectShow li:odd a").css({
						"filter":"alpha(opacity=50)",
						"opacity":0.5
						});
		      		$("#projectShow li:even a").css({
						"filter":"alpha(opacity=90)",
						"opacity":0.9
						});
				$("#projectShow img").fadeOut("slow");
		       });
       }
	
});

 
