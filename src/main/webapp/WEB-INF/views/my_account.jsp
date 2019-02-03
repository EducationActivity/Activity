<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/16 0016
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    request.setAttribute("basePath", basePath);
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>我的账户</title>
    <link rel="shortcut icon" href="${basePath}static/images/tryeverything.png" type="image/png">

<script type="text/javascript">


</script>
</head>

<body>

</body>
</html>
