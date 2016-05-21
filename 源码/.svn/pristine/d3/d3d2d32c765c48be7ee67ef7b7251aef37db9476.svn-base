<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%@page import="com.buaa.hr.entity.*" %>
<%@page import="com.buaa.hr.manager.*" %>
<%@page import="com.buaa.hr.controller.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
 
<link  href="Css/layout.css" rel="stylesheet" type="text/css" />
<link href="Css/cb.css" rel="stylesheet" type="text/css"   />
<link  href="Css/n.css" rel="stylesheet" type="text/css" />
<style>
.biankuangs{ border:solid #A6D2FF 1px; border-top:0px;   }
#xueke,#item_text2,#item_text1,#itemtypes2,#item_text3{ /**/display:none;}
</style> 
<head>
<script language="javascript" type="text/javascript"> 
 var flag=1; 
 function selectAll(){ 
	if(flag==1){ 
		 if(common_delete.selectdelete.length!=undefined){ 
			for(var i=0;i <common_delete.selectdelete.length;i++){ 
				common_delete.selectdelete[i].checked=true;
			}
		 }else{ 
			common_delete.selectdelete.checked=true; 
			} 
		flag=0; 
	}else{ 
		if(common_delete.selectdelete.length!=undefined){ 
			for(var   i=0;i <common_delete.selectdelete.length;i++){ 
				common_delete.selectdelete[i].checked=false;
			}
		}else{ 
			common_delete.selectdelete.checked=false; 
		} 
		flag=1; 
	} 
 } 
 function deleteAll(){
   location.href="/Hrm/userServlet?actionCode=deleteAll";
   }
   
  /*  -------------分页函数----------------- */
   function forward1() {
		var pagesize = document.getElementById("pagesize").value;
		var userid = document.getElementById("userid").value;
		var recordcount = document.getElementById("recordcount").value;
		if(pagesize!="" && parseInt(pagesize)<=parseInt(recordcount)) {
			location.href = "pageQueryProductServlet?pagesize=" + pagesize + "&userid=" + userid;
		}	
	}
	
	function forward2() {
		var pagesize = document.getElementById("pagesize").value;
		var pagenum = document.getElementById("pagenum").value;
		var pagecount = document.getElementById("pagecount").value;
		var userid = document.getElementById("userid").value;
		if(pagesize!="" && pagenum!="" && parseInt(pagenum)<=parseInt(pagecount)) {
			location.href = "/Hrm/pageQueryProductServlet?pagesize=" + pagesize + "&pagenum=" + pagenum + "&userid=" + userid;
		}
	}
	
	/*  -------------分页函数----------------- */

	
	
	function test() {
		alert("2333");
	}
	function deleteCompany() {
	var ids = document.getElementsByName("ids");
    //var ids = document.fom.ids;
    var result = "";
    if (typeof (ids) != "undefined") {
        if (typeof (ids.length) != "undefined") {
            for ( var i = 0; i < ids.length; i++) {
                if (ids[i].checked) {
                    result += ids[i].value + ";";
                }
            }
            result = result.substring(0, result.length - 1);
        } else {
            if(ids.checked)
                result = ids.value;
        }
    }
    if (result == "") {
        alert("请选择要删除的记录");
    } else {
    	//alert(result);
        window.location.href = "userServlet?actionCode=deleteAll&boxid="+result;
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
                  <td width="104" align="left" class="biao">用户搜索</td>
                </tr>
            </table></td><!--嵌套表格放灯泡图片和文字-->
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td><!--右框-->
          </tr>
</table>
<!--3.一行一【居中列】的表格里面嵌套1个表格-->
<table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4">
    <tr>
      <td align="center" bgcolor="#E2F7FE">
       <form id="form1" name="form1" method="get" action="">
      <!--嵌套的表格-->
    	  <table width="40%" border="0" cellspacing="1" cellpadding="3">
            <tr>
              <td width="50%" align="right">用户名称：</td>
              <td width="40%" align="left">
                <label>
                 <input name="itemname" type="text" id="itemname" size="20" />
                </label>
              </td>
              <td width="10%"><input type="submit" name="Submit" value="搜索" /></td>
            </tr>
          </table>
	    </form>
       </td>
    </tr>
</table>
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
                  <td width="104" align="left" class="biao">用户列表</td>
                </tr>
            </table></td><!--中间嵌套表格-->
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td><!--右框-->
          </tr>
</table>
<!--6.显示的表格--><!---->

	<form method="post" action="userServlet?actionCode=deleteAll">
  <table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <tr>
      <td width="5%" align="center" bgcolor="#EFFBFE">
      <%-- 	<input type="checkbox" name="boxid" value="<%=user.getUserId() %>"/> --%>
      </td>	
      <td width="10%" height="25" align="center" bgcolor="#EFFBFE">用户ID</td>
      <td width="20%" align="center" bgcolor="#EFFBFE" name="username">用户姓名</td>
      <td width="20%" align="center" bgcolor="#EFFBFE" name="password">用户密码</td>
      <td width="10%" height="25" align="center" bgcolor="#EFFBFE" name="roleId">角色ID</td>
      <td colspan="2"  width="25%"  align="center" bgcolor="#EFFBFE">操作</td>
    </tr>
	
    	
    <%
    	List users =(List)request.getAttribute("users");
    	for(int i=0;i<users.size();i++){
    		User user = (User)users.get(i);
    	
    
     %>
    	<tr>
    	<td width="5%" align="center" bgcolor="#EFFBFE">
    		<input type="checkbox" name="boxid" value="<%=user.getUserId()%>" />
    	</td>
	      <td width="10%" height="25" align="center" bgcolor="#EFFBFE" ><%=user.getUserId() %></td>
	      <td width="20%" align="center" bgcolor="#EFFBFE"><%=user.getUserName() %></td>
	      <td width="20%" align="center" bgcolor="#EFFBFE"><%=user.getPassWord() %></td>
	      <td width="10%" height="25" align="center" bgcolor="#EFFBFE"><%=user.getRoleId() %></td>
	      <td  width="12%"  align="center" bgcolor="#EFFBFE">
	      	<a href="/Hrm/userServlet?actionCode=delete&userId=<%=user.getUserId() %>">
	      	删除</a></td>
	      <td width="13%"  align="center" bgcolor="#EFFBFE">
	      	<a href="/Hrm/userServlet?actionCode=update&userId=<%=user.getUserId()%>">
	      	编辑</a></td>
	    </tr>
    
    
   		 <%
    		}
    	 %>
    
   <tr>
   	<td align="center" bgcolor="#EFFBFE"> 
     	<input type="submit" value="删    除" />
     </td>
      <td colspan="2" height="25" bgcolor="#FFFFFF" align="center">
	   </td>
      <td bgcolor="#FFFFFF" colspan="4">
      </form>
      <form id="form2" name="form2" method="post" action="/Hrm/userServlet?actionCode=addUser">
		<input type="submit" name="Submit3" value="添 加 用 户" />
      </form>      </td>
    </tr>
    
    
    
   					 <!-- -----------------分页开始---------------- -->
   			
   				 
    <table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
	<tr>
		<td align="center">
			共显示${page.recordcount }条记录&nbsp;
			共有${page.pagecount}页&nbsp;
			每页显示<input type="text" size="2" id="pagesize" value="${page.pagesize}" onblur="forward1()"/>条记录&nbsp;
			<c:choose>
				<c:when test="${page.pagenum==1}">
					首页
					上一页
				</c:when>
				<c:otherwise>
					<a href="PageQueryProductServlet?pagenum=1&pagesize=${page.pagesize}&userid=${userid}">首页</a>
					<a href="PageQueryProductServlet?pagenum=${page.pagenum-1}&pagesize=${page.pagesize}&userid=${userid}">上一页</a>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${page.pagenum==page.pagecount}">
					下一页
					尾页
				</c:when>
				<c:otherwise>
					<a href="PageQueryProductServlet?pagenum=${page.pagenum+1}&pagesize=${page.pagesize}&userid=${userid}">下一页</a>
					<a href="PageQueryProductServlet?pagenum=${page.pagecount}&pagesize=${page.pagesize}&userid=${userid}">尾页</a>
				</c:otherwise>
			</c:choose>
			跳转到第<input type="text" size="2" id="pagenum" value="${page.pagenum}" onblur="forward2()"/>页
		</td>
	</tr>
</table>
    
    	
    	
    
</table>
</body>
</html>
