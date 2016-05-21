<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%@page import="java.util.*" %>
<%@page import="com.buaa.hr.entity.*" %>
<%@page import="com.buaa.hr.manager.*" %>
<%@page import="com.buaa.hr.controller.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>角色管理</title>
 
<link  href="Css/layout.css" rel="stylesheet" type="text/css" />
<link href="Css/cb.css" rel="stylesheet" type="text/css"   />
<link  href="Css/n.css" rel="stylesheet" type="text/css" />

<style>
.biankuangs{ border:solid #A6D2FF 1px; border-top:0px;   }
#xueke,#item_text2,#item_text1,#itemtypes2,#item_text3{ /**/display:none;}
</style>
<script language="javascript">
	function sub(){
		if(confirm("确认删除？")){
			windon.location.href="#";
		}else{
			return false;
		}
	}
</script>

</head>

<body>
<!--1.欢迎登录-->
<table width="99%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;"><!--margin-bottom:4px 距离下边距为4px-->
      <tr>
        <td width="17" background="Images/bj4.gif"><img src="Picture/r.gif" width="16" height="16" /></td>
        <td width="466" background="Images/bj4.gif">欢迎登录！！</td>
        <td width="162" align="center" background="Images/bj4.gif"></td>        
      </tr>
</table>
<!--2.用嵌套的表格拼成表头，b1是左边框，中间是b2背景，b3是右边框-->
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="1%" align="left" background="Images/b2.jpg"><img src="Picture/b1.jpg" width="10" height="26" /></td><!--左框-->
            <td width="68%" background="Images/b2.jpg"><table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="20" align="left"><img src="Picture/tz.gif" width="10" height="16" /></td>
                  <td width="104" align="left" class="biao">角色管理</td>
                </tr>
            </table></td><!--嵌套表格放灯泡图片和文字-->
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td><!--右框-->
          </tr>
</table>
<!--3.一行一【居中列】的表格里面嵌套1个表格-->

<!--4.  无用表格，可做间隙-->
<table width="50%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="5"></td>
  </tr>
</table>

<!--5.用嵌套的表格拼成表头，b1是左边框，中间是b2背景，b3是右边框-->
  <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="1%" align="left" background="Images/b2.jpg"><img src="Picture/b1.jpg" width="10" height="26" /></td><!--左框-->
            <td width="68%" background="Images/b2.jpg"><table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="20" align="left"><img src="Picture/tz.gif" width="10" height="16" /></td>
                  <td width="104" align="left" class="biao">角色列表</td>
                </tr>
            </table></td><!--中间嵌套表格-->
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td><!--右框-->
          </tr>
</table>
<!--6.显示的表格--><!---->


  <table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <tr>
      <td name="roleId" width="20%" height="25" align="center" bgcolor="#EFFBFE">ID</td>
      <td name="roleName" width="30%" align="center" bgcolor="#EFFBFE">角色名称</td>
      <td width="40%" align="center" bgcolor="#EFFBFE">管理操作</td>
    </tr>
    
     <%
    	List roles =(List) request.getAttribute("roles");
    	for(int i=0;i<roles.size();i++){
    		Role role = (Role)roles.get(i);
    	
     %>
    
    
	<tr  onmouseout="this.style.backgroundColor='#ffffff'"     bgcolor="#ffffff"  onmouseover="this.style.backgroundColor='#E6F2FF'"      >
      <td height="25" align="center"  ><%=role.getRoleId() %></td>
      <td align="center" class="t5"   ><div align="center"><strong><%=role.getRoleName() %></strong></div></td>
      <td align="left">
	    <div align="left" style="padding-left:5px">
	      <div align="center">
	         <a href="/Hrm/roleServlet?actionCode=delete&roleid=<%=role.getRoleId()%>" >
	      	<input type="button" value="删除"  onClick="javascript:sub();return false;"/></a>
	  
          </div>
	    </div></td>
    </tr>
    
   <%
   		}
    %>
    	
    
   <tr>
      <td colspan="2" height="25" bgcolor="#FFFFFF" align="center"></td>
      <td bgcolor="#FFFFFF" align="center">
         <form id="form2" name="form2" method="post" action="/Hrm/roleServlet?actionCode=addRole">
		<input type="submit" name="Submit3" value="添 加  角 色" />
      </form>
              
      </td>
    </tr>
    
</table>
</body>
</html>

