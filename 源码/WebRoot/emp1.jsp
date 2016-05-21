<%@ page language="java" import="java.util.*,java.sql.*,com.buaa.hr.manager.impl.*,com.buaa.hr.controller.*,com.buaa.hr.entity.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'wel.jsp' starting page</title>
    
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

    <%
    		//定义一个页显示几条记录
    		int pageSize=10;
	  		
	  		
	  		
			//调用UserBeanCl的方法(创建一个USserBeanCl实例，调用该实例的方法) ，完成分页功能
			
			//要显示的用户信息从request中取
			//ArrayList al=(ArrayList)request.getAttribute("result");
			List allemp = (List) request.getAttribute("allemp");
	   		//显示
	   		%>
	   			<table border="1">
	   			<tr><th>id</th><th>name</th>
	   			<%
	   				for(int i=0; i<allemp.size(); i++)
	   				{
	   					//从al中取出UserBean
	   					Employee emp = (Employee) allemp.get(i);
						%>
							<tr><td><%=emp.getEmpId()%></td><td><%=emp.getEmpName()%></td></tr>
						<%
		   			}
	   				
	   			 %>
	   			</table>
	   			
	   			
	   		<%
	   		
	   		//从request 中取出pageNow
	   		int pageNow=Integer.parseInt((String)request.getAttribute("pageNow"));
	   		
	   		//上一页
			if(pageNow!=1){
			out.println("<a href=empServlet2?pageNow="+(pageNow-1)+">上一页</a>");
			}
			
			//得到pageCount
			String s_pageCount=(String)request.getAttribute("pageCount");
			int pageCount=Integer.parseInt(s_pageCount);
			
			if(pageNow<=pageCount-pageSize){
				
				//显示超链接
				for(int i=pageNow; i<=pageNow+pageSize; i++)
				{
					out.println("<a href=empServlet2?pageNow="+i+">"+i+"</a>");
				}
			}else
			{
				//显示超链接
				for(int i=pageNow; i<=pageCount; i++)
				{
					out.println("<a href=empServlet2?pageNow="+i+">"+i+"</a>");
				}
			}
	
			//下一页
			if(pageNow<pageCount)
			out.println("<a href=empServlet2?pageNow="+(pageNow+1)+">下一页 </a>"); 				
     %>
    
  </body>
</html>