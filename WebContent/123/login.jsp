<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
		function check() {
			var username = document.getElementById("username");
			var userInfo = document.getElementById("usernameInfo");
			userInfo.innerHTML = "";
			if(username.value == "") {
				
				userInfo.innerHTML = "用户名不能为空！";
				username.focus();
				return false;
			}
			var password = document.getElementById("password");
			var passinfo = document.getElementById("pwd");
			passinfo.innerHTML = "";
			if(password.value == "") {
				passinfo.innerHTML = "密码不能为空！";
				password.focus();
				return false;
			}
			return true;
		}
	</script>

  </head>
  
  <body background="1.jpg">

	<center>
    	<h1>用户登录</h1>
	</center>
	<br>
	<br>
	<br>
	<br>
	<br>
	<center>
			<form name="form2"   action="logincheck.jsp"  method="post" onsubmit="return check()">
				<table border="0">
					<tr>
						<td>用户名：</td>
						<td><input type="text" name="username" id="username"></td>
						<td><span id="usernameInfo"></span></td>
					</tr>
					<tr>
						<td>密码：</td>
						<td><input type="password" name="password" id="password"></td>
						<td><span id="pwd"></span></td>
					</tr>
				</table>
			<br>
				<input type="submit" value="登录"  style="color:#BC8F8F">
				
			</form>
			<form action="register.jsp">
			    <input type="submit" value="注册"  style="color:#BC8F8F">
			</form>
			
	</center>
</body>
</html>
