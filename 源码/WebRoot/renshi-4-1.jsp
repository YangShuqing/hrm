<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.buaa.hr.entity.*" %>
<%@ page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'renshi-4.jsp' starting page</title>
    
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
                  <td width="154" align="left" class="biao">退休员工预测表</td>
                </tr>
            </table></td>
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td>
          </tr>
</table>
  <table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <tr>
      <td width="5%" height="25" align="center" bgcolor="#EFFBFE">ID</td>
      <td width="12%" align="center" bgcolor="#EFFBFE">姓名</td>
      <td colspan="2" align="center" bgcolor="#EFFBFE">性别</td>
      <td width="10%" align="center" bgcolor="#EFFBFE">年龄</td>
      <td width="9%" align="center" bgcolor="#EFFBFE">职称</td>
      <td width="17%" align="center" bgcolor="#EFFBFE">退休日期</td>
      <td colspan="2" align="center" bgcolor="#EFFBFE">现任岗位</td>
    </tr>
    <%	List aaa = (List)request.getAttribute("li"); 
    			for(int i = 0; i < aaa.size(); i++){
    				QuitEmp qe = new QuitEmp();
    				qe = (QuitEmp)aaa.get(i);
    %>
    <tr>
      <td width="5%" height="25" align="center" bgcolor="#FFFFFF"><%=qe.getId() %></td>
      <td width="12%" align="center" bgcolor="#FFFFFF"><a href="#"><%=qe.getName() %></a></td>
      <td colspan="2" align="center" bgcolor="#FFFFFF"><%=qe.getSex() %></td>
      <td width="10%" align="center" bgcolor="#FFFFFF"><%=qe.getAge() %></td>
      <td width="9%" align="center" bgcolor="#FFFFFF"><%=qe.getTitle() %></td>
      <td width="17%" align="center" bgcolor="#FFFFFF"><%=qe.getDate() %></td>
      <td colspan="2" align="center" bgcolor="#FFFFFF"><%=qe.getJob() %></td>
    </tr>    
    <% } %>
    <tr>
      <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
      <td colspan="7" bgcolor="#FFFFFF">&nbsp;
	  <span class='pagelink'><</span> <span class='pagelink'><<</span> <a class='pagelink' href="#"><font color=green>[1]</font></a>  <span class='pagelink'>>></span> <span class='pagelink'>></span> 转到第&nbsp;<input id='JumpSelect' type='text' size='2' value='1'onBlur="javascript:if(isNaN(parseInt(this.value)) || parseInt(this.value) > 1){alert('您输入的数字只能在 1 ～ 1之间，请重新输入'); return false;}location.href='http://zcysysb.sdu.edu.cn:4500/sdxmmanage/teacher/applylistxmlb.php?NowPage='+parseInt(this.value)" title='鼠标外部单击，文章转向'> 页	  </td>
      <td width="35%" bgcolor="#FFFFFF"><form id="form2" name="form2" method="get" action="">
        <select name="applyyear" id="applyyear">
          <option value="" >全部</option>
          <option value='2009' >2009</option><option value='2010' >2010</option><option value='2011' >2011</option><option value='2012' >2012</option><option value='2013' >2013</option><option value='2008' >2008</option><option value='2014' >2014</option><option value='2015' >2015</option><option value='2016' >2016</option>        </select>
            <input type="submit" name="Submit3" value="搜索" />
           
      </form>      </td>
    </tr>
</table><br/>
<form name="" action="/MyHrm/checkQtempServlet" method="post">
	<table align="center">
		<tr>
			<td colspan="7" bgcolor="#FFFFFF">
				<a href="#"><input type="button" value="返回"/></a>
			</td>
		</tr>
	</table>
</form>
  </body>
</html>
