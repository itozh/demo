<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/b2c/common/taglibs.jsp"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    application.setAttribute("basePath",basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <title>国税协同办公平台-纳税服务</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="${ctx}static/adminLTE/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}static/adminLTE/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="${ctx}static/adminLTE/dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${ctx}static/adminLTE/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="${ctx}static/adminLTE/plugins/jQuery/jQuery-2.2.0.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="${ctx}static/adminLTE/bootstrap/js/bootstrap.min.js"></script>

    <script src="${ctx}static/adminLTE/dist/js/app.min.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <jsp:include page="top.jsp"/>
        <jsp:include page="left.jsp"/>
        <jsp:include page="zhengwen.jsp"/>
        <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>