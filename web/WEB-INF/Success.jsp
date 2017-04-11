<%--
  Created by IntelliJ IDEA.
  User: Edwin_1993
  Date: 2017/4/9
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags"  prefix="s"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Success</title>
</head>
<body>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerPort()+":"+request.getServletPath()+path+"/";
    %>
    upload succeed !<br/>
    uploader:<s:property value=" + upLoader"/><br/>
    file name:<s:property value="+ upLoadFileName"/><br/>
    file type:<s:property value="+ upLoadContentType"/><br/>
    file address:<p> <%=basePath %><s:property value="'upLoadFiles/'
    + upLoadFileName"/></p><br/>

    <%=basePath %><br/>
    file path:<s:property value=" + filePath"/>;
</body>
</html>
