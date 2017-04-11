<%--
  Created by IntelliJ IDEA.
  User: Edwin_1993
  Date: 2017/4/11
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MultiSuccess</title>
</head>
<body>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//    拼接地址
%>
    <h1>upload success</h1>
file name:<s:property value="+ uploadsFileName[0]"/><br/>
file type:<s:property value="+ uploadsContentType[0]"/><br/>
file address:<p> <%=basePath %><s:property value="'uploadMultiFiles/'
        + uploadsFileName[0]"/></p><br/>

file name:<s:property value="+ uploadsFileName[1]"/><br/>
file type:<s:property value="+ uploadsContentType[1]"/><br/>
file address:<p> <%=basePath %><s:property value="'uploadMultiFiles/'
        + uploadsFileName[1]"/></p><br/>

file name:<s:property value="+ uploadsFileName[2]"/><br/>
file type:<s:property value="+ uploadsContentType[2]"/><br/>
file address:<p> <%=basePath %><s:property value="'uploadMultiFiles/'
        + uploadsFileName[2]"/></p><br/>
</body>
</html>
