<%@ page language="java" import="java.util.*,vo.*,dao.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'find_2.jsp' starting page</title>
    
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
  <h4>显示搜索的用户如下</h4>
    <jsp:useBean id="c" class="vo.User" scope="request"/>
    <jsp:setProperty name="c" property="userid"/>
    <jsp:useBean id="d" class="dao.UserDao" scope="request"/>
     <table border="2" bgcolor="ccceee" width="350">
     <tr bgcolor="cccccc" align="center">
	    	<td>用户ID</td>
		    <td>用户名</td>
		    <td>性别</td>
	    </tr> 
	   		<tr  align="center">
		   		<td><%=d.findUserById(c.getUserid()).getUserid() %></td>
		   		<td><%=d.findUserById(c.getUserid()).getUsername() %></td>
				<td><%=d.findUserById(c.getUserid()).getSex() %></td>
			</tr>
	   	</table>
	   	<%
 	  	List<User> list=d.QuetyAll();
     %>
     <h4>所有用户信息如下：</h4>
	    <table border="2" bgcolor="ccceee" width="650">
	    <tr bgcolor="cccccc" align="center">
	    	<td>用户ID</td>
		    <td>用户名</td>
		    <td>性别</td>
	    </tr> 
	    <%for(int i=0;i<list.size();i++){ %>
	    <tr align="center">
	    		<td><%=list.get(i).getUserid() %></td>
	     		<td><%=list.get(i).getUsername() %></td>
	     		<td><%=list.get(i).getSex() %></td>
	    </tr>
	    <%} %>
	    </table>
      <br><br><br><br>
   <p>点击<a href="index.jsp">返回</a></p>
  </body>
</html>
