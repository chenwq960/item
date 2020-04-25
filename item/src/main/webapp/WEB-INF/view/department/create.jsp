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
<title>部门添加</title>
<style type="text/css">
	form > *{
		margin-top:15px;
	}
	
</style>
</head>
<body>
	<div class="container">
		<h3>部门名称</h3>
		<form action="${ctx}/department/create" method="post">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="部门名称" name="departmentName">
			</div>
			<input type="submit" value="提交" class="btn btn-info">
		</form>

	</div>
</body>
</html>