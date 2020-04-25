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
<title>部门列表</title>
</head>
<body>
	<div class="container">
		<table
			class="text-center table-hover table-bordered table-striped table">
			<tr>
				<td colspan="111">
					<form class="navbar-form navbar-left" method="post" action="${ctx}/station/list/page">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="网点名称" name="searchKey" value="${searchKey}">
						</div>
						<input type="submit" class="btn btn-default" value="提交">
					</form>
				</td>
			</tr>
			<tr>
				<td> 网点名称： </td>
				<td>省份：  </td>
				<td>市区：</td>
				<td>县城：  </td>
				<td>创建人</td>
				<td>创建时间：</td>
				<td>操作：
					<a href="${ctx}/station/add/page">增加</a>
				</td>
			</tr>
			<c:forEach items="${list}" var="station">
				<tr>
					<td>${station.stationName}</td>
					<td>${station.provinceId }   </td>
					<td>${station.cityId }   </td>
					<td>${station.countyId }   </td>
					<td>${station.currentUserName }   </td>
					<td>
						<fmt:formatDate value="${station.createTime}" pattern="MM-DD  HH:mm"/>
					</td>
					<td>	
						<a href="${ctx}/station/delete?stationId=${station.stationId}">删除</a>
						<a href="${ctx}/station/detail?stationId=${station.stationId}">修改</a>
					</td>
				</tr>

			</c:forEach>
		</table>
	</div>
</body>
</html>