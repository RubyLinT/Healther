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
	<title>朕的历史</title>
	<link rel="stylesheet" href="css/font.css">
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/history.css">	
</head>
<body>
	 <!-- 导航栏开始 -->
  <div id="nav">
    <div class="wrapper">
      <!-- 左边logo图片开始 -->
      <div class="logo">
      <img src="images/logo.png">
      </div>
      <!-- 左边logo图片结束 -->
      <!-- 中间导航开始 -->
      <div class="center-nav">
        <ul>
          <li id="news"><a href="news.jsp?id=<%=id%>>"><span class="icon-newspaper"></span>&nbsp;医界新闻&nbsp;&nbsp;</a>|</li>
          <li id="preserve"><a href="#"><span class="icon-cool"></span>&nbsp;个性养生&nbsp;&nbsp;</a>|</li>
          <li id="hos-doc"><a href="#"><span class="icon-bubble2"></span>&nbsp;就医导航&nbsp;&nbsp;</a>|</li>
          <li id="konwledge"><a href="knowledge.html"><span class="icon-book"></span>&nbsp;健康知识&nbsp;&nbsp;</a>|</li>
          <li id="illness"><a href="#"><span class="icon-profile"></span>&nbsp;朕的历史</a></li>
        </ul>
      </div>
      <!-- 中间导航结束 -->
      <!-- 右侧搜索框开始 -->
      <div class="search">
        <input type="text" class="searchbox">
        <span class="icon-search searchbtn"></span>
      </div>
      <!-- 右侧搜索框结束 -->
    </div>
  </div>
  <!-- 导航栏结束 -->
  <!-- 主内容开始 -->
  <div id="main2">
    <!-- 左侧工具栏开始 -->
    <div id="left-tool">
      <h4>朕的历史</h4>
      <ul>
        <li><a href="javascript:;" id="healthStatu">健康状况</a></li>
        <li><a href="javascript:;" id="illnessHistory">疾病历史</a></li>
        <li><a href="javascript:;" id="illProject">疾病方案</a></li>
        <li><a href="javascript:;" id="worksAssess">效果评估</a></li>
        <li><a href="javascript:;" id="examination">体检管理</a></li>
        <li><a href="javascript:;" id="doctor">就医历史</a></li>
        <li><a href="javascript:;" id="knowledge">健康知识</a></li>
        <li><a href="javascript:;" id="preserve">养生收藏</a></li>
        <li><a href="javascript:;" id="news">新闻收藏</a></li>  
      </ul>
    </div>
    <!-- 左侧工具栏结束 -->
    <!-- 右侧内容开始 -->
    <div id="right-content">
      <iframe id="dynamic" src="healthData.jsp?id=<%=id%>" width="1100" height="840" frameborder="0" scrolling="no"></iframe>
    </div>
    <!-- 右侧内容结束 -->
  </div>
  <!-- 主内容结束 -->
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
  <!-- 引入jquery环境 -->
  <script type="text/javascript" src='js/jquery.js'></script>
  <script type="text/javascript">
    $(document).ready(function(){
      $('#healthStatu').click(function(event) {
        $('#dynamic').attr('src','healthDate.html');
        $(this).addClass('highlight');
      });
    });
  </script>
</body>
</html>