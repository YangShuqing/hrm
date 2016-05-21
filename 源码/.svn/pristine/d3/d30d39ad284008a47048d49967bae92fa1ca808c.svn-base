<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style type="text/css">
		.time {
			font-size: 3;
			color: black;
			border-top-style:none;
			border-left-style:none;
			border-right-style:none;
			border-bottom-style:none;
			font-weight: bold;
			background: #EFEFEF;
			background-color:#EFEFEF; 
		}
	</style>
<script type="text/javascript">
		function fun() {
			var date = new Date();
			var hour = date.getHours();
			var minute = date.getMinutes();
			var second = date.getSeconds();
			if(hour<10) {
				hour = "0" + hour;
			}
			if(minute<10) {
				minute = "0" + minute;
			}
			if(second<10) {
				second = "0" + second;
			}
			document.getElementById("time").value = hour + ":" + minute + ":" + second;
			var t = setTimeout("fun()", 1000);
			
			
		}
</script>

<table width=""  border="0">
  <tr>
    <td width="20" background="Images/bj4.gif"><img src="Picture/r.gif" width="16" height="16" /></td>
    <td width="300" background="Images/bj4.gif" style="width: 300px; ">
	<font size="2" ><b>Admin欢迎欢迎 2015-09-20&nbsp;</b></font><input type="text" id="time" class="time" style="width:50" /><script type="text/javascript">fun();</script>		
				    																										    		
  </tr>
</table>
