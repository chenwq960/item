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
<title>人员添加</title>
<style type="text/css">
form>* {
	margin-top: 15px;
}
</style>
</head>
<body>
	<div class="container">
		<h3>人员增加</h3>
		<form action="${ctx}/user/create" method="post" enctype="multipart/form-data">
			<div class="input-group">
				登录账号：<input type="text" class="form-control" placeholder="登录账号"
					name="account" onblur="isNull()">
			</div>
			<div class="input-group">
				人员名称：<input type="text" class="form-control" placeholder="人员名称"
					name="userName">
			</div>
			<div class="input-group">
				登录密码：<input type="text" class="form-control" placeholder="登录密码"
					name="password">
			</div>

			<div class="input-group">
				身份证正面：<input type="file" name="photo">
			</div>
			<div class="input-group">
				身份证反面：<input type="file">
			</div>
			<div class="input-group">
				手机号：<input type="test" name="tel" class="form-control" placeholder="手机号">
			</div>
			<div class="input-group">
				邮箱号：<input type="test" name="email" class="form-control" placeholder="邮箱号码">
			</div>
			<div class="input-group">
				<span>所属部门：</span> <select name="departmentId">
					<c:forEach items="${department}" var="department">
						<option value="${department.departmentId}">${department.departmentId}${department.departmentName}</option>
					</c:forEach>
				</select>
			</div>
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
<script type="text/javascript">
	function isNull(){
		$.ajax({
			url:"/user/isNull",
			data:{name:$("[name=account]").val()},
			dataType:"JSON",
			type:"POST",
			success:function(result){
				if(result==0){
					alert("该用户名已经存在")
					$("[name=account]").val('')
				}
			}
		})
		
	}
	
</script>
</html>