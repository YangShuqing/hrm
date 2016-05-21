<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	response.setHeader("Content-disposition",
			"attachment; filename=EmpList.xls");
	response.setHeader("Pragma", "");
	response.setHeader("Cache-Control", "");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人员信息导出</title>

<style>
/*表格有边框*/
table, th, td {
	border: 1px solid #000;
}
/*表格中的文字上下左右居中*/
td {
	text-align: center;
	vertical-align: middle;
}

/*为了解决导出身份证时候，显示科学记数形式*/
td {
	mso-number-format: '\@';
}
</style>
</head>
<body>

	<table>
		<thead>
			<tr>
				<td>员工id</td>
				<td>姓名</td>
				<td>性别</td>
				<td>学校</td>
				<td>部门</td>
				<td>职务</td>
				<td>状态</td>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${empList}" var="user" varStatus="status">
				<tr>
					<td>${emp.empid}</td>
					<td>${user.empName}</td>
					<td>${user.empSex}</td>
					<td>${user.school}</td>
					<td>${user.deptId}</td>
					<td>${user.ranks}</td>
					<td>${user.state}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>