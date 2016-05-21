<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=gb2312"%> 
<%@page import="com.buaa.hr.entity.*" %>
<%@page import="com.buaa.hr.manager.*" %>
<%@page import="com.buaa.hr.controller.*" %>

<html>
<head>
<title>无标题文档</title>
 
<link  href="Css/layout.css" rel="stylesheet" type="text/css" />
<link href="Css/cb.css" rel="stylesheet" type="text/css"   />
<link  href="Css/n.css" rel="stylesheet" type="text/css" />
<style>
.biankuangs{ border:solid #A6D2FF 1px; border-top:0px; display:  }
</style>

</head>

<body>

<table width="99%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
      <tr>
        <td width="17" background="Images/bj4.gif"><img src="Picture/r.gif" width="16" height="16" /></td>
        <td width="466" background="Images/bj4.gif">你好！欢迎光临		
		</td>
        <td width="162" align="center" background="Images/bj4.gif">
		
				</td>           
      </tr>
    </table>
    
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="1%" align="left" background="Images/b2.jpg"><img src="Picture/b1.jpg" width="10" height="26" /></td>
            <td width="68%" background="Images/b2.jpg"><table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="20" align="left"><img src="Picture/tz.gif" width="10" height="16" /></td>
                  <td width="104" align="left" class="biao" >添加角色</td>
                </tr>
            </table></td>
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td>
          </tr>
</table>
<%--Role role = (Role)request.getAttribute("role"); --%>
<script language="javascript">
	function sub(){
		if(confirm("确认添加？")){
			windon.location.href="/Hrm/roleServlet?actionCode=addRoleSubmit";
		}else{
			return false;
		}
	}
</script>
<form id="form1" name="form1" method="post" action="/Hrm/roleServlet?actionCode=addRoleSubmit">
  <table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4">
    <tr>
      <td width="21%" height="25" align="right" bgcolor="#D6F2FD">新角色ID&nbsp;</td>
      <td width="79%" bgcolor="#FFFFFF"><label>
        &nbsp;
        <input name="roleid2" type="text" id="oldpw" />
      </label></td>
    </tr>
    <tr>
      <td width="21%" height="25" align="right" bgcolor="#D6F2FD">新角色名&nbsp;</td>
      <td width="79%" bgcolor="#FFFFFF"><label>
        &nbsp;
        <input name="rolename2" type="text" id="oldpw" />
      </label></td>
    </tr>
    
    
   
    <tr>
      <td colspan="2" align="center" bgcolor="#FFFFFF">
        
        <input type="submit" name="Submit" value="确认添加" onClick="javascript:sub();return false;" />
        	
    </tr>
  </table>
</form>
</body>
</html>
