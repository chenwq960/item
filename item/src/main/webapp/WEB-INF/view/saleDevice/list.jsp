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
<title>销售列表</title>
</head>
<body>
	<div class="container">
		<table
			class="text-center table-hover table-bordered table-striped table">
			<tr>
				<td colspan="111">
					<form class="navbar-form navbar-left" method="post" action="${ctx}/saleDevice/list/page">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="销售设备名称" name="searchKey" value="${searchKey}">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="销售数量   销售时间" name="startTime" value="${startTime}">
						</div>
						<input type="submit" class="btn btn-default" value="提交">
					</form>
				</td>
			</tr>
			<tr>
				<td>设备名称： </td>
				<td>型号：  </td>
				<td>销售人员：</td>
				<td>网点：  </td>
				<td>数量</td>
				<td>销售时间：</td>
				<td>创建人：</td>
				<td>创建时间：</td>
				<td>操作：
					<a href="${ctx}/saleDevice/add/page">增加</a>
				</td>
			</tr>
			<c:forEach items="${list}" var="saleDevice">
				<tr>
					<td>${saleDevice.diviceNameModel.deviceName}</td>
					<td>${saleDevice.diviceNameModel.deviceModel}</td>
					<td>${saleDevice.userNameModel.userName}</td>
					<td>${saleDevice.stationNameModel.stationName}</td>
					<td>${saleDevice.saleNumber}</td>
					<td>
						<fmt:formatDate value="${saleDevice.saleTime}" pattern="MM-DD HH:mm"/>
					</td>
					<td>${saleDevice.userNameModel.account}</td>
					<td>
						<fmt:formatDate value="${saleDevice.createTime}" pattern="MM-DD HH:mm"/>
					</td>
					<td>
						<a href="${ctx}/saleDevice/delete?saleDeviceId=${saleDevice.recordId}">删除</a>
						<a href="${ctx}/saleDevice/detail?saleDeviceId=${saleDevice.recordId}">修改</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>