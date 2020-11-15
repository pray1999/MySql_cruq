<%@ page language="java" import="java.util.*,vo.*,dao.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delete.jsp' starting page</title>
    
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
 	 删除信息
  </center>
   <hr width="100%" size="3">
    <br><br>
    <center>
    <form action="delete_2.jsp" method="post">
    	用户ID：<input type="text" name="userid"><br><br>
    	<input type="submit" value="删  除" name="yes">&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="取  消">
    </form>
</center>
  </body>
</html>
