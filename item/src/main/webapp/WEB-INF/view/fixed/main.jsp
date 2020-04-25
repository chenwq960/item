<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>网点列表</title>
<style type="text/css">

</style>
<link href="/static/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx}/static/css/fixedStyle.css" rel="stylesheet">
</head>
<body>
	<div>
		<nav>
			<div class="container">
				<div class="pull-left col-md-10 text-left">
					<h3>服务网点全国图</h3>
				</div>
			</div>
		</nav>
		<div class="container">
			<div class="row">
				<div class="col-md-2 text-center left">
					<div class="row">
						<a href="${ctx}/fixed/list/All" target="myIframe">网点全国分布</a>
					</div>
					<div class="row">
						<a href="${ctx}/role/list/page.do" target="myIframe">角色管理</a>
					</div>
					<div class="row">
						<a href="${ctx}/department/list/page.do" target="myIframe">部门管理</a>
					</div>
					<div class="row">
						<a href="${ctx}/device/list/page.do" target="myIframe">设备管理</a>
					</div>
					<div class="row">
						<a href="${ctx}/station/list/page.do" target="myIframe">服务网点</a>
					</div>
					<div class="row">
						<a href="${ctx}/saleDevice/list/page.do" target="myIframe">设备销售</a>
					</div>


					<div class="row">
						<a href="${ctx}/page/report/baseReport.do" target="myIframe">基础报表</a>
					</div>
				</div>
				<div class="col-md-9 right">
					<iframe name="myIframe" class="col-md-12"></iframe>
				</div>
			</div>

		</div>
	</div>
</body>
</html>