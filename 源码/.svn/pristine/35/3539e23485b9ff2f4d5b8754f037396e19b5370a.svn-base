<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%@page import="com.buaa.hr.entity.*" %>
<%@page import="com.buaa.hr.manager.*" %>
<%@page import="com.buaa.hr.controller.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人事调动信息查询</title>
 
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
<table width="99%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
      <tr>
        <td width="17" background="Images/bj4.gif"><img src="Picture/r.gif" width="16" height="16" /></td>
        <td width="466" background="Images/bj4.gif">你好！欢迎光临，您上次登录时间是：2015-09-20 23:15:15		
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
  <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="1%" align="left" background="Images/b2.jpg"><img src="Picture/b1.jpg" width="10" height="26" /></td>
            <td width="68%" background="Images/b2.jpg"><table width="174" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="20" align="left"><img src="Picture/tz.gif" width="10" height="16" /></td>
                  <td width="154" align="left" class="biao">部门管理信息记录表</td>
                </tr>
            </table></td>
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td>
          </tr>
</table>
	  <table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
	    <tr>
	      <td width="10%" height="25" align="center" bgcolor="#EFFBFE">ID</td>
	      <td width="20%" align="center" bgcolor="#EFFBFE">部门名称</td>
	      <td width="20%"  align="center" bgcolor="#EFFBFE">部门级别</td>
	      <td width="20%" align="center" bgcolor="#EFFBFE">上级部门</td>
	      <td width="30%" colspan="2"  align="center" bgcolor="#EFFBFE">操作</td>
	    </tr>
		  
     <%
    	List depts =(List)request.getAttribute("depts");
    	for(int i=0;i<depts.size();i++){
    		Dept dept = (Dept)depts.get(i);
    	
    
     %>
    	<tr>
	      <td width="10%" height="25" align="center" bgcolor="#EFFBFE"><%=dept.getDeptId() %></td>
	      <td width="20%" align="center" bgcolor="#EFFBFE"><%=dept.getDeptName() %></td>
	      <td width="20%"  align="center" bgcolor="#EFFBFE"><%=dept.getDeptLevel() %></td>
	      <td width="20%" align="center" bgcolor="#EFFBFE"><%=dept.getSuperiorDeptId() %></td>
	      <td width="15%" align="center" bgcolor="#EFFBFE">
	      		<a href="/Hrm/deptServlet?actionCode=delete&deptid=<%=dept.getDeptId() %>">
	      		<input type="button" value="删除"  onClick="javascript:sub();return false;"/>
				</a></td>
	       <td width="15%" align="center" bgcolor="#EFFBFE">
	       		<a href="/Hrm/deptServlet?actionCode=update&deptid=<%=dept.getDeptId() %>">
	      		<input type="button" value="编辑"  />
				</a></td>
	    </tr>
    	
    	<%
    		}
    	 %>
    
   
     <tr>
      <td colspan="2" height="25" bgcolor="#FFFFFF" align="center">
	  <span class='pagelink'></span> <span class='pagelink'></span> 
      <td bgcolor="#FFFFFF" colspan="4">
      <form id="form2" name="form2" method="post" action="/Hrm/deptServlet?actionCode=addDept">
		<input type="submit" name="Submit3" value="添 加 部 门" />
      </form>      </td>
    </tr>
</table>
</body>
</html>
