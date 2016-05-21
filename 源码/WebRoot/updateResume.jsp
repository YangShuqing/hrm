<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@page import="com.buaa.hr.entity.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateResume.jsp' starting page</title>
    
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
		Resume resume=(Resume)request.getAttribute("resume");
	 %>
   <form action="/Hrm/ResumeServlet?actionCode=update" method="post">
   
   	<table>
  		<tr>
  			
  			<td>ID</td>
  			<td>
  				<input type="text" name="员工名字"value="<%=resume.getEmpId() %>"/>
  			
  			</td>
  			
  		</tr>
  		<tr>
  			
  			<td>员工名字</td>
  			<td><input type="text" name="员工名字"value="<%=resume.getEmpName() %>"/></td>
  			
  		</tr>
  		<tr>
  			
  			<td>部门编号</td>
  			<td><input type="text" name="部门编号"value="<%=resume.getDeptId() %>"/></td>
  			
  		</tr>
  		<tr>
  			
  			<td>工作</td>
  			<td><input type="text" name="工作" value="<%=resume.getJob() %>"/></td>
  			
  		</tr>
  		<tr>
  			
  			<td>学校</td>
  			<td><input type="text" name="学校"value="<%=resume.getSchool() %>"/></td>
  			
  		</tr>
  		<tr>
  			
  			<td>工作内容</td>
  			<td><input type="text" name="工作内容"value="<%=resume.getJobContent() %>"/></td>
  			
  		</tr>
  		<tr>
  			
  			<td>成绩</td>
  			<td><input type="text" name="成绩"value="<%=resume.getTrainscore()%>"/></td>
  			
  		</tr>
  		<tr>
  			
  			<td>开始日期</td>
  			<td><input type="text" name="开始日期"value="<%=resume.getStartDate() %>"/></td>
  			
  		</tr>
  		<tr>
  			
  			<td>结束日期</td>
  			<td><input type="text" name="结束日期" value="<%=resume.getEndDate()%>"/></td>
  			
  		</tr>
  		<tr>
    			<td>
    				<input type="submit" value="确定"/>
    			</td>
    			<td>
    				<input type="button" value="返回" onclick="javascript: history.go(-1)"/>
    			</td>
    		</tr>
  	</table>
  	</form>
  </body>
</html>
