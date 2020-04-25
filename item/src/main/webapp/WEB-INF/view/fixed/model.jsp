<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="{pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/static/js/jquery-1.8.3.js"></script>
<title>model</title>
</head>
<body>
	<c:forEach items="${list}" var="model">
			<td class="td"><font class="font">${model.provinceId}${model.cityId}${model.countyId}</font></td><br/>
	</c:forEach>
<!-- 	<button onclick="show()">四大皆空</button> -->
</body>
<script type="text/javascript">
	$(function(){
		setTimeout("test()","2000");

		})
		
		
		
	function test(){
		
		for(let i = 0 ; i < $(".font").length ; i ++){
			console.log($(".font").eq(i).html())
			}
		
			
		}
		
</script>
</html>