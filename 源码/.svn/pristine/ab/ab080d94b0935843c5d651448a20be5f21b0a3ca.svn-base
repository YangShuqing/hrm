<%@page import="java.util.*"%>
<%@page import="com.buaa.hr.entity.Reward"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>奖惩管理信息</title>
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
<table width="100%" border="0" align="center" cellpadding="3"
			cellspacing="1" bgcolor="#AEDEF4" style="border: 1px solid #AEDEF4">
			<tr>
				<td width="10%" height="25" align="center" bgcolor="#EFFBFE">
					奖惩编号
				</td>
				<td width="11%" align="center" bgcolor="#EFFBFE">
					获奖人员ID
				</td>
				<td width="10%" align="center" bgcolor="#EFFBFE">
					获奖人员姓名
				</td>
				<td width="10%" align="center" bgcolor="#EFFBFE">
					惩奖时间
				</td>
				<td width="10%" align="center" bgcolor="#EFFBFE">
					惩奖内容
				</td>
				<td width="10%" align="center" bgcolor="#EFFBFE">
					惩奖标题
				</td>
				<td width="12%" align="center" bgcolor="#EFFBFE">
					奖金类别
				</td>
				<td colspan="6" align="center" bgcolor="#EFFBFE">
					操作
				</td>

			</tr>
			<%
				List allReward = (List) request.getAttribute("allReward");

				for (int i = 0; i < allReward.size(); i++) {
					Reward reward = (Reward) allReward.get(i);
			%>

			<tr>
				<td width="10%" height="32" align="center" bgcolor="#FFFFFF"><%=reward.getRewid()%></td>
			  <td width="11%" align="center" bgcolor="#FFFFFF"><%=reward.getEmpid()%></td>
				<td width="10%" align="center" bgcolor="#FFFFFF"><%=reward.getEmpName()%></td>
				<td width="10%" align="center" bgcolor="#FFFFFF"><%=reward.getRewdate()%></td>
				<td width="10%" align="center" bgcolor="#FFFFFF"><%=reward.getRewcontent()%></td>
				<td width="10%" align="center" bgcolor="#FFFFFF"><%=reward.getRewtitle()%></td>
				<td width="12%" align="center" bgcolor="#FFFFFF"><%=reward.getRewtype()%></td>
				<td width="11%" align="center" bgcolor="#FFFFFF">
					<a
						href="/Hrm/RewardServlet?actioncode=edit&empid=<%=reward.getEmpid()%>">编辑</a>
				</td>
				<td width="16%" align="center" bgcolor="#FFFFFF">
					<a
						href="/Hrm/RewardServlet?actioncode=delete&empid=<%=reward.getEmpid()%>">删除</a>
				</td>
			</tr>
			<%
				}
			%>

			<tr>
				<td height="44" bgcolor="#FFFFFF">&nbsp;
					
				</td>
				<td colspan="7" bgcolor="#FFFFFF">
					&nbsp;
					<span class='pagelink'><</span>
					<span class='pagelink'><<</span>
					<a class='pagelink'
						href='http://zcysysb.sdu.edu.cn:4500/sdxmmanage/teacher/applylistxmlb.php?NowPage=1'><font
						color=green>[1]</font> </a>
					<span class='pagelink'>>></span>
					<span class='pagelink'>></span> 转到第&nbsp;
				  <input id='JumpSelect' type='text' size='2' value='1'
						onBlur="javascript:if(isNaN(parseInt(this.value)) || parseInt(this.value) > 1){alert('您输入的数字只能在 1 ～ 1之间，请重新输入'); return false;}location.href='http://zcysysb.sdu.edu.cn:4500/sdxmmanage/teacher/applylistxmlb.php?NowPage='+parseInt(this.value)"
						title='鼠标外部单击，文章转向'>
					页
				</td>
				<td width="16%" bgcolor="#FFFFFF" colspan="3">
					<a href="rewardadd.jsp">增加奖惩信息</a>
				</td>

			</tr>
		</table>
	</body>
</html>
