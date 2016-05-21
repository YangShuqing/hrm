<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import  = "com.buaa.hr.entity.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'renshi-5.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人事调动信息查询</title>
 
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

<script type="text/javascript">
	
</script>


  </head>
  
  <body>
    <table width="99%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
      <tr>
        <td width="17" background="Images/bj4.gif"><img src="Picture/r.gif" width="16" height="16" /></td>
        <td width="466" background="Images/bj4.gif">Admin(超级管理员):你好！欢迎光临，您上次登录时间是：2015-09-20 23:15:15		
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
                  <td width="154" align="left" class="biao">离职员工记录</td>
                </tr>
            </table></td>
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td>
          </tr>

</table>
<form id="form2" name="form2" method="post" action="/Hrm_l/SearchByServlet">
  <table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <tr>
      <td width="10%" height="25" align="center" bgcolor="#EFFBFE">ID</td>
      <td width="10%" align="center" bgcolor="#EFFBFE">姓名</td>
      <td width="10%" align="center" bgcolor="#EFFBFE">性别</td>
      <td width="10%" align="center" bgcolor="#EFFBFE">离职时间</td>
      <td width="10%" align="center" bgcolor="#EFFBFE">离职前部门</td>
      <td width="10%" align="center" bgcolor="#EFFBFE">离职前职称</td>
      <td width="25%" align="center" bgcolor="#EFFBFE">离职原因</td>
      
      <td width="8%" align="center" bgcolor="#EFFBFE">删除</td>
    </tr>
    
    	
    	 <%
			
			ArrayList<QuitEmployee> quitEmps = (ArrayList)request.getAttribute("quitEmps");
			
			for(int i = 0;i<quitEmps.size();i++){
            
          	 QuitEmployee  qe =(QuitEmployee) quitEmps.get(i);
          	 String dep = null;
          	 if(qe.getDepid()==1){
          	 	dep="产品部";
          	 }else if(qe.getDepid()==2){
          	 	dep="技术部";
          	 }else if(qe.getDepid()==3){
          	 	dep="运营部";
          	 }else if(qe.getDepid()==4){
          	 	dep="财务部";
          	 }else if(qe.getDepid()==5){
          	 	dep="行政部";
          	 }else if(qe.getDepid()==6){
          	 	dep="人事部";
          	 }else if(qe.getDepid()==7){
          	 	dep="市场部";
          	 } 
          	 else if(qe.getDepid()==8){
          	 	dep="微软分部";
          	 } 
          	 
      
		%>
    	
	<tr>
      <td width="10%"height="25" align="center" bgcolor="#EFFBFE"><%=qe.getRecordId() %></td>
      <td width="10%" align="center" bgcolor="#EFFBFE"><%= qe.getEmpName()%></td>
      <td width="10%" align="center" bgcolor="#EFFBFE"><%=qe.getEmpSex() %></td>
      <td width="10%" align="center" bgcolor="#EFFBFE"><%=qe.getDeparturedate() %></td>
      <td width="10%" align="center" bgcolor="#EFFBFE"><%=dep %></td>
      <td width="10%" align="center" bgcolor="#EFFBFE"><%=qe.getRanks() %></td>
      <td width="25%" align="center" bgcolor="#EFFBFE"><%=qe.getReason() %></td>
      
      <td width="8%" align="center" bgcolor="#EFFBFE"><a href="/Hrm_l/QuitEmployeeServlet?actionCode=delete&recordId=<%=qe.getRecordId()%>" onclick="return confirm('确定删除吗？')">删除</a></td>
    </tr>    
      <%
           }
           
      %>
     
      
     <tr>
      <td height="25" align = "center" bgcolor="#FFFFFF">条件查询</td>
      
      <td align = "center" height="25" bgcolor="#FFFFFF">按时间</td>
      <td align = "center" height="25" bgcolor="#FFFFFF">
      
        <select name="applyyear" id="applyyear">
          <option value='1 or 1=1)' >全部</option>
          <option value='2009)' >2009</option>
          <option value='2010)' >2010</option>
          <option value='2011)' >2011</option>
          <option value='2012)' >2012</option>
          <option value='2013)' >2013</option>
          <option value='2014)' >2014</option>
          <option value='2015)' >2015</option>
          <option value='2016)' >2016</option>        
         </select>
       
    </td>
    	<td align = "center" height="28" bgcolor="#FFFFFF">按部门</td>
    	
    	<td align = "center" height="28" bgcolor="#FFFFFF">
    	
         <select name="depId" id="depId">
          <option value="1 or 1=1)" >全部</option>
          <option value='1)' >产品部</option>
          <option value='2)' >技术部</option>
          <option value='3)' >运营部</option>
          <option value='4)' >财务部</option>
          <option value='5)' >行政部</option>
          <option value='6)' >人事部</option> 
          <option value='7)' >微软分部</option> 
                 
         </select>
         
        </td>
       
        <td  align = "center" height="28" bgcolor="#FFFFFF">
        
           <input type="submit" name="Submit3" value="搜索" style="width:50px;height:23px" />
        
        </td>
        <td  align = "center" height="28" bgcolor="#FFFFFF">
        
        
        
        </td>
        <td height="28" bgcolor="#FFFFFF">&nbsp;</td>	
    </tr>
</table>
</form>
  </body>
</html>
