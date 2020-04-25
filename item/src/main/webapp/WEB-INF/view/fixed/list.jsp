<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
body, html {
	width: 100%;
	height: 100%;
	margin: 0;
	font-family: "微软雅黑";
}

#allmap {
	width: 100%;
	height: 100%;
}

p {
	margin-left: 5px;
	font-size: 14px;
}
</style>
<script type="text/javascript"
	src="//api.map.baidu.com/api?v=2.0&ak=EMa7B2aQus6zn4f96HZXniUMSxyzAORL"></script>
<script type="text/javascript"
	src="//api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
<script type="text/javascript"
	src="//api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>
<script type="text/javascript" src="/static/js/jquery-1.8.3.js"></script>
<title>点聚合</title>
<style type="text/css">
.font {
	opacity: 0;
}
</style>
</head>
<body>
	<div id="allmap"></div>
	<p>缩放地图，查看点聚合效果</p>
	<c:forEach items="${list}" var="model">
		<td class="td"><font class="font">${model.provinceId}${model.cityId}${model.countyId}</font></td>
		<br />
	</c:forEach>
</body>
</html>
<script type="text/javascript">
$(function(){
	var arr = []
	//创建promse 对象
	var promises = []
	//setTimeout("test()","2000");
	for(let i = 0 ; i < $(".font").length ; i ++){
		arr[i]=($(".font").eq(i).html())}

	    var map = new BMap.Map("allmap"); // 创建Map实例,设置地图允许的最小/大级别
		map.centerAndZoom(new BMap.Point(116.4035,39.915),5); 
		map.enableScrollWheelZoom(true);
	    map.addControl(new BMap.NavigationControl());
	    map.addControl(new BMap.ScaleControl());
	    map.addControl(new BMap.OverviewMapControl());
	    map.addControl(new BMap.MapTypeControl());
	    var myGeo = new BMap.Geocoder();  
	    var points = [];
	   
	    for(let i = 0; i < arr.length ; i ++){
	    	promises.push(new Promise(function(resolve,reject){
	    		   myGeo.getPoint(arr[i], function(point){      
				        if (point) { 
				        	resolve(new BMap.Marker(point));
				        }else{
				        	reject("解析失败")
					    }    
		    		},"中国")
	    	}))
	    }
	    Promise.all(promises).then(markers =>{
	    	new BMapLib.MarkerClusterer(map, {
				markers: markers
			});
		}).catch(error => alert(error));
	})
	
</script>