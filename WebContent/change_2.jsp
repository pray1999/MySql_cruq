<%@ page language="java" import="java.util.*,vo.*,dao.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改信息</title>
    
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
    <%request.setCharacterEncoding("UTF-8"); %>
    <h4>修改的用户ID是</h4>
    <jsp:useBean id="c" class="vo.User" scope="request"/>
    <jsp:setProperty name="c" property="userid"/>
    用户ID：<jsp:getProperty name="c" property="userid"/><br>
     <jsp:useBean id="d" class="dao.UserDao" scope="request"/>
     <%
     int i;
     String userid=request.getParameter("userid");
     List<User>  list=d.QuetyAll();
     for(i=0;i<list.size();i++)
     {
     	if(userid.equals(list.get(i).getUserid()))
     	{
     		%>
     		 <form action="change_3.jsp" method="post">
	   		<table border="0" width="250" height="200">
	   		<tr><td>用户ID：</td><td><input name="userid" value=<%=list.get(i).getUserid()%>>（无法改动！）</td></tr>
	   		<tr><td>用户名：</td><td><input name="username" value=<%=list.get(i).getUsername()%>></td></tr>
	   		<tr><td>性别：</td><td><input name="sex" value=<%=list.get(i).getSex()%>></td></tr>
	   		<tr align="center">
	   			<td colspan="1">
	   			<input type="submit" value="提  交">&nbsp;&nbsp;&nbsp;&nbsp;
	   			<input type="reset" value="取  消">
	   			</td>
	   		</tr>
	   	</table>
	   </form>
     		<%     	
     	}else{%><%out.print(" 没有找到合适条件的记录！！") ;%>
     	<%break;}
     }	
      %>
      
        <br><br><br><br>
   <p>点击<a href="index.jsp">返回</a></p>
     
  </body>
</html>
