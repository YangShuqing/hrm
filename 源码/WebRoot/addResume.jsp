<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.buaa.hr.entity.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addResume.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript">

	function fun1(){
	
		if(confirm("确定增加吗？")){
		
			document.write("已成功添加！");
		}else{
		
			document.write("操作作已被取消！");
		}
	}

</script>
  
  <body>
  
	<table width="99%" height="25" border="0" align="center"
		cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
		<tr>
			<td width="17" background="Images/bj4.gif"><img
				src="Picture/r.gif" width="16" height="16" />
			</td>
			<td width="466" background="Images/bj4.gif">马云(超级管理员):你好！欢迎光临，您上次登录时间是：2015-09-20
				23:15:15</td>
			<td width="162" align="center" background="Images/bj4.gif"></td>
		</tr>
	</table>
	<table width="50%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height="5"></td>
		</tr>
	</table>
	<table width="99%" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="1%" align="left" background="Images/b2.jpg"><img
				src="Picture/b1.jpg" width="10" height="26" />
			</td>
			<td width="68%" background="Images/b2.jpg"><table width="174"
					border="0" align="left" cellpadding="0" cellspacing="0">
					<tr>
						<td width="20" align="left"><img src="Picture/tz.gif"
							width="10" height="16" />
						</td>
						<td width="154" align="left" class="biao">员工履历</td>
					</tr>
				</table>
			</td>
			<td width="31%" align="right" background="Images/b2.jpg"><img
				src="Picture/b3.jpg" width="9" height="26" />
			</td>
		</tr>
	</table>
  	
  		<%
  			Resume resume=(Resume)request.getAttribute("resume");
  		 %>
  	
  	<form action="/Hrm/resumeServlet?actionCode=add" method="post">
  		
  		<table width="99%" border="0" align="center" cellpadding="3"
		cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
  		<tr>
  			
  			<td width="16%" align="center" bgcolor="#EFFBFE">履历ID</td>
  			<td width="34%"align="center" bgcolor="#FFFFFF"><input type="text" name="resumeId"/></td>
  			<td width="16%"align="center" bgcolor="#EFFBFE"">学校</td>
  			<td width="34%"align="center" bgcolor="#FFFFFF"><input type="text" name="school"/></td>
  			
  		</tr>
  		<tr>
  		
  		<tr>
  			
  			<td align="center" bgcolor="#EFFBFE">员工ID</td>
  			<td width="34%"align="center" bgcolor="#FFFFFF" ><input type="text" name="empId"/></td>
  			<td width="16%"align="center" bgcolor="#EFFBFE">工作内容</td>
  			<td width="34%"align="center" bgcolor="#FFFFFF" ><input type="text" name="jobContent"/></td>
  			
  		</tr>
  		<tr>
  			
  			<td align="center" bgcolor="#EFFBFE">员工名字</td>
  			<td width="34%"align="center" bgcolor="#FFFFFF"><input type="text" name="empName"/></td>
  			<td width="16%"align="center" bgcolor="#EFFBFE">成绩</td>
  			<td width="34%"align="center" bgcolor="#FFFFFF"><input type="text" name="trainscore"/></td>
  			
  		</tr>
  		<tr>
  			
  			<td align="center" bgcolor="#EFFBFE">部门</td>
  			<td width="34%"align="center" bgcolor="#FFFFFF"><input type="text" name="deptId"/></td>
  			<td width="16%"align="center" bgcolor="#EFFBFE">开始日期</td>
  			<td width="34%"align="center" bgcolor="#FFFFFF"><input type="text" name="startDate" /></td>
  			
  		</tr>
  		<tr>
  			
  			<td align="center" bgcolor="#EFFBFE">工作</td>
  			<td width="34%"align="center" bgcolor="#FFFFFF"><input type="text" name="job"/></td>
  			<td width="16%"align="center" bgcolor="#EFFBFE">结束日期</td>
  			<td width="34%"align="center" bgcolor="#FFFFFF"><input type="text" name="endDate"/></td>
  			
  		</tr>
  		<tr>
    			<td align="center" bgcolor="#EFFBFE" colspan="4">
    				<input type="submit" value="确定" onClick="fun1()"/>
    				&nbsp;&nbsp;
    				<input type="button" value="返回" onClick="javascript: history.go(-1)"/>
    			</td>
    		</tr>
  	</table>
  		
    </form>
  	
  </body>
</html>
