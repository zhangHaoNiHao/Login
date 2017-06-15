<%@ page language="java" import="java.util.*"  import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'logincheck.jsp' starting page</title>
    
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
   		ResultSet rs = null;
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
		String sql = "select * from userInfo where user=? and pwd=?";
		pstmt = conn.prepareStatement(sql);
		String user = request.getParameter("username");
		String password = request.getParameter("password");
		pstmt.setString(1, user);
		pstmt.setString(2, password);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			%><center><h1>登陆成功！</h1></center>
		<%}
		else {
			%><center><h1>用户名或密码错误！</h1></center>
		<%}
		if(rs != null) {
			rs.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
		if(conn != null) {
			conn.close();
		}
   		
   		
   		
   	 %>
  </body>
</html>
