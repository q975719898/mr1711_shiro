<%--
  <%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/4
  Time: 14:06
  To change this tdpmentlate use File | Settings | File Tdpmentlates.
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
    <title>部门管理</title>
</head>
<body>
<shiro:hasPermission name="dpment:save">
<a href="/dpment/save">部门增加</a>
</shiro:hasPermission>
<shiro:hasPermission name="dpment:delete">
<a href="/dpment/delete">部门删除</a>
</shiro:hasPermission>
<shiro:hasPermission name="dpment:update">
<a href="/dpment/update">部门修改</a>
</shiro:hasPermission>
</body>
</html>
