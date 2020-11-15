<%@ page language="java" import="java.util.*,dao.*,vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <center>
    根据用户ID修改信息<hr width="100%" size="3">
    <form action="change_2.jsp" method="post">
    <br>
    	用户ID：<input type="text"  name="userid"><br><br><br>
    	
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="submit" value="确  定">
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="取  消">
    </form>
</center>
  </body>
</html>
