<%@page import="java.util.*"%>
<%@page import="com.buaa.hr.entity.*" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<title>部门信息</title>
</head>

<body>
	<center>
		<h2>部门信息</h2>
	
		<table width="500" border="1">
			<tr>
				<td>部门ID</td>
				<td>部门名称</td>
				<td>部门等级</td>
				<td>上级部门id</td>
				<td>操作</td>
				<td>操作</td>
				
			</tr>
			<%
				List depts = (List) request.getAttribute("depts");
				for (int i = 0; i < depts.size(); i++) {
					Dept dept = (Dept) depts.get(i);
			%>
			<tr>
				<td><%=dept.getDeptId()%></td>
				<td><%=dept.getDeptName()%></td>
				<td><%=dept.getDeptLevel()%></td>
				<td><%=dept.getSuperiorDeptId()%></td>
				<td>
					<a href="#">Del</a>
				</td>
				<td>
					<a href="#">修改</a>
				</td>
			</tr>
			<%
				}
			%>
		</table>
	</center>
</body>
</html>