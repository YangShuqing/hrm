<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%@page import="com.buaa.hr.entity.*" %>
<%@page import="com.buaa.hr.manager.*" %>
<%@page import="com.buaa.hr.controller.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
 
<link  href="Css/layout.css" rel="stylesheet" type="text/css" />
<link href="Css/cb.css" rel="stylesheet" type="text/css"   />
<link  href="Css/n.css" rel="stylesheet" type="text/css" />
<style>
.biankuangs{ border:solid #A6D2FF 1px; border-top:0px; display:  }
</style>
<script language="javascript">
	function sub(){
		if(confirm("确认编辑？")){
			windon.location.href="#";
		}else{
			return false;
		}
	}
</script>
</head>

<body>
<%User user = (User)request.getAttribute("user"); %>
<table width="99%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
      <tr>
        <td width="17" background="Images/bj4.gif"><img src="Picture/r.gif" width="16" height="16" /></td>
        <td width="466" background="Images/bj4.gif">马云(超级管理员):你好！欢迎光临，您上次登录时间是：2015-09-20 23:15:15		
		</td>
        <td width="162" align="center" background="Images/bj4.gif">&lt;
		
				</td>           
      </tr>
    </table>
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="1%" align="left" background="Images/b2.jpg"><img src="Picture/b1.jpg" width="10" height="26" /></td>
            <td width="68%" background="Images/b2.jpg"><table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="20" align="left"><img src="Picture/tz.gif" width="10" height="16" /></td>
                  <td width="104" align="left" class="biao" >修改用户信息</td>
                </tr>
            </table></td>
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td>
          </tr>
</table>
<form id="form1" name="form1" method="post" action="/Hrm/userServlet?actionCode=userUpdate&userId=<%=user.getUserId() %>">
  <table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4">
    <tr>
      <td width="21%" height="25" align="right" bgcolor="#D6F2FD">用户名&nbsp;</td>
      <td width="79%" bgcolor="#FFFFFF"><label>
        &nbsp;
        <input name="username1" type="text" id="oldpw" value="<%=user.getUserName() %>" />
      </label></td>
    </tr>
    <tr>
      <td height="25" align="right" bgcolor="#EFFBFE">密&nbsp;&nbsp;&nbsp;码&nbsp;</td>
      <td bgcolor="#FFFFFF"><label>
        &nbsp;
        <input name="password1" type="password" id="pw" value="<%=user.getPassWord() %>"/>
      </label></td>
    </tr>
    
    <tr>
      <td height="25" align="right" bgcolor="#D6F2FD">用户角色&nbsp;</td>
      <td bgcolor="#FFFFFF"><label>
        &nbsp;
        <select  name="roleid1">
        	<option value="1" >管理员</option>
            <option value="2">VIP用户</option>
            <option value="3">普通用户</option>
        </select>
        
      </label></td>
    </tr>
    <tr>
      <td colspan="2" align="center" bgcolor="#FFFFFF"><label>
        <input type="submit" name="Submit" value="确认" onClick="javascript:sub();return false;" />
        	
        	
      </label></td>
    </tr>
  </table>
</form>
</body>
</html>
