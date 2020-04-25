<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"
	type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>找回密码</title>
<style type="text/css">
form>div>* {
	margin-top: 20px;
}

.btn-info {
	margin-left: 30px;
}

h4 {
	color: red;
}

a {
	margin-left: 80px;
	margin-top: 70px;
}

.yzm {
	opacity: 0;
}
</style>
</head>
<body>
	<form action="" method="post">
		<div class="col-md-3 col-md-offset-4">
			<%-- <h4>${error }</h4> --%>
			<div class="input-group input-group-lg">
				<span>账号：</span><input type="text" class="form-control"
					placeholder="真实姓名" aria-describedby="sizing-addon1" name="realName">
			</div>
			<div class="input-group input-group-lg">
				<span>请输入预留的邮箱：</span> <input type="text" class="form-control email"
					placeholder="预留手机号" aria-describedby="sizing-addon1" name="telete">
			</div>
			
			<!-- <input type="button" value="提交" class="btn btn-default btn-lg"> -->
			<input type="button" onclick="up()" value="找回密码"
				class="btn btn-default btn-lg"> <span class="miss" style="color:red"></span>
		</div>
	</form>
</body>
<script type="text/javascript">
	/* var a = 59;
	function up() {
		setInterval(function() {
			$(".miss").html(a=a-1)
		}, 1000);
		var telete = $(".model").val()
		alert(telete)
		$.post(
			"/user/ppppp",
			{num:telete},
			function(password){
				alert(password)
			}
		)
	} */

	function up(){
		location.href="${ctx}/user/getPassword?email="+$(".email").val()
	}


	
</script>
</html>