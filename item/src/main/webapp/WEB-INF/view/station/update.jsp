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
<title>网点添加</title>
<style type="text/css">
	form > *{
		margin-top:15px;
	}
</style>
</head>
<body>
	<div class="container">
		<h3>部门名称</h3>
		<form action="${ctx}/station/update" method="post">
			<input type="text" name="stationId" value="${station.stationId}">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="网点名称" name="stationName"  value="${station.stationName}">
			</div>
			<select  class="opt1" onchange="updateOne()" name="provinceId"></select>
			<select  class="opt2" onchange="updateTwo()" name="cityId"></select>
			<select  class="opt3" name="countyId">			</select>
			<div class="input-group">
				<input type="text" class="form-control" placeholder="详细地址" name="address" value="${station.address}">
			</div>
			<input type="submit" value="提交" class="btn btn-info">
		</form>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		$.post(
			"${ctx}/station/getRegionList",
			{regionId:0},
			function(region){
				for(let i = 0 ; i < region.length; i ++){
					if(${station.provinceId}  == region[i].regionId){
						$(".opt1").append("<option selected='selected' value="+region[i].regionId+">"+region[i].regionName+"</option>")
					}else{
						$(".opt1").append("<option value="+region[i].regionId+">"+region[i].regionName+"</option>")
					}
					
				}
				updateOne()
			}
		)
	})
	function updateOne(){
			let a = $(".opt1 option:selected").val()
			$(".opt2").empty()
			$.post(
			"${ctx}/station/getRegionList",
			{regionId:a},
			function(region){
				for(let i = 0 ; i < region.length; i ++){
					if(${station.cityId}  == region[i].regionId){
						$(".opt2").append("<option  selected='selected' value="+region[i].regionId+">"+region[i].regionName+"</option>")
					}else{
						$(".opt2").append("<option value="+region[i].regionId+">"+region[i].regionName+"</option>")
					}
				}
				updateTwo()
			}
		)
	}
	function updateTwo(){
		$(".opt3").empty()
		let a = $(".opt2 option:selected").val()
		
		$.post(
		"${ctx}/station/getRegionList",
		{regionId:a},
		function(region){
			for(let i = 0 ; i < region.length; i ++){
				if(i == 0){
					continue
				}else{
					if(${station.countyId}  == region[i].regionId){
						$(".opt3").append("<option  selected='selected' value="+region[i].regionId+">"+region[i].regionName+"</option>")
					}else{
						$(".opt3").append("<option value="+region[i].regionId+">"+region[i].regionName+"</option>")
					}
					
				}
			}
		}
	)
	}
		
	
	
</script>
</html>