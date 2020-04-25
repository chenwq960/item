<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/static/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="/static/js/jquery-1.8.3.js"></script>
<title>设备列表</title>
</head>
<body>
	<div class="container">
		<table
			class="text-center table-hover table-bordered table-striped table">
			<tr>
				<td colspan="111">
					<form class="navbar-form navbar-left" method="post"
						action="${ctx}/device/list/page">
						<div class="form-group">
							<input type="text" class="form-control" placeholder=""
								name="searchKey" value="${searchKey}">
						</div>
						<input type="submit" class="btn btn-default" value="提交">
					</form>
				</td>
			</tr>
			<tr>
				<td>设备名称：</td>
				<td>设备编号：</td>
				<td>设备型号：</td>
				<td>创建人：</td>
				<td>创建时间</td>
				<td>操作：<a href="${ctx}/device/add/page">新增</a></td>
			</tr>
			<c:forEach items="${list }" var="device">
				<tr>
					<td>${device.deviceName }</td>	
					<td>${device.deviceCode  }</td>	
					<td>${device.deviceModel  }</td>	
					<td>${device.deviceCreateUser  }</td>	
					<td>
						<fmt:formatDate value="${device.createTime  }" pattern="YYYY-MM-DD HH:mm:ss" />
					</td>	
					<td>
						<a href="${ctx}/device/delete?deviceId=${device.deviceId}">删除</a>
						<a href="${ctx}/device/detail?deviceId=${device.deviceId}">修改</a>
					</td>	
				
				</tr>
				
				
			</c:forEach>
		</table>
	</div>

</body>
</html>