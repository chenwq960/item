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
<script type="text/javascript" src="/static/js/jquery-1.8.3.js"></script>
<script src="${ctx}/static/js/echarts.min.js"></script>
<style type="text/css">
	#main{
		font-size:20px;
	}
	
</style>
</head>

<body>
	<div id="main" style="width：970px; height:435px;"></div>

	<script type="text/javascript">
		var dom = document.getElementById('main');
		var chart = echarts.init(dom);
		var countryName = []
		var countryNum = []
		var model = []
		var test = []

		$.ajax({
			type : "GET",
			url : "${ctx}/report/get/Country/Region",
			dataType : "json",
			success : function(data) {
				for ( let name in data) {
					countryName.push(name)
					countryNum.push(data[name])
					model.push(1)
					test.push(2)

				}

				option = {
					angleAxis : {
						type : 'category',
						data :countryName
					},
					radiusAxis : {},
					polar : {},
					series : [ {
						type : 'bar',
						data : countryNum,
						coordinateSystem : 'polar',
						name : 'A',
						stack : 'a'
					}, {
						type : 'bar',
						data :test,
						coordinateSystem : 'polar',
						name : 'B',
						stack : 'a'
					}, {
						type: 'bar',
						data: model,
						coordinateSystem: 'polar',
						name: 'C',
						stack: 'a'
					}],
					legend : {
						show : true,
						data : [ 'A', 'B', 'C' ]
					}
				};

				chart.setOption(option);

			},
			error : function(jqXHR) {
				aler("发生错误：" + jqXHR.status);
			}
		});
	</script>
</body>
</html>