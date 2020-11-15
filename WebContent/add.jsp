<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
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
    <h3 align="center">信息填写</h3>
   <form action="add_2.jsp" method="post">
    	<table style="border:1px solid gray" width="250" height="300" align="center">
    		<tr align="center"><td>用户ID：</td><td ><input  name="userid"></td></tr>
    		<tr align="center"><td>用户名：</td><td><input  name="username"></td></tr>
    		<tr align="center"><td>性别：</td><td><input  name="sex"></td></tr>
    		<tr align="center">
    		<td colspan="4">
    		<input type="submit" value="提  交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		<input type="reset" value="取  消">
    		</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
