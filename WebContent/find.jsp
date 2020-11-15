<%@ page language="java" import="java.util.*,vo.*,dao.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'find.jsp' starting page</title>
    
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
      请按照查询条件
     </center><hr width="100%" size="3">
    <form action="find_2.jsp" method="post">
    	<table border="0" width="238" height="100" align="center">
    		<tr>
    		<td>用户ID：<input type="text"  name="userid"></td>
    		</tr>
    		<tr align="center">
    		<td colspan="2">
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		<input type="submit" value="提  交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    		<input type="reset" value="取  消">
    		</td>
    		</tr>
    		</table>
    </form>
  </body>
</html>
