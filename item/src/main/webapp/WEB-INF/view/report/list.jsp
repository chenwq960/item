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
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width:700px;height:435px;"></div>
    <script type="text/javascript">
    let deviceNum = []
    $.ajax({
    	      url:"${ctx}/report/get/usersell/stationNumber",    //请求的url地址
    	      dataType:"json",   //返回格式为json
    	      async:true,//请求是否异步，默认为异步，这也是ajax重要特性
    	      type:"GET",   //请求方式
    	      beforeSend:function(){
    	          //请求前的处理
    	      },
    	     success:function(user){
        	    let deviceNum = []
        	    let userName = []
				for(let currentUser in user){
					userName.push(currentUser)
					deviceNum.push(user[currentUser])
				}
				  // 基于准备好的dom，初始化echarts实例
		        var myChart = echarts.init(document.getElementById('main'));

		        // 指定图表的配置项和数据
		        var option = {
		            title: {
		                text: '人员销售次数'
		            },
		            tooltip: {},
		            legend: {
		                data:['销量']
		            },
		            xAxis: {
		                data:userName
		            },
		            yAxis: {},
		            series: [{
		                name: '销量',
		                type: 'bar',
		                data:deviceNum
		            }]
		        };
		        // 使用刚指定的配置项和数据显示图表。
		        myChart.setOption(option);
    	     },
    	     
    	     error:function(){
    	         //请求出错处理
    	     }
    	 });
    </script>
</body>
</html>