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
<h1> welcome 232131232133 </h1>
<form action="hello.action" method="post">
  <label for = "name1"> input your name !</label>
  <input type = "text" id = "name1" name="name" value="input name"/>
  <input type = "submit" value="Enter"/>
  <h5><s property="prim.edwin.struts01.HelloAction@getName()"></s></h5>
  <h5><s property="prim.edwin.struts01.HelloAction@testvalue"></s></h5>

</form>

<%--<s:set name="testset" value="#{'key1':'value1'}"/>--%>
<%--<s:property value="#mySet['key1']"/>   //输出的是value1--%>
<%--<s:url value="# mySet['key1']" />      //输出的是#mySet['key1']--%>
<%--<s:url value="%{#mySet['key1']}"/>   //输出的是value1--%>


<form action="upload" method="post" enctype="multipart/form-data">
  <%--enctype 	规定在发送表单数据之前如何对其进行编码。--%>
  uploader:<input type="text" name="upLoader">
  select file:<input type="file" name="upLoad">
  <input type="submit" value="Upload">

</form>


<form action="GoMulti.action" method="post">
  <button value="Gomulti">Gomulti</button>
</form>


</body>
</html>
