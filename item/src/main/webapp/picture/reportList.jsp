<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>詳細圖表</title>
 <link rel="icon" href="${ctx}/static/images/icoheader.png" type="image/x-icon">  <!-- //在网页标题左侧显示图标 -->
<!-- 导入背景 -->
<link rel="stylesheet" href="${ctx}/static/css/reset.min.css">
<link rel="stylesheet" href="${ctx}/static/css/style.css">
<link href="/static/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx}/static/css/fixedStyle.css" rel="stylesheet">
<link href="${ctx}/static/css/reportStyle.css" rel="stylesheet">


<script type="text/javascript" src="/static/js/jquery-1.8.3.js"></script>
<script src="${ctx}/static/js/zzsc.js"></script>
<script src='${ctx}/static/js/dat.gui.min.js'></script>
<script src="${ctx}/static/js/index.js"></script>
<style type="text/css">
</style>
</head>
<body>

	<canvas id="canvas">Canvas is not supported in your browser</canvas>
	<div>
		<div class="row">
			<div class="pull-left  col-md-1  text-center left">
				<div class="row">
					<a href="${ctx}/report/list/page" target="myIframe">员工销售次数</a>
				</div>
				<div class="row">
					<a href="${ctx}/report/goFindCountry" target="myIframe">网点全国占比</a>
				</div>
				
				<div class="row">
					<a href="${ctx}/report/goUserSellNumber" target="myIframe">公司员工销量</a>
				</div>
				<div class="row">
					<a href="${ctx}/report/goUserAndDepartmentNumber" target="myIframe">公司部门占比</a>
				</div>
				<div class="row">
					<a href="${ctx}/main.jsp" target="_self">返回查看列表</a>
				</div>
			</div>
			<div class="pull-right right col-md-7">
				<iframe name="myIframe" class="col-md-12"
					src="${ctx}/report/list/page"></iframe>
			</div>
		</div>
	</div>

</body>
</html>