<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生健康管理平台登录界面</title>
<link rel="stylesheet" type="text/css" href="../css/reset.css">
<link rel="stylesheet" type="text/css" href="../css/login.css">
</head>
<body>
	<form action="../UserCheckLogin" method="post">
	<!-- 登陆区开始 -->
	<div id="main">
		<!-- 头像区开始 -->
		<div id="header">
			<!-- 头像图片开始 -->
			<div id="header-pic"></div>
			<!-- 头像图片结束 -->
		</div>
		<!-- 头像区结束 -->
		<!-- 表单区开始 -->
		<div id="form">
			<div class="input">
				<input type="text" placeholder="用户名" name="username" id="username">
			</div>
			<div class="input">
				<input type="password" placeholder="密码" name="password">
			</div>
		</div>
		<!-- 表单区结束 -->
		<!-- 按钮区开始 -->
		
			<button type="submit" class="btn1">登录</button>
		</form>
		<form action="../user/Add.jsp" method="post">
			<button type="submit" class="btn1">注册</button>
		</form>
		<!-- 按钮区结束 -->
		<!-- 底部开始 -->
		<div id="footer"><a href="#" id="forget">忘记密码</a></div>
		<!-- 底部结束 -->
	</div>
	<!-- 登陆区结束 -->

	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript">
		$('#footer').click(function(event) {
			$('#forget').attr('href','../user/Mod.jsp?username=' + $('#username').val());
		});
		
	</script>
</body>
</html>