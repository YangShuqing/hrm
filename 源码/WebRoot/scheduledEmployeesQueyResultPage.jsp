<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.buaa.hr.entity.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script type="text/javascript">
	function pdfwrite(){
		location.href = "/Hrm/pdfWriteServlet?actioncode=pdf";
	}
</script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>人事调动信息查询</title>

		<link href="Css/layout.css" rel="stylesheet" type="text/css" />
		<link href="Css/cb.css" rel="stylesheet" type="text/css" />
		<link href="Css/n.css" rel="stylesheet" type="text/css" />
		<style>
.biankuangs {
	border: solid #A6D2FF 1px;
	border-top: 0px;
}

#xueke,#item_text2,#item_text1,#itemtypes2,#item_text3 { /**/
	display: none;
}
</style>
		<script type="text/javascript" src="Scripts/base.js">
</script>
		<script>
function change_itemtypes(name) {
	document.getElementById("itemtypes2").value = "";
	document.getElementById("xueke").value = "";
	if (name == 2) {
		document.getElementById("itemtypes2").style.display = "block";
		document.getElementById("item_text1").style.display = "block";
		//document.getElementById("xueke").style.display="block";
	} else {
		document.getElementById("itemtypes2").style.display = "none";
		document.getElementById("xueke").style.display = "none";
		document.getElementById("item_text1").style.display = "none";
		document.getElementById("item_text2").style.display = "none";
	}

}

function change_itemtypes2(name) {
	document.getElementById("types2").value = "";
	document.getElementById("types3").value = "";
	if (name == '1') {
		document.getElementById("item_text2").style.display = "block";

		document.getElementById("item_text3").style.display = "none";

	} else if (name == '3') {

		document.getElementById("item_text2").style.display = "none";
		document.getElementById("item_text3").style.display = "block";
	} else {

		document.getElementById("item_text2").style.display = "none";
		document.getElementById("item_text3").style.display = "none";
	}
}
</script>
	</head>

	<body>
		<table width="99%" height="25" border="0" align="center"
			cellpadding="0" cellspacing="0" style="margin-bottom: 4px;">
			<tr>
				<td width="17" background="Images/bj4.gif">
					<img src="Picture/r.gif" width="16" height="16" />
				</td>
				<td width="466" background="Images/bj4.gif">
					Admin(超级管理员)你好！欢迎光临，您上次登录时间是：2015-09-20 23:15:15
				</td>
				<td width="162" align="center" background="Images/bj4.gif">

				</td>
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
				<td width="1%" align="left" background="Images/b2.jpg">
					<img src="Picture/b1.jpg" width="10" height="26" />
				</td>
				<td width="68%" background="Images/b2.jpg">
					<table width="174" border="0" align="left" cellpadding="0"
						cellspacing="0">
						<tr>
							<td width="20" align="left">
								<img src="Picture/tz.gif" width="10" height="16" />
							</td>
							<td width="154" align="left" class="biao">
								人事调动信息记录表
							</td>
						</tr>
					</table>
				</td>
				<td width="31%" align="right" background="Images/b2.jpg">
					<img src="Picture/b3.jpg" width="9" height="26" />
				</td>
			</tr>
		</table>
		<table width="99%" border="0" align="center" cellpadding="3"
			cellspacing="1" bgcolor="#AEDEF4" style="border: 1px solid #AEDEF4">
			<tr>
				<td width="5%" height="25" align="center" bgcolor="#EFFBFE">
					员工ID
				</td>
				<td align="center" bgcolor="#EFFBFE">
					姓名
				</td>
				<td  align="center" bgcolor="#EFFBFE">
					性别
				</td>
				
				<td align="center" bgcolor="#EFFBFE">
					调动时间
				</td>
				<td align="center" bgcolor="#EFFBFE">
					调动前部门
				</td>
				<td align="center" bgcolor="#EFFBFE">
					现任部门
				</td>
				
				
			</tr>
			<%  List empList = (List)request.getAttribute("empList");
			for(int i=0;i<empList.size();i++){
		ScheduledEmployees employee = (ScheduledEmployees)empList.get(i);
		
	  		%>


			<tr>
			<td width="15%" align="center" bgcolor="#EFFBFE"><%=employee.getEmployeeId()%></td>
			<td width="20%" align="center" bgcolor="#EFFBFE"><%=employee.getEmployeeName()==null?"":employee.getEmployeeName() %></td>
			<td width="15%" align="center" bgcolor="#EFFBFE"><%=employee.getEmployeeSex()==null?"":employee.getEmployeeSex() %></td>
			
			<td width="20%" align="center" bgcolor="#EFFBFE"><%=employee.getScheduleTime()==null?"":employee.getScheduleTime() %></td>
			<td width="16%" align="center" bgcolor="#EFFBFE"><%switch(Integer.parseInt(employee.getBeforeSchedule()))
			{
				case 1:out.print("产品部");break;
				case 2:out.print("技术部");break;
				case 3:out.print("营销部");break;
				case 4:out.print("财务部");break;
				case 5:out.print("行政部");break;
				case 6:out.print("人事部");break;
				case 7:out.print("市场部");break;
				case 234:out.print("软件分部");break;
			}%></td>
			<td width="16%" align="center" bgcolor="#EFFBFE"><%switch(Integer.parseInt(employee.getAfterSchedule()))
			{
				case 1:out.print("产品部");break;
				case 2:out.print("技术部");break;
				case 3:out.print("营销部");break;
				case 4:out.print("财务部");break;
				case 5:out.print("行政部");break;
				case 6:out.print("人事部");break;
				case 7:out.print("市场部");break;
				case 234:out.print("软件分部");break;
			}%></td>
			
			
			<%
           }
           
       		%>
       		 <tr>
      </table>
      <table align="center">
      <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
      <td colspan="7" bgcolor="#FFFFFF">&nbsp;
	  <span class='pagelink'><</span> <span class='pagelink'><<</span> <a class='pagelink' href='http://zcysysb.sdu.edu.cn:4500/sdxmmanage/teacher/applylistxmlb.php?NowPage=1'><font color=green>[1]</font></a>  <span class='pagelink'>>></span> <span class='pagelink'>></span> 转到第&nbsp;<input id='JumpSelect' type='text' size='2' value='1'onBlur="javascript:if(isNaN(parseInt(this.value)) || parseInt(this.value) > 1){alert('您输入的数字只能在 1 ～ 1之间，请重新输入'); return false;}location.href='http://zcysysb.sdu.edu.cn:4500/sdxmmanage/teacher/applylistxmlb.php?NowPage='+parseInt(this.value)" title='鼠标外部单击，文章转向'> 页	  </td>
      <td width="35%" bgcolor="#FFFFFF"><form id="form2" name="form2" method="get" action="">
        
          
            <input type="submit" name="Submit3" value="搜索" />
      </form>      </td>
    </tr>
		</table>
		<input type="button" value="  生成PDF文件" onclick="pdfwrite()"/>
	</body>
</html>
