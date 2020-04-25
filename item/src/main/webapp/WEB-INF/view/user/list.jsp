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
<title>用户列表</title>
</head>
<body>
	<div class="container">
		<table
			class="text-center table-hover table-bordered table-striped table">
			<tr>
				<td colspan="111">
					<form class="navbar-form navbar-left" method="post"
						action="${ctx}/user/list/page">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="人员名称"
								name="searchKey" value="${searchKey}">
						</div>
						<input type="submit" class="btn btn-default" value="提交">
					</form>
				</td>
			</tr>
			<tr>
				<td>账号</td>
				<td>名称</td>
				<td>姓名</td>
				<td>性别</td>
				<td>民族</td>
				<td>生日</td>
				<td>创建时间</td>
				<td>角色</td>
				<td>部门</td>
				<td>操作： <a href="${ctx}/user/add/page">增加</a>
				</td>
			</tr>
			<c:forEach items="${list}" var="user">
				<tr>
					<td>${user.account}</td>
					<td>${user.userName}</td>
					<td>${user.realName}</td>
					<td><c:if test="${user.sex==1}">男</c:if> <c:if
							test="${user.sex==2}">女</c:if></td>
					<td>${user.nation}</td>
					<td><fmt:formatDate value="${user.birthday}"
							pattern="MM DD" /></td>
					<td><fmt:formatDate value="${user.createTime}"
							pattern="MM-DD HH:mm:ss" /></td>
					<td>暂时没有</td>
					<td>${user.departmentName}</td>
					<td>
						<a href="${ctx}/user/add/page">删除</a> 
						<a href="${ctx}/user/add/page">修改</a> 
						<a href="${ctx}/user/messageDetail?userId=${user.userId}">查看详细</a>
					</td>
				</tr>

			</c:forEach>

		</table>

	</div>
</body>
</html>