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
<title>销售设备添加</title>
<style type="text/css">
	form > *{
		margin-top:15px;
	}
	
</style>
</head>
<body>
	<div class="container">
		<h3>销售设备增加</h3>
		<form action="${ctx}/saleDevice/update" method="post">
			<div class="input-group">
				<input type="hidden" name="recordId" value="${saleDevice.recordId}">
				<span>销售设备：</span>
				<select name="deviceId">
					<c:forEach items="${device}" var="device">
						<c:if test="${saleDevice.deviceId == device.deviceId}">
							<option selected="selected" value="${device.deviceId}">${device.deviceName}</option>
						</c:if>
						<c:if test="${saleDevice.deviceId != device.deviceId}">
							<option value="${device.deviceId}">${device.deviceName}</option>
						</c:if>
					</c:forEach>
				</select>
			</div>
			
			<div class="input-group">
				<span>销售人员：</span>
				<select name="saleUser">
					<c:forEach items="${user}" var="user">
						<c:if test="${saleDevice.saleUser == user.userId}">
							<option selected="selected" value="${user.userId}">${user.account}</option>
						</c:if>
						<c:if test="${saleDevice.saleUser != user.userId}">
							<option value="${user.userId}">${user.account}</option>
						</c:if>
					</c:forEach>
				</select>
			</div>
			
			<div class="input-group">
				<span>服务网点：</span>
				<select name="stationId">
					<c:forEach items="${station}" var="station">
						<c:if test="${saleDevice.stationId == station.stationId}">
							<option selected="selected" value="${station.stationId}">${station.stationName}</option>
						</c:if>
						<c:if test="${saleDevice.stationId != station.stationId}">
							<option value="${station.stationId}">${station.stationName}</option>
						</c:if>
					</c:forEach>
				</select>
			</div>
			<!-- <div class="input-group">
				销售时间：<input type="text" class="form-control" placeholder="销售时间" name="saleTime" >
			</div> -->
			<div class="input-group">
				销售数量：<input type="text" class="form-control" placeholder="销售数量" name="saleNumber" value="${saleDevice.saleNumber}">
			</div>
			<div class="input-group">
				备注：<br/><!-- <input type="text" class="form-control" placeholder="角色名称" name="remark"> -->
				<textarea rows="" cols="" name="remark">
					${saleDevice.remark}
				</textarea>
			</div>
			<input type="submit" value="提交" class="btn btn-info">
		</form>
	</div>
</body>
</html>