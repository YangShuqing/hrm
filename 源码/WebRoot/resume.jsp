<%@ page import="java.util.*"%>
<%@page import="com.buaa.hr.entity.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<link  href="Css/layout.css" rel="stylesheet" type="text/css" />
<link href="Css/cb.css" rel="stylesheet" type="text/css"   />
<link  href="Css/n.css" rel="stylesheet" type="text/css" />
<style>
.biankuangs{ border:solid #A6D2FF 1px; border-top:0px;   }
#xueke,#item_text2,#item_text1,#itemtypes2,#item_text3{ /**/display:none;}
</style> 
<!--<style>
.biankuangs {
	border: solid #A6D2FF 1px;
	border-top: 0px;
}

#xueke,#item_text2,#item_text1,#itemtypes2,#item_text3 { /**/
	display: none;
}
</style>
--><script type="text/javascript">

	function fun1(){
	
		if(confirm("确定删除吗？")){
		
			document.write("成功删除！");
		}else{
		
			document.write("操作取消！");
		}
	}

</script>

</head>
<html>
<body>
	<!--<form action="/Hrm/resumeServlet?actionCode=printAllResume" method="post">
  		
  			-->
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

	<table width="99%" border="0" align="center" cellpadding="3"
		cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">

		<tr>
			<td align="center" bgcolor="#EFFBFE">履历编号</td>
			<td align="center" bgcolor="#EFFBFE">员工编号</td>
			<td align="center" bgcolor="#EFFBFE">员工名字</td>
			<td align="center" bgcolor="#EFFBFE">部门</td>
			<td align="center" bgcolor="#EFFBFE">工作</td>
			<td align="center" bgcolor="#EFFBFE">学校</td>
			<td align="center" bgcolor="#EFFBFE">工作内容</td>
			<td align="center" bgcolor="#EFFBFE">成绩</td>
			<td align="center" bgcolor="#EFFBFE">开始日期</td>
			<td align="center" bgcolor="#EFFBFE">结束日期</td>
			<td align="center" bgcolor="#EFFBFE" colspan="3">操作</td>
		</tr>
		<%
			List resumes = (List) request.getAttribute("resumes");

			for (int i = 0; i < resumes.size(); i++) {

				Resume resume = (Resume) resumes.get(i);
		%>
		<tr>
			
			<td align="center" bgcolor="#FFFFFF"><%=resume.getResumeid() %></td>
			<td width="5%" height="25" align="center" bgcolor="#FFFFFF"><%=resume.getEmpId()%></td>
			<td align="center" bgcolor="#FFFFFF"><%=resume.getEmpName()%></td>
			<td align="center" bgcolor="#FFFFFF">
			<%    int deptId=resume.getDeptId();
					if(deptId==1){
					out.println("产品部");
					}else if(deptId==2){
					out.println("技术部");
					}else if(deptId==3){
					out.println("运营部");
					}else if(deptId==4){
					out.println("市场部");
					}else if(deptId==5){
					out.println("财务部");
					}else if(deptId==6){
					out.println("行政部");
					}else if(deptId==7){
					out.println("人事部");
					}else {
					out.println("部门无效");
					}
			
			%></td>
			<td align="center" bgcolor="#FFFFFF"><%=resume.getJob()%></td>
			<td align="center" bgcolor="#FFFFFF"><%=resume.getSchool()==null?"":resume.getSchool()%></td>
			<td align="center" bgcolor="#FFFFFF"><%=resume.getJobContent()%></td>
			<td align="center" bgcolor="#FFFFFF"><%=resume.getTrainscore()%></td>
			<td align="center" bgcolor="#FFFFFF"><%=resume.getStartDate()==null?" ":resume.getStartDate()%></td>
			<td align="center" bgcolor="#FFFFFF"><%=resume.getEndDate()==null?"":resume.getEndDate()%></td>
		  	<td align="center" bgcolor="#FFFFFF"><a href="/Hrm/resumeServlet?actionCode=update">编辑</a></td>
		  	 <td align="center" bgcolor="#FFFFFF" onclick="fun1()"><a href="/Hrm/resumeServlet?actionCode=delete&empId=<%=resume.getResumeid()%>">删除</a><td>
		</tr>
		<%
			}
		%>
		<tr>
			<td height="25" bgcolor="#FFFFFF">&nbsp;</td>
			<td colspan="7" bgcolor="#FFFFFF">&nbsp; <span class='pagelink'><</span>
				<span class='pagelink'><<</span> <a class='pagelink'
				href='http://zcysysb.sdu.edu.cn:4500/sdxmmanage/teacher/applylistxmlb.php?NowPage=1'><font
					color=green>[1]</font>
			</a> <span class='pagelink'>>></span> <span class='pagelink'>></span>
				转到第&nbsp;<input id='JumpSelect' type='text' size='2' value='1'
				onBlur="javascript:if(isNaN(parseInt(this.value)) || parseInt(this.value) > 1){alert('您输入的数字只能在 1 ～ 1之间，请重新输入'); return false;}location.href='http://zcysysb.sdu.edu.cn:4500/sdxmmanage/teacher/applylistxmlb.php?NowPage='+parseInt(this.value)"
				title='鼠标外部单击，文章转向'> 页</td>
			<td bgcolor="#FFFFFF" colspan="5"><form id="form2" name="form2"
					method="get" action="">
					 <a href="/Hrm/addResume.jsp">增加员工 </a>
				</form></td>
		</tr>

	</table>

	<!--</form>
  	
  	-->
</body>

</html>

