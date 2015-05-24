<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html  xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>"></base>
    
    <title>后台管理登录</title>
	<link href="css/login.css" rel="stylesheet" type="text/css" />
	<script src="js/login.js" type="text/javascript"></script>
  </head>
<body>
<div id="body">
	<div id="contian">
	   <div id="check"><s:fielderror name="loginFailed"></s:fielderror></div>
	   <form action="loginCheck" method="post" onsubmit="return sure()" >
       <div id="username">  用户名：<input type="text" name="manager.name"  id="username1"style="width:163px"/></div>
       <div id="password">密&nbsp;&nbsp;码：<input type="password" name="manager.password" id="password1" style="width:163px"/></div><br />
	   <div id="button">
       		<div id="button1"><input type="submit"  value="确定" style="background:url(images/button.png);border:none;width:68px;height:25px" /></div> 
		 	<div id="button2"><input type="reset"  value="重置" style="background:url(images/button.png);border:none;width:68px;height:25px"/></div>
		</div>
		</form>
	 </div>
	<div id="footer">
		<div id="footer1">
 			<ul>
		  		<li><a href="friendlylink.html">友情链接</a></li>
		  		<li><a href="advice.html">意见反馈</a></li>
		  		<li><a href="team.jsp">关于我们</a></li>
		  		<li><a href="javascript:;">加入我们</a></li>
			</ul>
		</div>
		<div id="address">地址：经济管理学院实验中心2306室</div>
		<div id="footer2">版权：copyright&reg;极客网工作室</div>
	</div>
</div>
</body>
</html>
