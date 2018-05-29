<%--
  <%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/4
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>主页面</title>
</head>
<body>
<h1>主页面</h1>
<br/>
<a href="/dengchu">登出</a>
<br>
<shiro:hasPermission name="employee:list">
<a href="/employee/toemp">员工管理</a>
</shiro:hasPermission>
<br>
<shiro:hasPermission name="dpment:list">
<a href="/dpment/todpm">部门管理</a>
</shiro:hasPermission>
</body>
</html>
