<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>文件上传</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="${pageContext.request.contextPath}/servlet/UploadServlet2" method="post" enctype="multipart/form-data">
    	name:<input type="text" name="username"/><br/>
    	file:<input type="file" name="file"/><br/>
    	file:<input type="file" name="file"/><br/>
    	<input type="submit" value="上传"/>
    </form>
  </body>
</html>
