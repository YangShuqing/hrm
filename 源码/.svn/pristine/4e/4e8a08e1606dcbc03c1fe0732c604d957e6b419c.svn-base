<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.buaa.hr.entity.*" %>
<%@ page import="com.buaa.hr.manager.impl.*" %>
<%@ page import="com.buaa.hr.untils.*" %>
<html>  
  <head>  
    <title>登录校验</title>  
  </head> 
    <body>
    	<%
    		User user = new User();
			Md5 md5 = new Md5();
			String password = request.getParameter("password");
			user.setUserName(request.getParameter("userName"));
			user.setPassWord(md5.GetMD5Code(password));
			UserManager userManager = new UserManager();
			int roleid = Integer.parseInt(request.getParameter("tyeps"));
			String checkcode=request.getParameter("checkCode");
			boolean flag = false;
			if(userManager.isValid(user)&&checkcode.equalsIgnoreCase((String)session.getAttribute("randCheckCode"))){
				flag = true;
			}
			
			if(flag){
				if(roleid==3){
				%><script type="text/javascript">location.href = "main2.html";</script>
				<%}else {
					%><script type="text/javascript">location.href = "main.html";</script>
				<%}
					}
			else{%>
				 <script type="text/javascript">location.href = "fail.html";</script>
				 
			<%}
    	
    	 %>
    </body>  
</html> 