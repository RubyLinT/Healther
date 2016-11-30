$(document).ready(function(){
	
	// 获得导航条对象
	var nav = $('.nav-wrap');
	// 导航条的高度
	var navHeight= nav.outerHeight();
	// 导航条相对于网页原点的位置
	var navPos = nav.offset().top;
	// console.log(sTop);
	// console.log(navPos);

	/*
		滚动条事件
	*/
	$(window).scroll(function(event) {

		/*
			动态设置导航条固定
		*/ 
		//滚动条卷去的大小
		var sTop = $(window).scrollTop();

		if (sTop >= navPos ) {
			if (!nav.hasClass('fixed')){
				nav.addClass('fixed');
				$('#index').css('margin-bottom',navHeight); //index下方空出原始导航的高度，保证下方元素不会上移				
			}		

		} else {
			if (nav.hasClass('fixed')) {
				nav.removeClass('fixed');	
				$('#index').css('margin-bottom',0);			
			}
		}

		/*
			滚动监听高亮导航
		*/
		// 高亮函数
		function highLight(target) {
			$('.nav-wrap li').removeClass('active');
			$(target).addClass('active');
		}

		//加入我们转变
		function change(target) {
			$(target).removeClass('add-bottom');
			$(target).addClass('add-top');
			$('#add a').removeClass('font');
		}

		var health = $('#health-post');
		var hospital = $('#hospital-post');
		var illness = $('#illness-post');
		var cool = $('#cool-post');
		var news = $('#news-post');
		var konwlege = $('#konwlege-post');

		var healthPos = {
			start:health.offset().top - navHeight,
			end:health.offset().top + health.outerHeight() - navHeight
		}

		var hospitalPos = {
			start:hospital.offset().top - navHeight,
			end:hospital.offset().top + hospital.outerHeight() - navHeight
		}

		var illnessPos = {
			start:illness.offset().top - navHeight,
			end:illness.offset().top + illness.outerHeight() - navHeight
		}

		var coolPos = {
			start:cool.offset().top - navHeight,
			end:cool.offset().top + cool.outerHeight() - navHeight
		}

		var newsPos = {
			start:news.offset().top - navHeight,
			end:news.offset().top + news.outerHeight() - navHeight
		}

		var konwlegePos = {
			start:konwlege.offset().top - navHeight,
			end:konwlege.offset().top + konwlege.outerHeight() - navHeight
		}

		if ( sTop >= healthPos.start && sTop < healthPos.end) {
			highLight('.health');
		} else if ( sTop >= hospitalPos.start && sTop < hospitalPos.end) {
			highLight('.hospital');
		} else if ( sTop >= illnessPos.start && sTop < illnessPos.end) {
			highLight('.illness');
		} else if ( sTop >= coolPos.start && sTop < coolPos.end) {
			highLight('.cool');
		} else if ( sTop >= newsPos.start && sTop < newsPos.end) {
			highLight('.news');
			change('#add');
		} else if ( sTop >= konwlegePos.start && sTop < konwlegePos.end) {
			highLight('.konwlege');
			$('#add').removeClass('add-top');
			$('#add').addClass('add-bottom');
			$('#add a').addClass('font');
		} else {
			$('.nav-wrap li').removeClass('active');
		}

	});
	/*
		导航链接滑动到锚点
	*/
	$('.nav-wrap a').click(function(event) {
		
		// 获得对应区块的相对于网页原点的偏移量
		var top = $(this.hash).offset().top - navHeight + 7; 

		$('html,body').animate({scrollTop:top}, 1000);

		return false;
	});

	/*
		图标链接滑动到锚点
	*/
	$('.lead a').click(function(event) {
		
		// 获得对应区块的相对于网页原点的偏移量
		var top = $(this.hash).offset().top - navHeight + 7; 

		$('html,body').animate({scrollTop:top}, 1000);

		return false;
	});

	//泡泡渐进渐出动画
	setInterval(function(){
		$('.air1').fadeOut('slow');
		$('.air1').fadeIn('fast');
	},8000);
	setInterval(function(){
		$('.air2').fadeOut('slow');
		$('.air2').fadeIn('fast');
	},7000);
	setInterval(function(){
		$('.air3').fadeOut('slow');
		$('.air3').fadeIn('fast');
	},9000);
	setInterval(function(){
		$('.air4').fadeOut('slow');
		$('.air4').fadeIn('fast');
	},6000);
	setInterval(function(){
		$('.small-air3').fadeOut('slow');
		$('.small-air3').fadeIn('fast');
	},5000);
});