<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>登录页面</title>
<style type="text/css">
form>div>* {
	margin-top: 20px;
}

.btn-info {
	margin-left: 30px;
}
h4{
	color:red;
	}
	
a{
    margin-left: 80px;
    margin-top: 70px;
}

</style>
</head>
<body>
	<form action="/user/login" method="post">
		<div class="col-md-3 col-md-offset-4">
		<h4>${error }</h4>
			<div class="input-group input-group-lg">
				<input type="text" class="form-control" placeholder="Username"
					aria-describedby="sizing-addon1" name="account">
			</div>
			<div class="input-group input-group-lg">
				<input type="password" class="form-control" placeholder="Password"
					aria-describedby="sizing-addon1" name="password">
			</div>
			<input type="submit" value="登录" class="btn btn-default btn-lg">
			<a href="/again.jsp">忘记密码？</a>
		</div>
	</form>
</body>
</html>