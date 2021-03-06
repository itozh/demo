<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/b2c/common/taglibs.jsp"%>
<%--<script type="application/javascript">--%>
    <%--$('${param.p}').addClass("active");--%>

<%--</script>--%>

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">O商城 后台管理</li>
            <li class="active treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i>
                    <span>会员管理</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="userUI"><a href="${ctx}/admin/userUI.html?p=userUI"><i class="fa fa-circle-o"></i> 会员列表</a></li>
                    <li class="sysRoleUI"><a href="${ctx}/admin/sysRoleUI.html?p=sysRoleUI"><i class="fa fa-circle-o"></i> 角色管理</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-files-o"></i>
                    <span>商品管理</span>
                    <span class="label label-primary pull-right">4</span>
                </a>
                <ul class="treeview-menu">
                    <li class="productUI"><a href="${ctx}/admin/productUI.html?p=productUI"><i class="fa fa-circle-o"></i> 商品管理</a></li>
                </ul>
            </li>
            <li>
                <a href="pages/widgets.html">
                    <i class="fa fa-th"></i> <span>Widgets</span>
                    <small class="label pull-right bg-green">new</small>
                </a>
            </li>

            <li class="header">LABELS</li>
            <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

