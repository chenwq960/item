<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<title>登录页面</title>
<!-- 页面图标 -->
 <link rel="icon" href="${ctx}/static/images/icoheader.png" type="image/x-icon">  <!-- //在网页标题左侧显示图标 -->
<link rel="stylesheet" href="/static/css/model.css">
<link rel="stylesheet" href="/static/css/iconfont.css">

<script src="/static/js/jquery.js"></script>
<script src="/static/js/model.js"></script>
<!-- 导入条纹模板 -->
<script src="${ctx}/static/css/stripe/modernizr-2.7.2.js"></script>
<link rel="stylesheet" href="${ctx}/static/css/stripe/colpick.css">
<link rel="stylesheet" href="${ctx}/static/css/stripe/jquery.nouislider.css">
<link rel="stylesheet" href="${ctx}/static/css/stripe/style.css">
</head>
<body>
	<div class="login-banner" style="height:200px;opacity:.8;"></div>
	<div class="login-box">
		<div class="box-con tran">
			<div class="login-con f-l">
				<form class="model"  action="/user/login" method="post">
					<div class="form-group">
						<input type="text" placeholder="邮箱/手机号码"   name="account"/> <span
							class="error-notic">邮箱/手机号码不正确</span>
					</div>
					<div class="form-group">
						<input type="password" style="width:73%" placeholder="密码"  name="password"> <span
							class="error-notic">密码不正确</span>
							<input type="text" style="width:25%" placeholder="验证码"  name="yzm"> 
					</div>
					<div class="form-group">
						
						<button style="width:63%" type="submit" class="tran pr" onclick="form.submit()">
							<a href="javascript:;" class="tran">登录</a> <img class="loading"
								src="${ctx}/static/images/loading.gif" style="display: block">
						</button>
						<button style="width:34%" type="submit" class="tran pr" onclick="getYzm()">
							<a href="javascript:;" class="tran">获取验证码</a> <img class="loading"
								 style="display: block">
						</button>
					</div>

				</form>
				<div class="from-line"></div>
				<div class="form-group">
					<a href="javascript:;" class="move-signup a-tag tran blue-border">还没有帐号？免费注册<i
						class="iconfont tran">&#xe606;</i></a>
				</div>
				<div class="form-group">
					<a href="javascript:;" class="move-reset a-tag tran">忘记密码？重置 <i
						class="iconfont tran">&#xe606;</i></a>
				</div>
				<div class="form-group">
					<a href="javascript:;" class="move-other a-tag tran">使用第三方帐号登录<i
						class="iconfont tran">&#xe606;</i></a>
				</div>
			</div>
			<!-- 登录 -->
			<div class="signup f-l">
				<div class="form-group">
					<div class="signup-form">
						<input type="text" placeholder="邮箱" class="email-mobile"
							onblur="verify.verifyEmail(this)"> <a href="javascript:;"
							class="signup-select">手机注册</a>
					</div>
					<span class="error-notic">邮箱格式不正确</span>
				</div>
				<div class="signup-email">
					<div class="form-group">
						<input type="text" placeholder="您的名字">
					</div>
					<div class="form-group">
						<input type="password" placeholder="密码（字母、数字，至少6位）"
							onblur="verify.PasswordLenght(this)"> <span
							class="error-notic">密码长度不够</span>
					</div>
					<div class="form-group">
						<button type="submit" class="tran pr">
							<a href="javascript:;" class="tran">注册</a> <img class="loading"
								src="${ctx}/static/images/loading.gif">
						</button>
					</div>
					<p class="view-clause">
						点击注册，即同意我们的 <a href="#">用户隐私条款</a>
					</p>
				</div>
				<!-- 邮箱注册 -->
				<div class="signup-tel" style="display: none">
					<div class="signup-form" id="message-inf" style="display: none">
						<input type="text" placeholder="短信验证码" style="width: 180px;"
							onblur="verify.VerifyCount(this)"> <a href="javascript:;"
							class="reacquire">重新获取（59）</a> <span class="error-notic">验证码输入错误</span>
					</div>
					<div class="form-group">
						<button type="submit" class="tran get-message pr" onclick="getYzm()">
							<a href="javascript:;" class="tran">获取短信验证码</a> <img
								class="loading" src="${ctx}/static/images/loading.gif">
						</button>
					</div>
				</div>
				<!-- 手机号码注册 -->
				<div class="from-line"></div>
				<div class="form-group">
					<a href="javascript:;" class="move-login a-tag tran blue-border">已有帐号？登录<i
						class="iconfont tran">&#xe606;</i></a>
				</div>
				<div class="form-group">
					<a href="javascript:;" class="move-other a-tag tran">使用第三方帐号登录<i
						class="iconfont tran">&#xe606;</i></a>
				</div>
			</div>
			<!-- 注册 -->
			<div class="other-way f-l">
				<div class="form-group">
					<button type="submit" class="tran pr">
						<a href="javascript:;" class="tran">QQ帐号登录</a> <img
							class="loading" src="${ctx}/static/images/loading.gif">
					</button>
				</div>
				<div class="form-group">
					<button type="submit" class="tran pr">
						<a href="javascript:;" class="tran">新浪微博帐号登录</a> <img
							class="loading" src="${ctx}/static/images/loading.gif">
					</button>
				</div>
				<div class="form-group">
					<button type="submit" class="tran pr">
						<a href="javascript:;" class="tran">微信帐号登录</a> <img
							class="loading" src="${ctx}/static/images/loading.gif">
					</button>
				</div>
				<div class="form-group">
					<button type="submit" class="tran pr">
						<a href="javascript:;" class="tran">网易帐号登录</a> <img
							class="loading" src="${ctx}/static/images/loading.gif">
					</button>
				</div>
				<div class="from-line"></div>
				<div class="form-group">
					<a href="javascript:;" class="move-signup a-tag tran blue-border">还没有帐号？免费注册<i
						class="iconfont tran">&#xe606;</i></a>
				</div>
				<div class="form-group">
					<a href="javascript:;" class="move-login a-tag tran">已有帐号？登录<i
						class="iconfont tran">&#xe606;</i></a>
				</div>
			</div>
			<!-- 第三方登录 -->
			<div class="mimachongzhi f-l">
				<div class="form-group">
					<input type="text" name="emailModel" placeholder="请输入您的邮箱地址"> <span
						class="error-notic">邮箱格式不正确</span>
				</div>
				<div class="form-group">
					<button onclick="sendEmail()" type="submit" class="tran pr">
						<a href="javascript:;" class="tran">发送重置密码邮件</a> <img
							class="loading" src="${ctx}/static/images/loading.gif">
					</button>
				</div>
				<div class="from-line"></div>
				<div class="form-group">
					<a href="javascript:;" class="move-signup	a-tag tran blue-border">还没有帐号？免费注册<i
						class="iconfont tran">&#xe606;</i></a>
				</div>
				<div class="form-group">
					<a href="javascript:;" class="move-login a-tag tran">已有帐号？登录<i
						class="iconfont tran">&#xe606;</i></a>
				</div>
			</div>
			<!-- 密码重置 -->
			<div class="mobile-success f-l">
				<p>
					手机号 <span>186****7580</span> 验证成功
s				<p>
					请完善您的账号信息，您也可以<a href="#">绑定现有账号</a>
				</p>
				<div class="form-group">
					<input type="text" placeholder="邮箱" class="email-mobile"
						onblur="verify.verifyEmail(this)" /> <span class="error-notic">邮箱格式不正确</span>
				</div>
				<div class="form-group">
					<input type="text" placeholder="您的名字">
				</div>
				<div class="form-group">
					<input type="password" placeholder="密码（字母、数字，至少6位）"
						onblur="verify.PasswordLenght(this)" /> <span class="error-notic">密码长度不够</span>
				</div>
				<div class="form-group">
					<button type="submit" class="tran pr">
						<a href="javascript:;" class="tran">注册</a> <img class="loading"
							src="${ctx}/static/images/loading.gif">
					</button>
				</div>
				<p class="view-clause">
					点击注册，即同意我们的 <a href="#">用户隐私条款</a>
				</p>
			</div>
			<!-- 手机注册成功添补信息 -->
		</div>
	</div>
	<!-- 導入條紋模板  html -->
<div id="wavybg-wrapper" style="width: 100%; height:120%;z-index:-1;position: absolute;top:0px;opacity:.3;"> 
    <canvas >Your browser does not support HTML5 canvas.</canvas>
</div>
<div class="sidebar-wrapper">
	<div class="intro">
		<h1>主题模板</h1>
		<div class="created-by">by  cwq.com.cn </div>
	</div>
	<div style="clear:both"></div>
	<div class="generator-form-wrap">
		<form class="generator-params">
			<h2>Smoke style</h2>
			<div class="input-group">
				<label for="gradientStart">Gradient start:</label>
				<input type="text" id="gradientStart" name="gradientStart" value="#000000" class="color-picker gradient-start"></input>
			</div>
			<div class="input-group">
				<label for="gradientEnd">Gradient end:</label>
				<input type="text" id="gradientEnd" name="gradientEnd" class="color-picker gradient-end" value="#222222"></input>
			</div>
			<div class="input-group">
				<label for="smokeOpacity">间隔程序: <span class="value">10%</span></label>
				<div class="smokeOpacity-slider"></div>
				<input type="hidden" id="smokeOpacity" name="smokeOpacity" value="10" class="slider"></input>
			</div>
			<div class="input-group">
				<label for="radiusSize">扩散程度: <span class="value">200%</span></label>
				<div class="radiusSize-slider"></div>
				<input type="hidden" id="radiusSize" name="radiusSize" value="100" class=""></input>
			</div>
			<div class="input-group">
				<label for="lineWidth">Line width: <span class="value">2px</span></label>
				<div class="lineWidth-slider"></div>
				<input type="hidden" id="lineWidth" name="lineWidth" value="2" class=""></input>
			</div>
			<div class="input-group">
				<label for="numCircles">Smokes #: <span class="value">1</span></label>
				<div class="numCircles-slider"></div>
				<input type="hidden" id="numCircles" name="numCircles" value="1" class=""></input>
			</div>
			<h2>Background style</h2>
			<div class="input-group">
				<label for="bgColorOuter">Outer color:</label>
				<input type="text" id="bgColorOuter" name="bgColorOuter" class="color-picker color-outer" value="#666666"></input>
			</div>
			<div class="input-group">
				<label for="bgColorInner">Inner color:</label>
				<input type="text" id="bgColorInner" name="bgColorInner" class="color-picker color-inner" value="#ffffff"></input>
			</div>
			<h2>Download size</h2>
			<div class="input-group">
				<label for="downloadWidth">Width (px):</label>
				<input type="text" id="downloadWidth" name="downloadWidth"></input>
			</div>
			<div class="input-group">
				<label for="downloadHeight">Height (px):</label>
				<input type="text" id="downloadHeight" name="downloadHeight"></input>
			</div>
			<h2 id="samples-section">主题模板</h2>
			<div class="input-group samples">
				<a href="#" class="sample-smoke" data-id="0"><img src="${ctx}/static/images/img/samples/small/sample-1.jpg" alt=""></a>
				<a href="#" class="sample-smoke" data-id="1"><img src="${ctx}/static/images/img/samples/small/sample-2.jpg" alt=""></a>
				<a href="#" class="sample-smoke" data-id="2"><img src="${ctx}/static/images/img/samples/small/sample-3.jpg" alt=""></a>
				<a href="#" class="sample-smoke" data-id="3"><img src="${ctx}/static/images/img/samples/small/sample-4.jpg" alt=""></a>
				<a href="#" class="sample-smoke" data-id="4"><img src="${ctx}/static/images/img/samples/small/sample-5.jpg" alt=""></a>
				<a href="#" class="sample-smoke" data-id="5"><img src="${ctx}/static/images/img/samples/small/sample-6.jpg" alt=""></a>
				<a href="#" class="sample-smoke" data-id="6"><img src="${ctx}/static/images/img/samples/small/sample-7.jpg" alt=""></a>
				<a href="#" class="sample-smoke" data-id="7"><img src="${ctx}/static/images/img/samples/small/sample-8.jpg" alt=""></a>
				<a href="#" class="sample-smoke" data-id="8"><img src="${ctx}/static/images/img/samples/small/sample-9.jpg" alt=""</a>
				<a href="#" class="sample-smoke" data-id="9"><img src="${ctx}/static/images/img/samples/small/sample-10.jpg" alt=""></a>
				<a href="#" class="sample-smoke" data-id="10"><img src="${ctx}/static/images/img/samples/small/sample-11.jpg" alt=""></a>
				<a href="#" class="sample-smoke" data-id="11"><img src="${ctx}/static/images/img/samples/small/sample-12.jpg" alt=""></a>
			</div>
		</form>
	</div>
	<div style="clear:both"></div>
	<div class="buttons-wrap">
		<div class="btn btn-grey btn-samples">主题切换</div>
		<div class="btn btn-grey btn-generate">重新加载</div>
		<div class="btn btn-grey btn-download">图片下载</div>
	</div>
</div>
<script src="${ctx}/static/js/stripe/jquery-1.11.0.min.js"></script>
<script src="${ctx}/static/js/stripe/colpick.js"></script>
<script src="${ctx}/static/js/stripe/jquery.nouislider.min.js"></script>
<script src="${ctx}/static/js/stripe/jquery.nicescroll.min.js"></script>
<script src="${ctx}/static/js/stripe/builder_scripts.js"></script>
<script src="${ctx}/static/js/stripe/waterpipe.js"></script>

<script type="text/javascript">
	function sendEmail(){
		alert($("[name=emailModel]").val())
		 $.ajax({
			url:"/user/get/password",
			data:{name:$("[name=emailModel]").val()},
			type:"POST",
			dataType:"JSON",
			success:function(result){
				console.log(result)

				
			}
		}) 
	}
	function getYzm(){
		alert("dsfjk")
		$.ajax({
			url:"/user/getYzm",
			data:$(".model").serialize(),
			dataType:"JSON",
			type:"POST",
			success:function(result){
				console.log(result)
			}
			
		})

	}
	
</script>
</body>
</html>