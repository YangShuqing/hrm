<%@page import="java.util.*"%>
<%@page import="com.buaa.hr.entity.*" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<title>main.html</title>
</head>

<body>
	<center>
		<h2>用户信息</h2>
	
		 <table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <tr>
      <td width="10%" height="25" align="center" bgcolor="#EFFBFE">用户ID</td>
      <td width="20%" align="center" bgcolor="#EFFBFE">用户姓名</td>
      <td width="20%" align="center" bgcolor="#EFFBFE">用户密码</td>
      <td width="10%" height="25" align="center" bgcolor="#EFFBFE">角色ID</td>
      <td colspan="2"  width="25%"  align="center" bgcolor="#EFFBFE">操作</td>
    </tr>
	
    	
    <%
    	List users =(List)request.getAttribute("users");
    	for(int i=0;i<users.size();i++){
    		User user = (User)users.get(i);
    	
    
     %>
    	<tr>
	      <td width="10%" height="25" align="center" bgcolor="#EFFBFE"><%=user.getUserId() %></td>
	      <td width="20%" align="center" bgcolor="#EFFBFE"><%=user.getUserName() %></td>
	      <td width="20%" align="center" bgcolor="#EFFBFE"><%=user.getPassWord() %></td>
	      <td width="10%" height="25" align="center" bgcolor="#EFFBFE"><%=user.getRoleId() %></td>
	      <td  width="12%"  align="center" bgcolor="#EFFBFE">
	      	<a href="/Hrm/userServlet?actionCode=delete&userId =<%=user.getUserId()%>">
	      	</a>删除</td>
	      <td width="13%"  align="center" bgcolor="#EFFBFE">
	      	<a href="/Hrm/userServlet?actionCode=update&userId =<%=user.getUserId()%>">
	      	</a>编辑</td>
	    </tr>
    
    	
    	<%
    		}
    	 %>
    
    
   <tr>
      <td colspan="2" height="25" bgcolor="#FFFFFF" align="center">
	  <span class='pagelink'><</span> <span class='pagelink'><<</span> <a class='pagelink' href='http://zcysysb.sdu.edu.cn:4500/sdxmmanage/teacher/applylist.php?NowPage=1'><font color=green>[1]</font></a>  <span class='pagelink'>>></span> <span class='pagelink'>></span> 转到第&nbsp;<input id='JumpSelect' type='text' size='2' value='1'onBlur="javascript:if(isNaN(parseInt(this.value)) || parseInt(this.value) > 1){alert('您输入的数字只能在 1 ～ 1之间，请重新输入'); return false;}location.href='http://zcysysb.sdu.edu.cn:4500/sdxmmanage/teacher/applylist.php?NowPage='+parseInt(this.value)" title='鼠标外部单击，文章转向'> 页	  </td>
      <td bgcolor="#FFFFFF" colspan="4">
      <form id="form2" name="form2" method="post" action="/Hrm/userServlet">
        
          
		<a href="/Hrm/userServlet?actionCode=addUser">
		<input type="submit" name="Submit3" value="添加用户" /></a>
      </form>      </td>
    </tr>
</table>
	</center>
</body>
</html>