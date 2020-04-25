<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>网点列表</title>
 <link rel="icon" href="${ctx}/static/images/icoheader.png" type="image/x-icon">  <!-- //在网页标题左侧显示图标 -->
<link href="/static/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx}/static/css/fixedStyle.css" rel="stylesheet">
<script type="text/javascript" src="/static/js/jquery-1.8.3.js"></script>
<script src="${ctx}/static/js/zzsc.js"></script>
<style type="text/css">
#zzsc{
	position: absolute;
	top:5px;
	left:70%;
	z-index: 2;
	box-shadow:10 10 5 gray;
}
</style>

</style>
</head>
<body>
	<div>
		<nav>
			<div class="container">
				<div class="pull-left col-md-10 text-left">
					<h3>设备销售管理系统</h3>
					
				</div>
				<div id="zzsc" class="pull-right">
					<canvas id="canvas"></canvas>
				</div>
				
			</div>
		</nav>
		<div class="container">
			<div class="row">
				<div class="col-md-2 text-center left">
					<div class="row">
						<a href="${ctx}/user/list/page" target="myIframe">人员管理</a>
					</div>

					<div class="row">
						<a href="${ctx}/role/list/page" target="myIframe">角色管理</a>
					</div>
					<div class="row">
						<a href="${ctx}/department/list/page" target="myIframe">部门管理</a>
					</div>
					<div class="row">
						<a href="${ctx}/device/list/page" target="myIframe">设备管理</a>
					</div>
					<div class="row">
						<a href="${ctx}/station/list/page" target="myIframe">服务网点</a>
					</div>
					<div class="row">
						<a href="${ctx}/saleDevice/list/page" target="myIframe">设备销售</a>
					</div>
					<div class="row">
						<a href="${ctx}/report/list/page" target="myIframe">基础报表</a>
					</div>
					<div class="row">
						<a href="${ctx}/picture/reportList.jsp" target="_self">详细报表</a>
					</div>
					<div class="row">
						<a href="${ctx}/fixed/list/All" target="myIframe">网点全国分布</a>
					</div>
					<div class="row">
						<a href="/login.jsp" target="_self">退出本站服务</a>
					</div>
				</div>
				<div class="col-md-9 right">
					<iframe name="myIframe" class="col-md-12"
						src="${ctx}/user/list/page"></iframe>
				</div>
			</div>
		</div>
	</div>
</body>
</html>