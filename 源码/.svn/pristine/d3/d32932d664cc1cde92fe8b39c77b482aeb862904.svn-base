<%@page import="java.util.*"%>
<%@page import="com.buaa.hr.entity.Reward"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>奖惩编辑</title>
	</head>
	<body>
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
		<script><!--
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
--></script>
	
		</head>
		<body>
			<table width="99%" height="25" border="0" align="center"
				cellpadding="0" cellspacing="0" style="margin-bottom: 4px;">
				<tr>
					<td width="17" background="Images/bj4.gif">
						<img src="Picture/r.gif" width="16" height="16" />
					</td>
					<td width="466" background="Images/bj4.gif">
						马云(超级管理员):你好！欢迎光临，您上次登录时间是：2015-09-20 23:15:15
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
									惩奖管理
								</td>
							</tr>
						</table>
					</td>
					<td width="31%" align="right" background="Images/b2.jpg">
						<img src="Picture/b3.jpg" width="9" height="26" />
					</td>
				</tr>
			</table>
			<form action="/Hrm/RewardServlet?actioncode=alter" method="post">
				<table width="99%" border="0" align="center" cellpadding="3"
					cellspacing="1" bgcolor="#AEDEF4" style="border: 1px solid #AEDEF4">

					<%
						int empid = Integer.parseInt(request.getParameter("empid"));
						Reward reward = (Reward) request.getAttribute("reward");
					%>

					<tr>
						<td height="25" align="center" bgcolor="#EFFBFE">
							奖惩ID
						</td>
						<td height="25" align="center" bgcolor="#FFFFFF">
							<input type="text" name="rewid" value="<%=reward.getRewid()%>" />
						</td>
					</tr>
					<tr>
						<td align="center" bgcolor="#EFFBFE">
							员工ID
						</td>
						<td align="center" bgcolor="#FFFFFF">
							<input type="text" name="empid" value="<%=reward.getEmpid()%>" />
						</td>
					</tr>
					<tr>
						<td align="center" bgcolor="#EFFBFE">
							获奖人员姓名
						</td>
						<td align="center" bgcolor="#FFFFFF">
							<input type="text" name="empname"
								value="<%=reward.getEmpName()%>" />
						</td>
					</tr>
					<tr>
						<td align="center" bgcolor="#EFFBFE">
							惩奖时间
						</td>
						<td align="center" bgcolor="#FFFFFF">
							<input type="text" name="rewdate"
								value="<%=reward.getRewdate()%>" />
						</td>
					</tr>
					<tr>
						<td align="center" bgcolor="#EFFBFE">
							惩奖内容
						</td>
						<td align="center" bgcolor="#FFFFFF">
							<input type="text" name="rewtype"
								value="<%=reward.getRewtype()%>" />
						</td>
					</tr>
					<tr>
						<td align="center" bgcolor="#EFFBFE">
							惩奖标题
						</td>
						<td align="center" bgcolor="#FFFFFF">
							<input type="text" name="rewtitle"
								value="<%=reward.getRewtitle()%>" />
						</td>
					</tr>
					<tr>
						<td align="center" bgcolor="#EFFBFE">
							奖金类别
						</td>
						<td align="center" bgcolor="#FFFFFF">
							<input type="text" name="rewcontent"
								value="<%=reward.getRewcontent()%>" />
						</td>

					</tr>
					<tr>
						<td colspan="2" width="100%" align="center" bgcolor="#FFFFFF">
							<input type="submit" value=" 修改">
							</a>
						</td>

						<tr>
							<td  colspan="2" bgcolor="#FFFFFF" >
								
								<a class='pagelink'
									href='http://zcysysb.sdu.edu.cn:4500/sdxmmanage/teacher/applylistxmlb.php?NowPage=1'><font
									color=green>[1]</font>
								</a>
								<span class='pagelink'>>></span>
								<span class='pagelink'>></span> 转到第&nbsp;
								<input id='JumpSelect' type='text' size='2' value='1'
									onBlur="javascript:if(isNaN(parseInt(this.value)) || parseInt(this.value) > 1){alert('您输入的数字只能在 1 ～ 1之间，请重新输入'); return false;}location.href='http://zcysysb.sdu.edu.cn:4500/sdxmmanage/teacher/applylistxmlb.php?NowPage='+parseInt(this.value)"
									title='鼠标外部单击，文章转向'>
								页
							</td>
							</tr>
							
				</table>
		</body>
</html>
