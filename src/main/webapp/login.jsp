<%--
  <%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/4
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>登录</title>
</head>
<body>
        ${errorMsg}
    <form action="/login" method="post">
        用户名:<input type="text" name="username">
        <br/>
        密码:<input type="text" name="password">
        <input type="submit">
    </form>
</body>
</html>
