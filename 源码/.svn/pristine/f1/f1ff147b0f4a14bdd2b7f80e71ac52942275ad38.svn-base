<%@page import="com.buaa.hr.entity.Employee"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'renshi-3.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link  href="Css/layout.css" rel="stylesheet" type="text/css" />
<link href="Css/cb.css" rel="stylesheet" type="text/css"   />
<link  href="Css/n.css" rel="stylesheet" type="text/css" />
<style>
.biankuangs{ border:solid #A6D2FF 1px; border-top:0px;   }
#xueke,#item_text2,#item_text1,#itemtypes2,#item_text3{ /**/display:none;}
</style> 
<script>
function change_itemtypes(name){
	document.getElementById("itemtypes2").value="";
	document.getElementById("xueke").value="";
	if(name==2){
	    document.getElementById("itemtypes2").style.display="block";
		document.getElementById("item_text1").style.display="block";
		//document.getElementById("xueke").style.display="block";
	}else{
		document.getElementById("itemtypes2").style.display="none"; 
		document.getElementById("xueke").style.display="none"; 
		document.getElementById("item_text1").style.display="none"; 
		document.getElementById("item_text2").style.display="none"; 
	}
	
}

function change_itemtypes2(name){
 	document.getElementById("types2").value="";
	document.getElementById("types3").value="";
	if(name=='1'){
       document.getElementById("item_text2").style.display="block"; 
	   
	   document.getElementById("item_text3").style.display="none"; 
	   
	}else if(name=='3'){
 
		document.getElementById("item_text2").style.display="none";
		document.getElementById("item_text3").style.display="block"; 	
	}else{
 
		document.getElementById("item_text2").style.display="none";
		document.getElementById("item_text3").style.display="none"; 
	}
}
</script>
</head>  
<body>    
<table width="99%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
      <tr>
        <td width="17" background="Images/bj4.gif"><img src="Picture/r.gif" width="16" height="16" /></td>
        <td width="90%" background="Images/bj4.gif"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;Admin(超级管理员):你好！欢迎光临，您上次登录时间是：2015-09-20 23:15:15</font>		
		</td>
        <td width="162" align="center" background="Images/bj4.gif">
		
				</td>           
      </tr>
    </table>
  <table width="30%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="1%" align="left" background="Images/b2.jpg"><img src="Picture/b1.jpg" width="10" height="26" /></td>
        <td width="68%" background="Images/b2.jpg"><table width="174" border="0" align="left" cellpadding="0" cellspacing="0">
           <tr>
             <td width="20" align="left"><img src="Picture/tz.gif" width="10" height="16" /></td>
             <td width="154" align="left" class="biao">退休员工预测表</td>
           </tr>
        </table></td>
        <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td>
      </tr>       
</table>
  <table width="30%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <%
    	Employee ep = new Employee();
    	ep = (Employee)request.getAttribute("ep");
    	if(ep.getEmpId() != 0){
     %>
    <tr>
      <td width="5%" height="25" align="center" bgcolor="#EFFBFE">ID</td>
      <td width="12%" align="center" bgcolor="#EFFBFE"><%
	      	if((ep.getEmpId()+"").equals(null)){out.print("");}else{out.print(ep.getEmpId());} %></td>      
    </tr>
    <tr>
    	<td width="5%" height="25" align="center" bgcolor="#EFFBFE">姓名</td>
      <td width="12%" align="center" bgcolor="#EFFBFE"><%
	      	if(ep.getEmpName().equals(null)){out.print("");}else{out.print(ep.getEmpName());} %></td>      
    </tr>
    <tr>
    	<td width="5%" height="25" align="center" bgcolor="#EFFBFE">性别</td>
      <td width="12%" align="center" bgcolor="#EFFBFE"><%
			if(ep.getEmpSex()==1){out.print("男");}else{out.print("女");} %></td>      
    </tr>
    <tr>
    	<td width="5%" height="25" align="center" bgcolor="#EFFBFE">年龄</td>
      <td width="12%" align="center" bgcolor="#EFFBFE"><%
	      	if(ep.getAge()==0){out.print("");}else{out.print(ep.getAge());} %></td>      
    </tr>
    <tr>
    	<td width="5%" height="25" align="center" bgcolor="#EFFBFE">职称</td>
      <td width="12%" align="center" bgcolor="#EFFBFE"><%
	      	if(ep.getDegree().equals(null)){out.print("");}else{out.print(ep.getDegree());} %></td>      
    </tr>
        <tr>
    	<td width="5%" height="25" align="center" bgcolor="#EFFBFE">现任岗位</td>
      <td width="12%" align="center" bgcolor="#EFFBFE"><%
	      	if(ep.getJob().equals(null)){out.print("");}else{out.print(ep.getJob());} %></td>      
    </tr>
    <%
    }else{
     %>  	
     
     <tr>
      <td width="5%" height="25" align="center" bgcolor="#EFFBFE" colspan="2">您查询的用户不存在！</td>          
    </tr>
    <tr align="center">      	
      	<td colspan="2">
      		<form action="/Hrm/retiredEmpServlet?actioncode=page3" method="post">
      			<font size="3">请输入员工姓名：</font>
   				<input type="text" name="empName"/>
		 		<input type="submit" value="查询"/>
   			</form>
      	</td>
      </tr>
     
     <%
     }
      %>        
	  </table>
  <br/>
  </body>
</html>
