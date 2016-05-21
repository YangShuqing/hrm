<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.buaa.hr.entity.*" %>
<%@ page import="com.buaa.hr.manager.impl.*" %>
<script type="text/javascript">
	function search1(){
		var userId = document.getElementById("userId").value;
		location.href = "/Hrm/empTransferServlet?actioncode=queryEmpById&userId=" + userId;
	}
	function search2(){
		var str = document.getElementById("str").value;
		location.href = "/Hrm/empTransferServlet?actioncode=queryEmpByStr&str=" + str;
	}
</script>
<body>
	
		请输入员工ID：
		<input type="text" id="userId"/>
		<input type="button" value="查询" onClick="search1()"/>
		请输入员工姓名：
		<input type="text" id="str"/>
		<input type="button" value="搜索" onClick="search2()"/>
	
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
                  <td width="154" align="left" class="biao">人事调动</td>
                </tr>
            </table></td>
            <td width="31%" align="right" background="Images/b2.jpg"><img src="Picture/b3.jpg" width="9" height="26" /></td>
          </tr>
</table>
	
<table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <tr>
      <td width="12%" height="25" align="center" bgcolor="#EFFBFE">员工ID</td>
      <td width="18%" align="center" bgcolor="#EFFBFE">员工姓名</td>
      <td colspan="2" align="center" bgcolor="#EFFBFE">性别</td>
      <td width="11%" align="center" bgcolor="#EFFBFE">职称</td>
      <td width="19%" align="center" bgcolor="#EFFBFE">部门</td>
      <td width="21%" align="center" bgcolor="#EFFBFE">调动</td>
    </tr>
  
	<%  List empList = (List)request.getAttribute("empList");
		for(int i=0;i<empList.size();i++){
			Employee emp = (Employee)empList.get(i);
		
	 %>
	 <tr>
	 <td width="12%" height="25" align="center" bgcolor="#EFFBFE"><%=emp.getEmpId() %></td>
      <td width="18%" align="center" bgcolor="#EFFBFE"><%=emp.getEmpName() %></td>
      <td colspan="2" align="center" bgcolor="#EFFBFE"><% if(emp.getEmpSex()==1){
      															out.print("男");
      													}else{
      														out.print("女");
      													}

														 %></td>
      
      <td width="11%" align="center" bgcolor="#EFFBFE"><%
      														if(emp.getRanks()==null){
      															out.print("无");
      														}else{
      															out.print(emp.getRanks());
      														}
      													 %></td>
      
      <td width="19%" align="center" bgcolor="#EFFBFE"><%
															switch (emp.getDeptId()){
																case 1:out.print("产品部");break;
																case 2:out.print("技术部");break;
																case 3:out.print("运营部");break;
																case 4:out.print("财务部");break;
																case 5:out.print("行政部");break;
																case 6:out.print("人事部");break;
																case 7:out.print("市场部");break;
																case 234:out.print("微软分部");break;
															}

														 %></td>
      <td width="21%" align="center" bgcolor="#EFFBFE"><a href="/Hrm/empTransferServlet?actioncode=trf&empId=<%=emp.getEmpId() %>">调动</a></td>
	  </tr>
	<%	} %> 
	 
	</table>
	
	
</body>
