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
<title>医界新闻</title>
<link rel="stylesheet" href="dist/css/swiper.min.css">
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/news.css">
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
          <li id="news"><a href="#"><span class="icon-newspaper"></span>&nbsp;医界新闻&nbsp;&nbsp;</a>|</li>
          <li id="preserve"><a href="#"><span class="icon-cool"></span>&nbsp;个性养生&nbsp;&nbsp;</a>|</li>
          <li id="hos-doc"><a href="#"><span class="icon-bubble2"></span>&nbsp;就医导航&nbsp;&nbsp;</a>|</li>
          <li id="konwledge"><a href="admin/knowledge.html?"><span class="icon-book"></span>&nbsp;健康知识&nbsp;&nbsp;</a>|</li>
          <li id="illness"><a href="history.jsp?id=<%=id%>"><span class="icon-profile"></span>&nbsp;朕的历史</a></li>
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
  <!-- 侧边栏开始 -->
  <div id="left-menu" style="left:-100px;">
    <ul>
      <li><a href="#">健康状况</a></li>
      <li><a href="#">疾病方案</a></li>
      <li><a href="#">体检管理</a></li>
      <li><a href="#">效果评估</a></li>
    </ul>
    <div class="btn">
      	<h4>朕</h4>
    </div>
  </div>
  <!-- 侧边栏结束 -->
  <!-- 侧边栏工具开始 -->
  <div class="toolbar">
	<a href="javascript:;" class="toolbar-item toolbar-item-top" style="display:none;"></a>
  </div>
  <!-- 侧边栏工具结束 -->
  <!-- 主区开始 -->
  <div id="main">
  	<div class="wrapper">
  		<h2>医&nbsp;界&nbsp;新&nbsp;闻</h2>
  	</div>
    <div class="wrapper wrapper1">
       <!-- 滚动新闻区开始 -->
      <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="images/31.jpg" alt=""><div class="title">张强：医生集团对一些投资说No</div></div>
            <div class="swiper-slide"><img src="images/14.jpg" alt=""><div class="title">鲍宇克：张强医生集团首张个人医责险投保人</div></div>
            <div class="swiper-slide"><img src="images/36.jpg" alt=""><div class="title">大医之道 | 蔡德培：中西医结合与青春期医学的实践者</div></div>
            <div class="swiper-slide"><img src="images/37.jpg" alt=""><div class="title">三位援疆医生的鲜活“画像”</div></div>
            <div class="swiper-slide"><img src="images/2.jpg" alt=""><div class="title">葛均波院士专访：我觉得自己比较像萧峰</div></div>
            <div class="swiper-slide"><img src="images/38.jpg" alt=""><div class="title">牛！董家鸿团队做了世界首例术式根治终末期肝包虫病</div></div>
            <div class="swiper-slide"><img src="images/39.png" alt=""><div class="title">史上最性感外科医生竟然长这样？！</div></div>
            <div class="swiper-slide"><img src="images/12.jpg" alt=""><div class="title">两保合一，“可报销药品”究竟如何扩容？</div></div>
            <div class="swiper-slide"><img src="images/27.jpg" alt=""><div class="title">锐观察 | 大病医保到底怎样回归“保大病”本位</div></div>
            <div class="swiper-slide"><img src="images/10.jpg" alt=""><div class="title">国家药价谈判 跨国公司怎么看中国药品定价</div></div>
        </div>
        
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
        <!-- Add Arrows -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
      </div>
      <!-- 滚动新闻区结束 -->
    </div>
    <!-- 编辑推荐开始 -->
    <div class="wrapper">
        <!-- 标题区开始 -->
        <div class="news-title"></div>
        <!-- 标题区结束 -->
        <!-- 新闻内容开始 -->
        <div class="news-box">
          <div class="news-list" id="news-1">
            <div class="detail">
              <h3><a href="#">秋季怎么养生？四季学堂话你知</a></h3>
              <p>秋天要多吃带皮的水果，比如柚子、柑橘等。昨日，越秀中医四季学堂之秋季学堂活动在中山四路忠佑广场举行，越秀名中医在现场不仅告诉街坊如何养生，还教广大街坊如何识别中草药。</p>
              <h5><a href="#">详情&gt;&gt;</a></h5>
            </div>
          </div>
          <div class="news-list" id="news-2">
          	<div class="detail">
              <h3><a href="#">国家药品新规定</a></h3>
              <p>从今年3月1日起，农贸市场等农产品集中交易场所需设置农产品检查制度，批发市场需对场所内所售农产品进行抽检并记录，同时，13种禁止销售的农产品不得进入市场。</p>
              <h5><a href="#">详情&gt;&gt;</a></h5>
            </div>
          </div>
          <div class="news-list" id="news-3">
          	<div class="detail">
              <h3><a href="#">新运动装备已上线</a></h3>
              <p>在CES 2016展会上争奇斗艳的智能手机、计算机设备以及各种炫酷的未来科技仍然是当下的主流，但是在运动逐渐成为大环境的前提下设备厂商们逐渐开始将科技与传统的运动进行紧密的结合，因此带来未来一年里最新的运动装备，接下来是种草时间。</p>
              <h5><a href="#">详情&gt;&gt;</a></h5>
            </div>
          </div>
        </div>
        <div class="news-box">
          <div class="news-list" id="news-11">
            <div class="detail">
              <h3><a href="#">2017最有潜力的10大医疗创新</a></h3>
              <p>近10余年来，克利夫兰诊所每年都会在创新峰会上发布未来最有前景的医疗创新榜单。为了公正权威，克利夫兰诊所组建了一支超过100名医生和研究人员的评选团队，其中大部分人都是其所在领域的佼佼者。</p>
              <h5><a href="#">详情&gt;&gt;</a></h5>
            </div>
          </div>
          <div class="news-list" id="news-21">
          	<div class="detail">
              <h3><a href="#">2040年年实现人类“起死回生”！</a></h3>
              <p>人工智能（Artificial Intelligence，AI）是研究开发用于模拟、延伸及扩展机体智能的理论、方法、技术及应用系统的一门新技术。AI是计算机科学的一个分支，它试图了解智能的实质，并生产出一种新的能以人类智能相似的方式作出反应的智能机器，该领域的研究包括机器人、语言识别、图像识别、自然语言处理和专家系统等。</p>
              <h5><a href="#">详情&gt;&gt;</a></h5>
            </div>
          </div>
          <div class="news-list" id="news-31">
          	<div class="detail">
              <h3><a href="#">像NASA管理空间站那样管理医院</a></h3>
              <p>如果像美国国家航空航天局（NASA）管理国际空间站那样管理医院，是一个什么样的场景？
为了让医院运作更加精确化，越来越多的美国医院已经开始这样做了。
最新的例子就是美国拉什大学医学中心（Rush University Medical Center ），这家希望医院的运行能够变得更加高效。
              </p>
              <h5><a href="#">详情&gt;&gt;</a></h5>
            </div>
          </div>
        </div>
        <!-- 新闻内容结束 -->
    </div>
    <!-- 编辑推荐结束 -->
    <!-- 新鲜事开始 -->
    <div class="wrapper">
      <div class="newtitle">
			<span class="shadow"></span>
			<h1>新鲜事</h1>
			<span class="shadow" style="float:right;"></span>
	  </div>
	  <div class="news-box">
				<div class="news-left">
					<a href="#">
						<img src="images/25.jpg" alt="">
						<div class="ndetail">
							<h4>北京人均期望寿命到底是怎么算出来的</h4>
							<p>健康长寿，是每个人的心愿。如果有神仙，每个人都想预测一下自己到底能活多少岁——
上周，北京发布了“十三五”卫生计生规划，提出5年后北京人均期望寿命达到82.4岁。 虽说现在人们越来越长寿是一种趋势，但是也有很多人发现身边有人年纪轻轻就去世了，拉低了平均值。
</p>
						</div>
					</a>
				</div>
				<div class="news-list">
					<a href="#">
						<img src="images/33.jpg" alt="">
						<div class="ndetail">
							<h4>四大转变 回顾中国精神卫生十年征程</h4>
							<p>10年来，精神卫生如何被更广泛的公众认识？精神疾病是否已经成为你我关心的健康问题？从精神疾病患者拒绝走出家门，工作人员“热脸遭遇冷屁股”，到越来越多患者得到社会关爱，其中发生了怎样的变化？</p>
						</div>
					</a>
				</div>
				<div class="news-list">
					<a href="#">
						<img src="images/23.jpg" alt="">
						<div class="ndetail">
							<h4>健康医疗信息化的五大趋势</h4>
							<p>随着大数据、云计算、移动互联、人工智能等现代信息技术在健康医疗领域的广泛应用，健康医疗信息化对优化健康医疗资源配置、创新健康医疗服务的内容与形式产生了重要影响，已成为深化医改、推进健康中国建设的重要支撑。</p>
						</div>
					</a>
				</div>
				<div class="news-list">
					<a href="#">
						<img src="images/17.jpeg" alt="">
						<div class="ndetail">
							<h4>光明日报呼吁“多关心中青年学者健康”</h4>
							<p>近期，多名优秀的中青年学者突发疾病相继离世，其中不乏入选“青年千人计划”的才俊和“长江学者”特聘教授，令人扼腕叹息。</p>
						</div>
					</a>
				</div>
				<div class="news-list">
					<a href="#">
						<img src="images/2.jpg" alt="">
						<div class="ndetail">
							<h4>为了扩大医院规模 他们都在建微型医院</h4>
							<p>医院和医疗体系谋求成长机会时，传统的增设门诊手术中心、急救站和独立急诊中心等已无法满足需求。大多日间手术中心不能提供全面服务，而综合性医院所提供的服务往往又超出社区所需。微型医院成为一个最佳选择。</p>
						</div>
					</a>
				</div>
			</div>
    </div>
    <!-- 新鲜事结束 -->
    <!-- 国际范开始 -->
    <div class="wrapper">
      <div class="newtitle">
			<span class="shadow"></span>
			<h1>国际范</h1>
			<span class="shadow" style="float:right;"></span>
	  </div>
	  <div class="news-box">
				<div class="news-left">
					<a href="#">
						<img src="images/13.png" alt="">
						<div class="ndetail">
							<h4>告别临床 这6位医生说：从未后悔</h4>
							<p>职场上，谁没想过辞掉工作，来一场说走就走的旅行，或是开一个小咖啡馆，岁月静好。
以下这6位医生也一样，因为工作太累、对工作不满或是其他原因而脱下了白大褂，这样“任性”之后，他们过得怎么样了？
</p>
	
						</div>
					</a>
				</div>
				<div class="news-list">
					<a href="#">
						<img src="images/32.jpg" alt="">
						<div class="ndetail">
							<h4>飞利浦战略转型数字健康</h4>
							<p>医疗大数据和互联技术迅猛发展，正带动健康关护服务升级换代。曾经以照明、电器、医疗设备等产品被全球熟知的飞利浦，目前正加大健康科技领域的投入。</p>
						</div>
					</a>
				</div>
				<div class="news-list">
					<a href="#">
						<img src="images/9.jpg" alt="">
						<div class="ndetail">
							<h4>韩春雨：已能重复实验结果</h4>
							<p>今年5月，这位非名校的普通副教授，在国际顶级期刊《自然•生物技术》杂志发表了一篇被称为可比肩诺奖的研究成果：发明了一种新的基因编辑技术——NgAgo，向现有最时兴的CRISPR-Cas发起了挑战。</p>
						</div>
					</a>
				</div>
				<div class="news-list">
					<a href="#">
						<img src="images/22.jpg" alt="">
						<div class="ndetail">
							<h4>不可不知的常规手术“风险评估”</h4>
							<p>近日，“医疗点评”（Healthgrades）发布了全美医院排名，同时推出了如何运用风险智能工具（Risk IQ Tool）来帮助患者对6项常规手术的风险进行自我评估。</p>
						</div>
					</a>
				</div>
				<div class="news-list">
					<a href="#">
						<img src="images/3.jpg" alt="">
						<div class="ndetail">
							<h4>当医学家开始写诗 笔尖流淌想不到的意境</h4>
							<p>2016年的诺贝尔文学奖颁给了鲍勃•迪伦。一时间，众声喧哗，仿佛这是桩多么难以想象的事情。然而很多有才华的人，偏偏就是那么“霸道”，不但自己的专业出色，跨过界照样风生水起。鲍勃•迪伦并非特例。</p>
						</div>
					</a>
				</div>
			</div>
    </div>
    <!-- 国际范结束 -->
  </div>
  <!-- 主区结束 -->
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
  
  <!-- Swiper JS -->
  <script src="dist/js/swiper.min.js"></script>
  <script type="text/javascript" src="js/jquery.js"></script>
  <!-- Initialize Swiper -->
  <script>

    //获得dom对象
    var leftMenu = document.getElementById('left-menu');
    
    //鼠标移上弹出
    leftMenu.onmouseenter = function() {
      this.style.left = 0 + 'px';
    }
    
    // 鼠标离开收起
    leftMenu.onmouseleave = function() {
      this.style.left = -100 + 'px';
    }
    
 	//滚动条事件
	$(window).scroll(function(event) {
		
		//如果滚动条超过100像素，显示回到顶部
		if($(window).scrollTop() >= 100){
			$('.toolbar-item-top').show(1000);
		}else {
			$('.toolbar-item-top').hide(1000);
		}
	});
	
	// 滚动条回到顶部
	$('.toolbar-item-top').click(function() {
		$('html,body').animate({scrollTop:0},1000);
	});

    var swiper = new Swiper('.swiper-container', {
        loop:true,
        autoplay: 3000,
        pagination: '.swiper-pagination',
        paginationClickable: true,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        spaceBetween: 30
    });
  </script>
</body>
</html>