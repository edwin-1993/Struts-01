<%@ taglib prefix="s" uri="/struts-tags" %>
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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>MultiSuccess</title>
</head>
<body>

<%
    String path = request.getContextPath();
    String savePath = this.getServletContext().getRealPath("/out/artifacts/Struts_01_war_exploded/multiUpload");
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//    拼接地址

    String getscheme = request.getScheme();
    String getservername = request.getServerName();
    int getserverport = request.getServerPort();
    String getcontentpath = request.getContextPath();
%>
    <h1>upload success</h1>

file.path:<s:property value="+ savePath"/><br/>

file name:<s:property value="+ upLoadsFileName[0]"/><br/>
file type:<s:property value="+ upLoadsContentType[0]"/><br/>
file address:<p> <%=basePath %><s:property value="'upLoadMultiFiles/'
        + upLoadsFileName[0]"/></p><br/>
<a href="downloadAction.action?filename=<s:property value="+upLoadsFileName[0]"/>">download</a><br/>

file name:<s:property value="+ upLoadsFileName[1]"/><br/>
file type:<s:property value="+ upLoadsContentType[1]"/><br/>
file address:<p> <%=basePath %><s:property value="'upLoadMultiFiles/'
        + upLoadsFileName[1]"/></p><br/>

file name:<s:property value="+ upLoadsFileName[2]"/><br/>
file type:<s:property value="+ upLoadsContentType[2]"/><br/>
file address:<p> <%=basePath %><s:property value="'upLoadMultiFiles/'
        + upLoadsFileName[2]"/></p><br/>



getscheme: <p><%=getscheme%></p>
getservername:<p><%=getservername%></p>
getserverport:<p><%=getserverport%></p>
getcontentpath:<p><%=getcontentpath%></p>


</body>
</html>
