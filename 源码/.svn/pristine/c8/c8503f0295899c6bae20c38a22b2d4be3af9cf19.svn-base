<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.buaa.hr.entity.*" %>
<%@ page import="com.buaa.hr.manager.impl.*" %>
<script type="text/javascript">
	function fun(){
		var ndeptid = document.form.newdept.value;
		var empId = document.form.empId.value;
		location.href = "/Hrm/empTransferServlet?actioncode=update&empId="+empId+"&ndeptid="+ ndeptid;
	}
</script>
<form name="form" action="/Hrm/empTransferServlet" method="post">
  <table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <tr>
      <td width="12%" height="25" align="center" bgcolor="#EFFBFE">员工ID</td>
      <td width="18%" align="center" bgcolor="#EFFBFE">员工姓名</td>
      <td width="19%" align="center" bgcolor="#EFFBFE">部门</td>
      <td width="21%" align="center" bgcolor="#EFFBFE">调去部门</td>
    </tr>
    <%  Employee emp = (Employee)request.getAttribute("emp"); %>
	 <tr>
      <td width="12%" height="25" align="center" bgcolor="#EFFBFE"><%=emp.getEmpId() %></td>
      <td width="18%" align="center" bgcolor="#EFFBFE"><%=emp.getEmpName() %></td>
      <td width="19%" align="center" bgcolor="#EFFBFE"><%switch (emp.getDeptId()){
																case 1:out.print("产品部");break;
																case 2:out.print("技术部");break;
																case 3:out.print("运营部");break;
																case 4:out.print("财务部");break;
																case 5:out.print("行政部");break;
																case 6:out.print("人事部");break;
																case 7:out.print("市场部");break;
																case 234:out.print("微软分部");break;
															} %></td>
      <td width="21%" align="center" bgcolor="#EFFBFE">
      		  <select name="newdept" style="width:110">
	 		    <option value="1">产品部</option>
	 		    <option value="2">技术部</option>
	 		    <option value="3">运营部</option>
	 		    <option value="4">财务部</option>
	 		    <option value="5">行政部</option>
	 		    <option value="6">人事部</option>
	 		    <option value="7">市场部</option>
	 		    <option value="234">微软分部</option>
 		      </select>
      </td>
    </tr>
     <tr>
      <td height="25" colspan="4" align="center" bgcolor="#EFFBFE">
      	 <input type="hidden" name="empId" value="<%=emp.getEmpId() %>"/>
     	  <input type="button" value="提交" onclick="fun()" style="width:90;height:30" />
      </td>
    </tr>
	 
    </table>
</form>