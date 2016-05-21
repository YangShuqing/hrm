<%@page import="java.util.*" %>
<%@page import="com.buaa.hr.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>员工编辑</title>
</head>
<body>
<link  href="Css/layout.css" rel="stylesheet" type="text/css" />
<link href="Css/cb.css" rel="stylesheet" type="text/css"   />
<link  href="Css/n.css" rel="stylesheet" type="text/css" />
<style>
.biankuangs{ border:solid #A6D2FF 1px; border-top:0px;   }
#xueke,#item_text2,#item_text1,#itemtypes2,#item_text3{ /**/display:none;}
</style>
<script type="text/javascript">
	
	function fun1(){
	
		if(confirm("确定修改吗？")){
			// location.href = "/Hrm/EmpServlet?actioncode=alter";
			alert("修改成功！");
			
		}else{
		
			
		}
	
	}
	</script>
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
        <td width="466" background="Images/bj4.gif">马云(超级管理员):你好！欢迎光临，您上次登录时间是：2015-09-20 23:15:15		
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
                  <td width="154" align="left" class="biao">人员基本信息</td>
                </tr>
            </table></td>
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td>
          </tr>
</table>
 	<form  action="/Hrm/EmpServlet?actioncode=alter" method="post">
  <table width="55%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    
   	<%   
   	     Employee emp=(Employee)request.getAttribute("employee");%>
   	     <tr>
		 <td width="35%" height="33" align="center" bgcolor="#EFFBFE">ID</td>
 		   <td width="65%"  height="33" align="center" bgcolor="#FFFFFF"><input type="text" name="empid" value="<%=emp.getEmpId()%>"  style="width:100%"/></td>
		 </tr>
		 <tr>
		  <td height="33"  align="center" bgcolor="#EFFBFE">姓名</td>
  		   <td align="center" bgcolor="#FFFFFF"><input type="text" name="empname" value="<%=emp.getEmpName() %>" style="width:100%"/></td>
		  </tr><tr>
		  <td height="31"  align="center" bgcolor="#EFFBFE">性别</td>
  		    <td align="center" bgcolor="#FFFFFF"><select style="width:100%" name="empsex" id="applyyear">
 	          <option value='1' >男</option>
 	          <option value='2' >女</option>
 	          </select></td>
		 </tr> <tr>
		  <td height="33"  align="center" bgcolor="#EFFBFE">学历</td>
  		   <td  align="center" bgcolor="#FFFFFF"><input type="text" name="school" value="<%=emp.getSchool() %>" style="width:100%"/></td>
		 </tr> <tr>
		  <td height="31"  align="center" bgcolor="#EFFBFE">学位</td>
  		   <td  align="center" bgcolor="#FFFFFF"><input type="text" name="degree" value="<%=emp.getDegree()%>"style="width:100%" /></td>
		 </tr> <tr>
		  <td height="35" align="center" bgcolor="#EFFBFE">部门</td>
  		   <td align="center" bgcolor="#FFFFFF"><select name="deptid"  style="width:100%">
 	          <option value='1' >产品部</option>
 	          <option value='2' >技术部</option>
 	          <option value='3' >运营部</option>
 	          <option value='4' >市场部</option>
 	          <option value='5' >财务部</option>
 	          <option value='6' >行政部</option>
 	          <option value='7' >人事部</option>
 	          </select></td>
		</tr>  <tr>
		  <td height="35"  align="center" bgcolor="#EFFBFE">职称</td>
  		  <td  align="center" bgcolor="#FFFFFF"><input type="text" name="job" value="<%=emp.getJob() %>" style="width:100%"/></td>
		 </tr> <tr>
		  <td height="34"  align="center" bgcolor="#EFFBFE">职务</td>
  		   <td  align="center" bgcolor="#FFFFFF"><input type="text" name="ranks" value="<%=emp.getRanks() %>" style="width:100%"/></td>
		 </tr> <tr>
		  <td height="29"  align="center" bgcolor="#EFFBFE">人员状态</td>
  		   <td  align="center" bgcolor="#FFFFFF"><select name="state" style="width:100%">
 	          <option value='1' >在职</option>
 	          <option value='2' >离职</option>
 	          </select></td>
		  </tr><tr>
		  <td height="29"  align="center" bgcolor="#EFFBFE">年龄</td>
  		    <td  align="center" bgcolor="#FFFFFF"><input type="text" name="age" value="<%=emp.getAge()%>"style="width:100%"/></td>
		  
		<!--  <td width="10%" align="center" bgcolor="#EFFBFE">生日</td>  -->
		
    </tr>

    <tr>   
    	<td colspan="2" align="center" bgcolor="#EFFBFE"><input type="submit" value="修改"    style="width:15%"onclick="fun1()"></td>
    	
    	
    	</tr>
  
 
</table>
</form>
</body>
</html>
