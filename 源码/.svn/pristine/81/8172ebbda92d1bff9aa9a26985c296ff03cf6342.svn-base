<%@page import="java.util.*" %>
<%@page import="com.buaa.hr.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>员工信息</title>
<link  href="Css/layout.css" rel="stylesheet" type="text/css" />
<link href="Css/cb.css" rel="stylesheet" type="text/css"   />
<link  href="Css/n.css" rel="stylesheet" type="text/css" />
<style>
.biankuangs{ border:solid #A6D2FF 1px; border-top:0px;   }
#xueke,#item_text2,#item_text1,#itemtypes2,#item_text3{ /**/display:none;}
</style>
<script>
function test(){
var selectedComs = document.getElementById("selectedComs");
for(var i=0;i<selectedComs.length;i++){
selectedComs.options.selected = true;
}
return true;
}
</script>
<script type="text/javascript">
	function search1(){
		var empid = document.getElementById("empid").value;
		location.href = "/Hrm/EmpServlet?actioncode=queryEmpById&empid=" + empid;
	}
	function search2(){
		var str = document.getElementById("str").value;
		location.href = "/Hrm/EmpServlet?actioncode=queryEmpByStr&str=" + str;
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






<script type="text/javascript">
	
	function fun1(x){
	
		if(confirm("确定删除吗？")){
			location.href = "/Hrm/EmpServlet?actioncode=delete&empid=" + x;
			alert("成功删除！");
			
		}else{
		
			
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
            <td width="1%" align="left" background="Images/b2.jpg"><img src="Picture/b1.jpg" width="10" height="26" /></td><!--左框-->
            <td width="68%" background="Images/b2.jpg"><table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="20" align="left"><img src="Picture/tz.gif" width="10" height="16" /></td>
                  <td width="104" align="left" class="biao">员工搜索</td>
                </tr>
            </table></td><!--嵌套表格放灯泡图片和文字-->
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td><!--右框-->
          </tr>
</table>
	<table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4">
    <tr>
      <td align="center" bgcolor="#E2F7FE">
       <form id="form1" name="form1" method="get" action="">
      <!--嵌套的表格-->
    	  <table width="40%" border="0" cellspacing="1" cellpadding="3">
            <tr>
              请输入员工ID：
		<input type="text" id="empid"/>
		<input type="button" value="查询" onClick="search1()"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		请输入员工姓名：
		<input type="text" id="str"/>
		<input type="button" value="搜索" onClick="search2()"/>
            </tr>
          </table>
	    </form>
       </td>
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
<!--<form actioncode="/Hrm/empServlet?actioncode="printallemployee1" method="post">
 --><table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <tr>
		  <td width="4%" height="25" align="center" bgcolor="#EFFBFE">ID</td>
		  <td width="8%" align="center" bgcolor="#EFFBFE">姓名</td>
		  <td width="8%" align="center" bgcolor="#EFFBFE">性别</td>
		  <td width="8%" align="center" bgcolor="#EFFBFE">学历</td>
		  <td width="9%" align="center" bgcolor="#EFFBFE">学位</td>
		  <td width="7%" align="center" bgcolor="#EFFBFE">部门</td>
		  <td width="9%" align="center" bgcolor="#EFFBFE">职称</td>
		  <td width="11%" align="center" bgcolor="#EFFBFE">职务</td>
		  <td width="11%" align="center" bgcolor="#EFFBFE">人员状态</td>
		  <td width="7%" align="center" bgcolor="#EFFBFE">年龄</td>
		<!--   <td width="10%" align="center" bgcolor="#EFFBFE">生日</td>--><!-- 
		  <td colspan="2" align="center" bgcolor="#EFFBFE">操作</td>

    --></tr>
    <%
				List allemp = (List) request.getAttribute("allemployee");
    			
    			
				for (int i = 0; i < allemp.size(); i++) {
					Employee emp = (Employee) allemp.get(i);
				
			%>

	<tr>
		  <td width="4%" height="25" align="center" bgcolor="#FFFFFF"><%=emp.getEmpId()%></td>
		  <td width="8%" align="center" bgcolor="#FFFFFF"><%=emp.getEmpName() %></td>
		  <td width="8%" align="center" bgcolor="#FFFFFF"><% if(emp.getEmpSex()==1){ out.print("男");}else{out.print("女");}%></td>
		  <td width="8%" align="center" bgcolor="#FFFFFF"><%=emp.getSchool() %></td>

		
		  <td width="8%" align="center" bgcolor="#FFFFFF"><%=emp.getDegree()==null?"":emp.getDegree()%></td>
		  <td width="7%" align="center" bgcolor="#FFFFFF"><% switch (emp.getDeptId()){
																case 1:out.print("产品部");break;
																case 2:out.print("技术部");break;
																case 3:out.print("运营部");break;
																case 4:out.print("市场部");break;
																case 5:out.print("财务部");break;
																case 6:out.print("行政部");break;
																case 7:out.print("人事部");break;
																
																
															} %></td>

		  
		  <td width="10%" align="center" bgcolor="#FFFFFF"><%=emp.getJob()%></td>
		  <td width="13%" align="center" bgcolor="#FFFFFF"><%=emp.getRanks()==null?"":emp.getRanks() %></td>
		   <td width="11%" align="center" bgcolor="#FFFFFF"><%if(emp.getState()==1){out.print("在职");}else{out.print("离职");}%></td>
		  <td width="7%" align="center" bgcolor="#FFFFFF"><%=emp.getAge()%></td>
		 <!-- <td width="10%" align="center" bgcolor="#FFFFFF">%></td> --><!--
		  <td width="9%" align="center" bgcolor="#FFFFFF"><a href="/Hrm/EmpServlet?actioncode=edit&empid=<%=emp.getEmpId()%>">编辑</a></td>

	
		  <td width="7%" align="center" bgcolor="#FFFFFF" onclick="fun1(<%=emp.getEmpId()%>)"><a href="/Hrm/EmpServlet?actioncode=delete&empid=<%=emp.getEmpId()%>">删除</a></td>

    --></tr>   
    <% } %> 
    <tr>
      <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
      <td colspan="4" bgcolor="#FFFFFF">&nbsp;
	  <span class='pagelink'><</span> <span class='pagelink'><<</span> <a class='pagelink' href='#'><font color=green>[1]</font></a>  <span class='pagelink'>>></span> <span class='pagelink'>></span> 转到第&nbsp;<input id='JumpSelect' type='text' size='2' value='1'onBlur="javascript:if(isNaN(parseInt(this.value)) || parseInt(this.value) > 1){alert('您输入的数字只能在 1 ～ 1之间，请重新输入'); return false;}location.href='#'" title='鼠标外部单击，文章转向'> 页	  </td>
      <td colspan="3" bgcolor="#FFFFFF">&nbsp;
      	<form id="form3" name="form3"
					method="get" action="">
      	  <input type="button" value="增加员工" onclick="location='empadd.jsp' "/>
      	  <input type="button" value="导出excel"onclick="location='/Hrm/exportExcelServlet' "/>
      	</form></td>
      <td bgcolor="#FFFFFF" colspan="4"><form id="form2" name="form2" method="post" action="/Hrm/EmpServlet?actioncode=deptid">
        <select name="deptid" id="applyyear">
          <option value="" >全部</option>
          <option value='1' >产品部</option> 
          <option value='2' >技术部</option> 
          <option value='3' >运营部</option> 
          <option value='4' >市场部</option> 
          <option value='5' >财务部</option> 
          <option value='6' >行政部</option> 
          <option value='7' >人事部</option>    </select>
            <input type="submit" name="Submit3" value="搜索" />
            
      </form>      </td>
    </tr>
</table>
<!--</form>
--></body>
</html>
