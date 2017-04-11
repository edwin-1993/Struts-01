<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Edwin_1993
  Date: 2017/4/11
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>MultiUpload</title>
</head>
<body>
    <s:form action="multiUpload" method="post" enctype="multipart/form-data">
    <s:file label="select file1" name="upLoads" />
    <s:file label="select file2" name="upLoads" />
    <s:file label="select file3" name="upLoads" />
    <s:submit value="Upload" />
</s:form>
</body>
</html>
