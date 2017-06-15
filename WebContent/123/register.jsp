<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册界面</title>
    
    <script type="text/javascript">
	                     function check()
	                     {
	                         if(form1.username.value=="")
	                         {
	                            alert("用户名不能为空！");
	                            form1.username.focus();  
	                            return false;
	                         }
	                         else if(form1.password.value=="")
	                         {
	                            alert("密码不能为空！");
	                            form1.password.focus();
	                            return false;
	                         }
	                         else if(form1.surepassword.value=="")
	                         {
	                            alert("确认密码不能为空！")
	                            form1.surepassword.focus();
	                            return false;
	                         }
	                         else if(form1.password.value!=form1.surepassword.value)
	                         {
	                            alert("密码不一致，请重新输入！");
	                            surepassword.focus();
	                            return false;
	                         }
	                      return true;
	                     
	                     }
	
	</script>
	
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	

  </head>
  
  <body>
   <center>
    <h1>用户注册</h1>

    <form name="form1" action="registercheck.jsp" method="post" onsubmit="return check()">
          <table border="0">
          <tr>
             <td>账号:</td>
             <td> <input type="text" name="username"> </td>
          </tr>
          <tr>
             <td>密码:</td>
             <td> <input type="password" name="password"> </td>    
          </tr>   
          
          <tr>
             <td>确认密码：</td>
             <td> <input type="password" name="surepassword"> </td>
          </tr>
          </table> 
          <br>
       <input type="submit"  value="确认" style="color:#BC8F8">
    </form>
    
    <form action="login.jsp">
           <input type="submit" value="返回" style="color:#BC8F8">
    </form>
   </center>
  </body>
</html>
