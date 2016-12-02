<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.org.serviceImp.UserServiceImp"%>
   	 <%@page import="com.org.domain.User"%>
   	 <%@page import="java.util.Map"%>
   	 <%
      String id = request.getParameter("id");
   	 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	a {
		text-decoration: none;
		color: #fff;
	}
	div {
		float: left;
		margin-top:20px;
		text-align: center;
	}
	#text {
		width: 150px;
		height: 30px;
	}
	#text ul li {
		line-height: 30px;
		position: relative;
		background: #70B5A8;
		color: #fff;
		font-weight: bold;
	}
	#text ul li a {
		width: 150px;
		display: block;
		text-align: center;
	}
	#text ul li ul {
		position: absolute;
		display: none;
	}
	#text ul li ul li {
		border-top:1px solid #E6F2F0;
	}
	#text ul li:hover > ul {
		display: block;
	}
	
</style>
</head>
<body>
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width: 900px;height:600px;"></div>
	<div id="text">
		<ul>
			<li>
				马上测试
				<ul>
					<li><a href="#" id="admin/health">体质评估测试</a></li>
					<li><a href="#" id="admin/vitamin">营养评估测试</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<input type="hidden" value=<%=id%> id="id">
	<!-- 引入 echarts.js -->
	<script src="js/echarts.min.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		window.onload = function(){	

			var id = $("#id").val();
			console.log($("#id").val());
			console.log(id);
			var Cdata = [];
			var Ndata = [];

			$.ajax({
				async:false,
				url: 'ConsGetMsg',
				type: 'POST',
				dataType: 'json',
				data: {id: id}
			})
			.done(function(data) {
				Cdata[0] = data.jan;
				Cdata[1] = data.feb;
				Cdata[2] = data.mar;
				Cdata[3] = data.apr;
				Cdata[4] = data.may;
				Cdata[5] = data.june;
				Cdata[6] = data.july;
				Cdata[7] = data.aug;
				Cdata[8] = data.sept;
				Cdata[9] = data.oct;
				Cdata[10] = data.nov;
				Cdata[11] = data.dece;
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
			
			$.ajax({
				async:false,
				url: 'NutGetMsg',
				type: 'POST',
				dataType: 'json',
				data: {id: id},
			})
			.done(function(data) {
				Ndata[0] = data.jan;
				Ndata[1] = data.feb;
				Ndata[2] = data.mar;
				Ndata[3] = data.apr;
				Ndata[4] = data.may;
				Ndata[5] = data.june;
				Ndata[6] = data.july;
				Ndata[7] = data.aug;
				Ndata[8] = data.sept;
				Ndata[9] = data.oct;
				Ndata[10] = data.nov;
				Ndata[11] = data.dece;
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});
						
			console.log(Cdata);
			console.log(Ndata);
			// 基于准备好的dom，初始化echarts实例
			var myChart = echarts.init(document.getElementById('main'));
			// 指定图表的配置项和数据
			option = {
			    tooltip: {
			        trigger: 'axis'
			    },
			    toolbox: {
			        feature: {
			            dataView: {show: true, readOnly: false},
			            magicType: {show: true, type: ['line', 'bar']},
			            restore: {show: true},
			            saveAsImage: {show: true}
			        }
			    },
			    legend: {
			        data:['体质评估','营养评估']
			    },
			    xAxis: [
			        {
			            type: 'category',
			            data: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
			        }
			    ],
			    yAxis: [
			        {
			            type: 'value',
			            name: '得分',
			            min: 0,
			            max: 50,
			            interval: 3,
			            axisLabel: {
			                formatter: '{value}'
			            }
			        }	      
			    ],
			    series: [
			        {
			            name:'体质评估',
			            type:'bar',
			            data:[20, 49, 44, 32, 37, 37, 35, 22, 32, 20, 34, 33]
			        },
			        {
			            name:'营养评估',
			            type:'line',
			            data:[25, 40, 34, 35, 47, 47, 35, 22, 32, 42, 33, 32]
			        }
			    ]
			};

			$.each(Cdata, function(index, val) {
				option.series[0].data[index] = val;
			});

			$.each(Ndata, function(index, val) {
				option.series[1].data[index] = val;
			});



			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
			var health = document.getElementById('health');
			var vitamin = document.getElementById('vitamin');
			// console.log(window.parent);
			health.onclick = function() {
				var rightContent = window.parent.document.getElementById('right-content');
				var iframe = rightContent.firstElementChild;
				iframe.setAttribute('src','healthText.html');
			}
			vitamin.onclick = function() {
				var rightContent = window.parent.document.getElementById('right-content');
				var iframe = rightContent.firstElementChild;
				iframe.setAttribute('src','vitaminText.html');
			}
			

		};
	</script>
</body>
</html>