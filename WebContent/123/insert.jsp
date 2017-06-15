<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加</title>
    
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
    <%	
		Connection conn = null;
		PreparedStatement pstmt = null;
		String driverName = "com.mysql.jdbc.Driver";
		String userName = "root";
		String userPwd = "123456789";
		String dbName = "zhnaghao";
		String url1 = "jdbc:mysql://localhost:3306/" + dbName;
		String url2 = "?user=" + userName + "&password=" + userPwd;
		String url3 = "&useUnicode=true&characterEncoding=UTF-8";
		String url = url1 + url2 + url3;
		request.setCharacterEncoding("UTF-8");
		Class.forName(driverName);
		conn = DriverManager.getConnection(url);
		String sql = "insert into userinfo(user,pwd) value(?,?)";
		pstmt = conn.prepareStatement(sql);
		String user = request.getParameter("username");
		String password = request.getParameter("password");
		pstmt.setString(1, user);
		pstmt.setString(2, password);
		int n = pstmt.executeUpdate();
		if(n==1)
		{
		 %> <h1>注册成功！</h1> <%
		}
		else
		{
		 %> <h1>注册失败！</h1> <%
		}
		if(pstmt !=null)
		{
		 pstmt.close();
		}
		if(conn!=null)
		{
		 conn.close();
		}
		%>
  </body>
</html>
