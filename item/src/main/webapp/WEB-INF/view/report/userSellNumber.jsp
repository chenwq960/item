<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<title>ECharts</title>
<!-- 引入 echarts.js -->
<script src="${ctx}/static/js/echarts.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/jquery-1.8.3.js"></script>

</head>

<body>
	<div id="main" style="width:720px; height:420px;"></div>
	<script type="text/javascript">
		var dom = document.getElementById('main');
		var chart = echarts.init(dom);

		
				$.ajax({
					url : "${ctx}/report/getUserSellNumber", //请求的url地址
					dataType : "json", //返回格式为json
					async : true,//请求是否异步，默认为异步，这也是ajax重要特性
					type : "POST", //请求方式

					success : function(req) {
						console.log(req)
						var dataAxis = []
						var data = []
						for ( let userName in req) {
							dataAxis.push(userName)
							data.push(req[userName])
						}
						var yMax = 500;
						var dataShadow = [];

						for (var i = 0; i < data.length; i++) {
							dataShadow.push(yMax);
						}

						option = {
							title : {
								text : '公司销量总数',
								subtext : 'Feature Sample: Gradient Color, Shadow, Click Zoom'
							},
							xAxis : {
								data : dataAxis,
								axisLabel : {
									inside : true,
									textStyle : {
										color : '#fff'
									}
								},
								axisTick : {
									show : false
								},
								axisLine : {
									show : false
								},
								z : 10
							},
							yAxis : {
								axisLine : {
									show : false
								},
								axisTick : {
									show : false
								},
								axisLabel : {
									textStyle : {
										color : '#000000'
									}
								}
							},
							dataZoom : [ {
								type : 'inside'
							} ],
							series : [
									{ // For shadow
										type : 'bar',
										itemStyle : {
											color : 'rgba(0,0,0,0.05)'
										},
										barGap : '-100%',
										barCategoryGap : '30%',
										data : dataShadow,
										animation : false
									},
									{
										type : 'bar',
										itemStyle : {
											color : new echarts.graphic.LinearGradient(
													0, 0, 0, 1, [ {
														offset : 0,
														color : '#83bff6'
													}, {
														offset : 0.5,
														color : '#188df0'
													}, {
														offset : 1,
														color : '#293C55'
													} ])
										},
										
										data : data
									} ]
						};
						chart.setOption(option);

					},
					complete : function() {
						//请求完成的处理
					},
					error : function() {
						//请求出错处理
					}
				});
	</script>
</body>
</html>