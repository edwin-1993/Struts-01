<%--
  Created by IntelliJ IDEA.
  User: Edwin_1993
  Date: 2017/4/7
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title>INDEX</title>
</head>
<body>
<h1> welcome </h1>
<form action="hello.action" method="post">
  <label for = "name"> input your name !</label>
  <input type = "text" id = "name" name = "name"/>
  <input type = "submit" value="Enter"/>
  <input type = "submit" value="Enter"/>
</form>
</body>
</html>
