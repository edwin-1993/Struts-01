<%--
  Created by IntelliJ IDEA.
  User: Edwin_1993
  Date: 2017/4/7
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--taglib 用于引入标签，当插入其它语言时需要--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>HelloJspAction</title>
</head>
<body>

<div>
    <h1>hello world & jsp <s:property value = "name"/></h1>
    <h1>hello world</h1>
    <h1>testvalue = <s:property value="@prim.edwin.struts01.HelloAction@testvalue"/></h1>
    <h1>prim.edwin.struts01.helloaction.test();<s:property value="@prim.edwin.struts01.HelloAction@test()"/></h1>
    <%--<h1>max(2,3)=<s:property value="@@max(2, 3)"></s:property></h1>--%>
</div>

</body>
</html>