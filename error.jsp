<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html  xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>"></base>
    
	<title>500错误页面</title>
	<link href="css/error_500.css" rel="stylesheet" type="text/css" />
  </head>

<body>
  <div id="all">
    <div id="head"><h1>Error:500!</h1></div>
    <div id="content">
	  <div id="container1">
	    <div id="content-left"><img src="images/500_img.png"/></div>
	    <div id="content-right">
	      <div><p id="p1">PAGE&nbsp;&nbsp;500</p></div>
		  <div><p id="p2">NOT&nbsp;FOUND!</p></div>
		  <div><p id="p3">遇到错误啦，请返回</p></div>
	    </div>
	  </div>
	  <div id="container2">
	    <div id="container-div1"><a href="index.jsp">回到首页-&#8250;</a></div>
        <div id="container-div2"><a href="javascript:void(0)">反馈问题-&#8250;</a></div>
		<div>
		  <p>服务器可能病了，正在医院打点滴呢！请返回等待信息</p>
		  <ul>
		    <li>不要返回吗？</li>
			<li>确定不返回吗？</li>
			<li>真的真的确定要返回吗？</li>
			<li>好吧，还是谁便你要不要返回吧！</li>
		  </ul>
		</div>
	  </div>
	</div>
    <div id="footer">
	  <p>地址：经济管理学院实验中学2306室</p>
	  <p>Copyright&reg;极客网工作室</p>
	</div>
  </div>
</body>
</html>
