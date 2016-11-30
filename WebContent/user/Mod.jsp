<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
  <%@page import="com.org.serviceImp.UserServiceImp"%> 
    <%@page import="com.org.domain.User"%> 
     <%@page import="java.util.Map"%> 
   
    <%
    String ausername=request.getParameter("username");
    
    Map auser=new UserServiceImp().getUserByName(ausername);
    String aid = auser.get("Id").toString();

    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="../css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../css/reset.css">
<link rel="stylesheet" type="text/css" href="../css/Add.css">
</head>
<body>
  <!-- 导航栏开始 -->
  <div id="nav">
    <div class="wrapper">
      <!-- logo图片开始 -->
      <div class="logo">
		<img src="../images/logo.png">
	</div>
      <!-- logo图片结束 -->
      <div class="logo">|注册学生健康管理平台账号</div>
      <div id="return"><a href="#">回到主页</a></div>
    </div>
  </div>
  <!-- 导航栏结束 -->
  <!-- 注册区开始 -->
  <div id="main">
    <!-- 表单区开始 -->
    <div class="wrapper">
      <form action="../UserMod" method="post" id="form1">
        <div id="left" class="left">
          <input type="hidden" type="text" name="user_id" value=<%=aid%> >
          <table>
            <tr>
              <td width="151" class="center">用户名:</td>
              <td width="439">
                <input name="user_name" type="text" datatype="s5-16" errormsg="用户名至少5个字符,最多16个字符！" id="username" value=<%=ausername%>>
              </td>
            </tr> 
            <tr>
              <td class="center">密码:</td>
              <td>
                <input name="user_pwd" type="password" id="userpwd" datatype="n6-8" errormsg="密码必须是6到8位数字">
              </td>
            </tr>
            <tr>
              <td class="center">确认密码:</td>
              <td>
                <input name="rp_user_pwd" type="password" id="rp_user_pwd" datatype="*" recheck="user_pwd" errormsg="两次密码输入不一致">
              </td>
            </tr>
            <tr>
              <td class="center">验证码:</td>
              <td>
                <input name="user_check" type="text" id="usercheck" datatype="*" recheck="check_num" errormsg="验证码错误">
              </td>
            </tr>
            <tr>
              <td class="center">&nbsp;</td>
              <td>
                <div id="ceknum">
                  
                </div>
                <input type="hidden" id="checknum" name="check_num" value="1234">
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <button type="submit" class="btn1" id="submit" style="margin-left:152px;">保存</button> 
             </td>
            </tr>
          </table>
        </div>
      </form>
      <div id="right">
        马上登录?
        <div class="btn1">
          <a href="../admin/Login.jsp">登录</a>
        </div>
      </div>
    </div>
    <!-- 表单区结束 -->
  </div>
  <!-- 注册区结束 -->
  <!-- 底部开始 -->
  <div id="footer">
     <div class="wrapper">
			<ul>
				<li>
					<a href="#" class="tith">关于我们</a>
				</li>
				<li>
					<a href="#" class="tith">合作媒体</a>
				</li>
				<li>
					<a href="#" class="tith">联系我们</a>
				</li>
				<li>
					<a href="#" class="tith">隐私声明</a>
				</li>
				<li>
					<a href="#" class="tith">版权声明</a>
				</li>
				<li>
					<a href="#" class="tith">加入我们</a>
				</li>
				<li style="border-right:none">
					<a href="#" class="tith">关于健康</a>
				</li>
			</ul>
			<div class="copyright">&copy;1998-2016 健康管理平台 版权所有 TRENDS.COM.CN All Rights Reserved. | 京ICP备08004417号-19</div>
		</div>
  </div>
  <!-- 底部结束 -->

  <script type="text/javascript" src="../js/jquery.js"></script>
  <script type="text/javascript" src="../js/Validform_v5.3.2_ncr_min.js"></script>
  <script type="text/javascript">

    $(document).ready(function(e) {

      //产生四个随机数
      var random = '';
      function getRandom() {
        for(var i = 0;i <= 3;i ++) {
          random += parseInt(10*Math.random()); 
        }
        //赋值验证码图片
        $('#ceknum').html(random);
        $('#checknum').val(parseInt(random));
        random = '';
      }

      getRandom();

      //点击验证码图片事件
      $('#ceknum').click(function(event) {
        getRandom();
      });

      //一行代码搞定，提交表单的时候会自动触发验证程序，如果没有空单元格必须使用tiptype:3
      $('#form1').Validform({
        tiptype:3 
      });

    });

  </script>
</body>
</html>