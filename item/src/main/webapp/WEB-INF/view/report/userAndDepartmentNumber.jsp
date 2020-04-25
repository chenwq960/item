<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<title>ECharts</title>
 <script type="text/javascript" src="/static/js/jquery-1.8.3.js"></script>
<script src="${ctx}/static/js/echarts.min.js"></script>

</head>

<body>
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width：970px; height:400px;"></div>
	<script type="text/javascript">
		var departmentName = []
		var departmentData = []
	 $.ajax({
		      url:"${ctx}/report/getUserAndDepartmentNumber",    //请求的url地址
		      dataType:"json",   //返回格式为json
		      async:true,//请求是否异步，默认为异步，这也是ajax重要特性
		      type:"POST",   //请求方式
		     success:function(req){
		         console.log(req)
		         for(let Dname in req){
		        	 departmentName.push(Dname)
		        	 departmentData.push({
						name:Dname,
						value:req[Dname]
			       	})
			     }
		        var dom = document.getElementById('main');
		 		var chart = echarts.init(dom);
		 		option = {
		 			title : {
		 				text : '公司各部门占比',
		 			},
		 			tooltip : {
		 				trigger : 'item',
		 				formatter : '{a} <br/>{b} : {c} ({d}%)'
		 			},
		 			legend : {
		 				left : 'center',
		 				top : 'bottom',
		 				data : departmentName
		 			},
		 			toolbox : {
		 				show : true,
		 				feature : {
		 					mark : {
		 						show : true
		 					},
		 					dataView : {
		 						show : true,
		 						readOnly : false
		 					},
		 					magicType : {
		 						show : true,
		 						type : [ 'pie', 'funnel' ]
		 					},
		 					restore : {
		 						show : true
		 					},
		 					saveAsImage : {
		 						show : true
		 					}
		 				}
		 			},
		 			series : [ {
		 				name : '半径模式',
		 				type : 'pie',
		 				radius : [ 20, 110 ],
		 				center : [ '25%', '50%' ],
		 				roseType : 'radius',
		 				label : {
		 					show : false
		 				},
		 				emphasis : {
		 					label : {
		 						show : true
		 					}
		 				},
		 				data : departmentData
		 			}, {
		 				name : '面积模式',
		 				type : 'pie',
		 				radius : [ 30, 110 ],
		 				center : [ '75%', '50%' ],
		 				roseType : 'area',
		 				data :departmentData
		 			} ]
		 		};

		 		chart.setOption(option);





















			     
		     },
		    
		     error:function(){
		         //请求出错处理
		     }
		 });




















	
		
	</script>
</body>
</html>