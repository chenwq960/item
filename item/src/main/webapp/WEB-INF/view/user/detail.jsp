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
<title>人员详细</title>
<style type="text/css">
form>* {
	margin-top: 15px;
}
</style>
</head>
<body>
	<div class="container">
		<h3>人员详细</h3>
		<form action="${ctx}/user/create" method="post"
			enctype="multipart/form-data">
			<div class="input-group">
				登录账号：<input type="reset" class="form-control" value="${user.account}"
					placeholder="登录账号" name="account">
			</div>
			<%-- <div class="input-group">
				登录密码：<input type="text" class="form-control" placeholder="登录密码"
					name="password" value="${user.password}">
			</div> --%>
			<div class="input-group">
				用户名名称：<input type="reset" class="form-control" placeholder="登录密码"
					name="password" value="${user.realName}">
			</div>
			<div class="input-group">
				真实名称：<input type="reset" class="form-control" placeholder="登录密码"
					name="password" value="${user.realName}">
			</div>
			<div class="input-group">
				性别：<input type="reset" class="form-control" placeholder="登录密码"
					name="password" value="${user.sex=='1'?'男':'女'}">
			</div>
			<div class="input-group">
				民族：<input type="reset" class="form-control" placeholder="登录密码"
					name="password" value="${user.nation}">
			</div>
			<div class="input-group">
				生日：<input type="reset" class="form-control" placeholder="登录密码"
					name="password" value="${user.birthday}">
			</div>
			<div class="input-group">
				身份证号：<input type="reset" class="form-control" placeholder="登录密码"
					name="password" value="${user.idCard}">
			</div>
			<div class="input-group">
				籍贯：<input type="reset" class="form-control" placeholder="登录密码"
					name="password" value="${user.address}">
			</div>
			<div class="input-group">
				所属部门：<input type="text" class="form-control" placeholder="登录密码"
					name="password" value="${user.address}">
			</div>
			身份证照片：<br/>
			<img alt="" src="${user.idCardFront}" width="100px"><br/>
			<%-- <div class="input-group">
				暂时无/等待完善： <span>担任角色：</span> <select name="stationId">
					<c:forEach items="${role}" var="role">
						<option value="${role.roleId}">${role.roleName}</option>
					</c:forEach>
				</select>
			</div> --%>
			<input type="submit" value="提交" class="btn btn-info">
		</form>
	</div>
</body>
</html>