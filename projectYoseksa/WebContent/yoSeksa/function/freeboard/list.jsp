<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Flooring a Interior category Flat Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="../../css/bootstrap_taejin.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/component.css" rel="stylesheet" type="text/css"  />
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="../../css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/style_taejin.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/bootstrapTheme.css" rel="stylesheet">
<link href="../../css/custom.css" rel="stylesheet">
<link href="../../css/owl.carousel.css" rel="stylesheet">
<link href="../../css/owl.theme.css" rel="stylesheet">
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Flooring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //footer -->
<script type="text/javascript" src="js/saved_resource"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="../../js/modernizr.custom.js"></script>
<script src="../../js/jquery-1.11.1.min.js"></script>
<script src="../../js/responsiveslides.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script src="../../js/owl.carousel.js"></script>
<script src="../../js/owl.carousel.min.js"></script>
<!--/animated-css-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			    $('.slideshow').cycle({
					fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
				});
			    
			});
</script>
<script>
$(document).ready(function() {
	 
	  var owl = $("#owl-demo");
	 
	  owl.owlCarousel({
	      items : 10, //10 items above 1000px browser width
	      itemsDesktop : [1000,5], //5 items between 1000px and 901px
	      itemsDesktopSmall : [900,3], // betweem 900px and 601px
	      itemsTablet: [600,2], //2 items between 600 and 0
	      itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
	  });
	 
	  // Custom Navigation Events
	  $(".next").click(function(){
	    owl.trigger('owl.next');
	  })
	  $(".prev").click(function(){
	    owl.trigger('owl.prev');
	  })
	  $(".play").click(function(){
	    owl.trigger('owl.play',1000); //owl.play event accept autoPlay speed as second parameter
	  })
	  $(".stop").click(function(){
	    owl.trigger('owl.stop');
	  })
	 
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		/* affix the navbar after scroll below header */
		$('#nav').affix({
			offset: {
				top: $('header').height()-$('#nav').height()
				}
		});
		
	});        
</script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
</script>

<!--script-->

</head>
<body  class="cbp-spmenu-push">
		<!--bottom-->
		  <section class="button">
					<button id="showLeftPush"><img src="../../images/menu-icon.png" alt=""></button>
		   </section>
			<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
			<h3>Menu</h3>
			<!-- 왼쪽상단에 있는 버튼을 클릭했을때 나오는 링크or속성값을 지정하는곳 -->
		  </nav>
		<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				showRightPush = document.getElementById( 'showRightPush' ),
				body = document.body;

			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
				if( button !== 'showRightPush' ) {
					classie.toggle( showRightPush, 'disabled' );
				}
			}
		</script>
<div class="navbar navbar-inverse navbar-static-top affix-top" id="nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="index.html">Home</a></li>
							<li><a class="scroll" href="#section1">Search</a></li>
							<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">About<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="about.html">about1</a></li>
									<li><a href="about.html">about2</a></li>
									<li><a href="about.html">about3</a></li>           
								</ul>
							</li>
							<li><a class="scroll" href="#services">Services</a></li>
							<li><a href="typo.html">News</a></li>
							<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="gallery.html">gallery1</a></li>
									<li><a href="gallery.html">gallery2</a></li>
									<li><a href="gallery.html">gallery3</a></li>           
								</ul>
							</li>
							<li><a href="contact.html">Mail</a></li>
						</ul>         
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>	
		</div>
	</div>
	<!-- 페이지 가운데 -->
<html class="js csstransitions js csstransitions"><head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Flooring a Interior category Flat Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="../../css/bootstrap_taejin.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/component.css" rel="stylesheet" type="text/css">
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="../../css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/style_taejin.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/bootstrapTheme.css" rel="stylesheet">
<link href="../../css/custom.css" rel="stylesheet">
<link href="../../css/owl.carousel.css" rel="stylesheet">
<link href="../../css/owl.theme.css" rel="stylesheet">
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Flooring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //footer -->
<script type="text/javascript" src="js/saved_resource"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="../../js/modernizr.custom.js"></script>
<script src="../../js/jquery-1.11.1.min.js"></script>
<script src="../../js/responsiveslides.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script src="../../js/owl.carousel.js"></script>
<script src="../../js/owl.carousel.min.js"></script>
<!--/animated-css-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			    $('.slideshow').cycle({
					fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
				});
			    
			});
</script>
<script>
$(document).ready(function() {
	 
	  var owl = $("#owl-demo");
	 
	  owl.owlCarousel({
	      items : 10, //10 items above 1000px browser width
	      itemsDesktop : [1000,5], //5 items between 1000px and 901px
	      itemsDesktopSmall : [900,3], // betweem 900px and 601px
	      itemsTablet: [600,2], //2 items between 600 and 0
	      itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
	  });
	 
	  // Custom Navigation Events
	  $(".next").click(function(){
	    owl.trigger('owl.next');
	  })
	  $(".prev").click(function(){
	    owl.trigger('owl.prev');
	  })
	  $(".play").click(function(){
	    owl.trigger('owl.play',1000); //owl.play event accept autoPlay speed as second parameter
	  })
	  $(".stop").click(function(){
	    owl.trigger('owl.stop');
	  })
	 
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		/* affix the navbar after scroll below header */
		$('#nav').affix({
			offset: {
				top: $('header').height()-$('#nav').height()
				}
		});
		
	});        
</script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
</script>

<!--script-->

</head>
<body class="cbp-spmenu-push">
		<!--bottom-->
		  <section class="button">
					<button id="showLeftPush"><img src="../../images/menu-icon.png" alt=""></button>
		   </section>
			<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
			<h3>Menu</h3>
			<!-- ?쇱そ???⑥?? ???? 踰??쇱?? ?대┃?????? ???ㅻ?? 留???or???깃??? 吏???????怨? -->
		  </nav>
		<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				showRightPush = document.getElementById( 'showRightPush' ),
				body = document.body;

			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
				if( button !== 'showRightPush' ) {
					classie.toggle( showRightPush, 'disabled' );
				}
			}
		</script>
<div class="navbar navbar-inverse navbar-static-top affix-top" id="nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="index.html">Home</a></li>
							<li><a class="scroll" href="#section1">Search</a></li>
							<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">About<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="about.html">about1</a></li>
									<li><a href="about.html">about2</a></li>
									<li><a href="about.html">about3</a></li>           
								</ul>
							</li>
							<li><a class="scroll" href="#services">Services</a></li>
							<li><a href="typo.html">News</a></li>
							<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="gallery.html">gallery1</a></li>
									<li><a href="gallery.html">gallery2</a></li>
									<li><a href="gallery.html">gallery3</a></li>           
								</ul>
							</li>
							<li><a href="contact.html">Mail</a></li>
						</ul>         
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>	
		</div>
	</div>
	<!-- ???댁? 媛??대?? -->

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Flooring a Interior category Flat Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="../../css/bootstrap_taejin.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/component.css" rel="stylesheet" type="text/css">
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="../../css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/style_taejin.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/bootstrapTheme.css" rel="stylesheet">
<link href="../../css/custom.css" rel="stylesheet">
<link href="../../css/owl.carousel.css" rel="stylesheet">
<link href="../../css/owl.theme.css" rel="stylesheet">
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Flooring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //footer -->
<script type="text/javascript" src="js/saved_resource"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="../../js/modernizr.custom.js"></script>
<script src="../../js/jquery-1.11.1.min.js"></script>
<script src="../../js/responsiveslides.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script src="../../js/owl.carousel.js"></script>
<script src="../../js/owl.carousel.min.js"></script>
<!--/animated-css-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			    $('.slideshow').cycle({
					fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
				});
			    
			});
</script>
<script>
$(document).ready(function() {
	 
	  var owl = $("#owl-demo");
	 
	  owl.owlCarousel({
	      items : 10, //10 items above 1000px browser width
	      itemsDesktop : [1000,5], //5 items between 1000px and 901px
	      itemsDesktopSmall : [900,3], // betweem 900px and 601px
	      itemsTablet: [600,2], //2 items between 600 and 0
	      itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
	  });
	 
	  // Custom Navigation Events
	  $(".next").click(function(){
	    owl.trigger('owl.next');
	  })
	  $(".prev").click(function(){
	    owl.trigger('owl.prev');
	  })
	  $(".play").click(function(){
	    owl.trigger('owl.play',1000); //owl.play event accept autoPlay speed as second parameter
	  })
	  $(".stop").click(function(){
	    owl.trigger('owl.stop');
	  })
	 
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		/* affix the navbar after scroll below header */
		$('#nav').affix({
			offset: {
				top: $('header').height()-$('#nav').height()
				}
		});
		
	});        
</script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
</script>

<!--script-->



		<!--bottom-->
		  <section class="button">
					<button id="showLeftPush"><img src="../../images/menu-icon.png" alt=""></button>
		   </section>
			<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
			<h3>Menu</h3>
			<!-- ?쇱そ???⑥?? ???? 踰??쇱?? ?대┃?????? ???ㅻ?? 留???or???깃??? 吏???????怨? -->
		  </nav>
		<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				showRightPush = document.getElementById( 'showRightPush' ),
				body = document.body;

			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
				if( button !== 'showRightPush' ) {
					classie.toggle( showRightPush, 'disabled' );
				}
			}
		</script>
<div class="navbar navbar-inverse navbar-static-top affix-top" id="nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="index.html">Home</a></li>
							<li><a class="scroll" href="#section1">Search</a></li>
							<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">About<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="about.html">about1</a></li>
									<li><a href="about.html">about2</a></li>
									<li><a href="about.html">about3</a></li>           
								</ul>
							</li>
							<li><a class="scroll" href="#services">Services</a></li>
							<li><a href="typo.html">News</a></li>
							<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="gallery.html">gallery1</a></li>
									<li><a href="gallery.html">gallery2</a></li>
									<li><a href="gallery.html">gallery3</a></li>           
								</ul>
							</li>
							<li><a href="contact.html">Mail</a></li>
						</ul>         
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>	
		</div>
	</div>
	<!-- ???댁? 媛??대?? -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>?⑤? ??蹂?&gt;硫?濡?</title>
	<meta name="keywords" content="??????鍮???, 硫?濡?李⑦??, 硫?濡?TOP100, 理???????, ?멸린媛???, 裕ㅼ?鍮?????, ?⑤?, ?????댁??, ?ㅽ?몃━諛?, ?ㅼ?대???, ???곗?ㅽ?명???ъ??, ???곗?ㅽ?몄???">
	<meta name="description" content="援??? 理??? 580留?怨? 蹂댁?? No.1 ?????ъ?댄??, 硫?濡?! 理???????怨? ?ㅼ??媛? 李⑦?몃?? 湲곕낯, ?? 痍⑦?μ?? ???? ?????? 異?泥? ?쇰????, ?닿? 醫??????? ???곗?ㅽ?몄?? ??濡??? ????源?吏? ?④? 利?寃⑤낫?몄??.">
	<meta property="og:title" content="">
	<meta property="og:image" content="">
	<meta property="og:description" content="?????? ?????? ??媛?, 硫?濡?">
	<meta name="viewport" content="width=device-width">
	<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?1">
	
		
		
		<link rel="alternate" href="android-app://com.iloen.melon/melonapp/details/album/2319008">
		
		
	
	<script type="text/javascript">
		checkWin8Metro();
		function checkWin8Metro(){
			var userAgent = navigator.userAgent.toLowerCase();
			var canRunActiveX = false;
			try
			{
				canRunActiveX = !!new ActiveXObject("htmlfile");
			}
			catch (e)
			{
				canRunActiveX = false;
			}
			if ((userAgent.indexOf("windows nt 6.2") >= 0 || userAgent.indexOf("windows nt 6.3") >= 0 ) && userAgent.indexOf("msie") >= 0)
			{
				// windows 8
				if (canRunActiveX == false)
				{
					document.location.href = "http://t.melon.com";
				}
			}
		}
	</script>
	
	
	<link rel="stylesheet" href="http://static.melon.co.kr/static/web/resource/style/w1/7l/y/1ebcyoka9zl.css" type="text/css">
	<link rel="stylesheet" href="http://static.melon.co.kr/static/web/resource/style/w1/xy/f/kt3ych75bx.css" type="text/css">
	<!-- ??湲? css ???? ?ㅼ?? 蹂?寃? -->
    <link rel="stylesheet" href="http://static.melon.co.kr/static/web/resource/style/w1/e9/3/ktwzk0vhtx.css" type="text/css"> 
  	
  		
  		
			<link rel="stylesheet" href="/resource/style/web/album/melonweb_album.css" type="text/css">
  		
  	
	
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script type="text/javascript" src="/resource/script/web/common/jquery-1.9.1.min.js"><\/script>')</script>
	<script type="text/javascript" src="http://member.melon.com/resource/script/web/member/melonweb_member_external.js?tm=20150722"></script>
	<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/qo/z/uoipb1qotx.js"></script> 
	<script type="text/javascript">
	MelonPersonal.init();

	(function() {
		WEBPOCIMG = {
			defaultImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 38){
					thumbType = "_38";
				} else if(width > 38 && width <= 52){
					thumbType = "_52";
				} else if(width > 52 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200){
					thumbType = "_500";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultAlbumImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 38){
					thumbType = "_38";
				} else if(width > 38 && width <= 52){
					thumbType = "_52";
				} else if(width > 52 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200){
					thumbType = "_500";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultArtistImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_300";
				if(width > 0 && width <= 34){
					thumbType = "_34";
				} else if(width > 34 && width <= 40){
					thumbType = "_40";
				} else if(width > 40 && width <= 54){
					thumbType = "_54";
				} else if(width > 54 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 100){
					thumbType = "_100";
				} else if(width > 100 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 160){
					thumbType = "_160";
				} else if(width > 160 && width <= 200){
					thumbType = "_200";
				} else if(width > 200 && width <= 300){
					thumbType = "_300";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noArtist" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultDjImg : function(obj){
			},
			defaultMvImg : function(obj, width, height){
				if(width == null || width == '') width = $(obj).width();
				if(height == null || height == '') height = $(obj).height();

				var ratio43 = Math.floor((4/3)*10)/10;
				var ratio169 = Math.floor((16/9)*10)/10;
				var ratioObj = Math.floor((width/height)*10)/10;

				var ratio = "4x3";
				if(ratioObj == ratio43){
					ratio = "4x3"; //contentsType = "mv43";
				} else if(ratioObj == ratio169){
					ratio = "16x9"; //contentsType = "mv169";
				} else {
					if(ratioObj > 1.5) ratio = "16x9";
					else ratio = "4x3";
				}

				var thumbType = "_" + ratio + "_640";
				if(width > 0 && width <= 60){
					thumbType = "_" + ratio + "_60";
				} else if(width > 60 && width <= 120){
					thumbType = "_" + ratio + "_120";
				} else if(width > 120 && width <= 144){
					thumbType = "_" + ratio + "_144";
				} else if(width > 144 && width <= 240){
					thumbType = "_" + ratio + "_240";
				} else if(width > 240 && width <= 480){
					thumbType = "_" + ratio + "_480";
				} else if(width > 480){
					thumbType = "_" + ratio + "_640";
				}

				var altSrc = "http://image.melon.co.kr/resource/image/web/default/noMovie" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultPlaylistImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 38){
					thumbType = "_38";
				} else if(width > 38 && width <= 52){
					thumbType = "_52";
				} else if(width > 52 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 114){
					thumbType = "_114";
				} else if(width > 114 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200){
					thumbType = "_500";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultMemberImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_130";
				if(width > 0 && width <= 40){
					thumbType = "_40";
				} else if(width > 40 && width <= 54){
					thumbType = "_54";
				} else if(width > 54 && width <= 72){
					thumbType = "_72";
				} else if(width > 72 && width <= 96){
					thumbType = "_96";
				} else if(width > 96 && width <= 112){
					thumbType = "_112";
				} else if(width > 112){
					thumbType = "_130";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noUser" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultPhotoImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 200){
					thumbType = "_200";
				} else if(width > 200) {
					thumbType = "_500";
				}
/* 				if(width > 0 && width <= 60){
					thumbType = "_60";
				} else if(width > 60 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200 && width <= 300){
					thumbType = "_300";
				} else if(width > 300 && width <= 500){
					thumbType = "_500";
				} else if(width > 500){
					thumbType = "_700";
				} */

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultShopImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_240";
				if(width > 0 && width <= 240){
					thumbType = "_240";
				} else if(width > 240 && width <= 300){
					thumbType = "_256";
				} else {
					thumbType = "_305";//異??? 議곗??媛?
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noProduct" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultShowwingImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_256";
				if(width > 0 && width <= 300){
					thumbType = "_256";
				} else {
					thumbType = "_313";//異??? 議곗??媛?
				}
				altSrc = "http://image.melon.co.kr/resource/image/web/default/noShowing" + thumbType + ".jpg";

				obj.src = altSrc;
			}
		}
		,WEBELLIPSIS = {
			ellipsis : function(ellipsisName,moreClassName,eWidth){
		        //???곗?ㅽ?? ??蹂닿린
		        var arObj = $('.' + ellipsisName);
		        for(var i = 0; i < arObj.length; i++){
		            if (arObj.eq(i).width() > eWidth ){
		                arObj.eq(i).parent().parent().parent().find('.' + moreClassName).show();
		            }
		        }
			}
		}
	})();
	</script>



<div id="wrap">
	<div id="skip_nav">skip navigation
		<ul>
			<li><a href="#gnb_menu">硫???</a></li>
			<li><a href="#id_box">留??댁????</a></li>
			<li><a href="#conts_section">蹂몃Ц</a></li>
			<li><a href="#footer">???? ??蹂?</a></li>
		</ul>
	</div>

	<!--  header -->
	
	
	<!-- //header -->

	<div id="cont_wrap" class="clfix">
		<div id="conts_section" class="my_fold">
			<!-- contents -->
			
				<div id="conts" class="clfix ban"> <!-- ??諛곕???쇰?? ban ?대???? 異?媛? -->
					
					<!-- ??諛곕?? -->
					
					<!-- //??諛곕?? -->
					<!-- ?⑤? 湲곕낯 ??蹂? -->
					




<script type="application/ld+json">
{
	"@context": "http://schema.org",
	"@type": "MusicAlbum",
	"url": [
			"http://www.melon.com/album/detail.htm?albumId=2319008",
			"android-app://com.iloen.melon/melonapp/details/album/2319008"
	],
	"image": "http://image.melon.co.kr/cm/album/images/023/19/008/2319008.jpg",
	"name": "留???",
	"sameAs": "http://www.melon.com/album/detail.htm?albumId=2319008",
	"description": "&lt;div&gt;	&lt;strong&gt;???댁?? ??吏??? ?깃? [留???]&lt;/strong&gt;&lt;br /&gt;	&lt;br /&gt;	?곗?쏀??吏?留? 臾듬У?? 諛?吏??? ????.&lt;br /&gt;	&lt;br /&gt;	???? : ???댁??&lt;/div&gt;&lt;div&gt;	??怨? : ???댁??, 源?????&lt;/div&gt;&lt;div&gt;	?멸끝 : ???댁??, 源?????&lt;/div&gt;",
	"potentialAction": {
		"@type": "ListenAction",
		"target": [
					"http://www.melon.com/album/detail.htm?albumId=2319008",
					"android-app://com.iloen.melon/melonapp/details/album/2319008"
		],
		"expectsAcceptanceOf": {
			"@type": "Offer",
			"eligibleRegion": {
				"@type": "Country",
				"name": "KR"
			}
		}
	}

}
</script>

					<!-- //?⑤? 湲곕낯 ??蹂? -->
					<!-- ??濡?怨? -->
					<div class="section_contin">
						
						
							
								<!-- ??濡?怨?_CD踰??? ???? -->
	<form id="frm" name="frm">
	
	</form>
	<!-- //??濡?怨?_CD踰??? ???? -->
	<script type="text/javascript">
	$(function(){
		/* 醫????? ????遺? */
		var LIKE_SET = {
			likeCnt  : "<span class=\"odd_span\">{TXT}</span>\n<span class=\"cnt\">\n<span class=\"none\">珥?嫄댁??</span>\n{CNT}</span>",
			likeObj  : $('div.d_song_list button.like'),
			likeAttr : 'data-song-no',
			likeUrl  : '/commonlike/getSongLike.json'
		};

		/* 醫????? 怨듯?듬? */
		var contsIdList = LIKE_SET['likeObj'].map(function() { return $(this).attr(LIKE_SET['likeAttr']); }).get().join(',');
		var tmpl, title;
		if ( contsIdList === '' || contsIdList === null  ) { return; }
		$.get(LIKE_SET['likeUrl'], { contsIds : contsIdList }, function(data) {
			var robj;
			$.each(data.contsLike, function(i, v) {
				var SUMMCNT = MELON.WEBSVC.number.addComma(v.SUMMCNT);
				robj  = LIKE_SET['likeObj'].eq(i);
				tmpl  = LIKE_SET['likeCnt'];
				title = robj.attr('title').split(' 醫?????');
				robj[v.LIKEYN == 'Y' ? 'addClass' : 'removeClass']('on').attr('title', title[0] + (v.LIKEYN == 'Y' ? ' 醫????? 痍⑥??' : ' 醫?????'));
				robj.html(
					tmpl.replace(/\{TXT\}/g, (v.LIKEYN == 'Y' ? '醫????? 痍⑥??' : '醫?????')).replace(/\{CNT\}/g, SUMMCNT)
				);
			});
		}).done(function(){
			//???곗?ㅽ?? ??蹂닿린 ?ㅽ??
			WEBELLIPSIS.ellipsis("checkEllipsis","wrap_atist",188);
		});


	});

	//??濡?怨? ??泥댁????
	var tblCheckall = function(){
		var btnAllchk = $("#songListAllChk, #songListAllChkBom");//??泥댁????
		var tblNochk = $(".tb_list table th input:checkbox:enabled:visible"); //???대? ?대? NO 140128_????
		var tblInpChk = $(".tb_list table td input:checkbox:enabled:visible"); //140128_????
		//??泥댁???? ?대┃??
		btnAllchk.click(function(e){
			e.stopPropagation();
			if(btnAllchk.is('.on')){
				btnAllchk.removeClass('on');
				$(".tb_list table tbody tr").removeClass('on');
				tblNochk.each(function(){
					this.checked = false;
				})
				tblInpChk.each(function(){
					this.checked = false;
				})
			}else{
				btnAllchk.addClass('on');
				$(".tb_list table tbody tr").addClass('on');
				tblNochk.each(function(){
					this.checked = 'checked'
				})
				tblInpChk.each(function(){
					this.checked = 'checked'
				})
			}
		})
		//???대? ?대? NO?대┃??
		tblNochk.click(function(){
			var item = $(this);
			var ptbl = item.parents('table:eq(0)');
			if(item.is(':checked')){
				ptbl.find("input:checkbox:enabled:visible").attr('checked', true); //140128_????
			}else{
				btnAllchk.removeClass('on')
				ptbl.find("input:checkbox:enabled:visible").attr('checked', false); //140128_????
			}
		})
		//???대? ?대? input ?대┃??
		tblInpChk.click(function(){
			var item = $(this);
			var Nobtn = item.parents("table:eq(0)").find("th input[type='checkbox']");
			if(!item.is(':checked') && Nobtn.is(':checked')){
				btnAllchk.removeClass('on')
				Nobtn.attr('checked', false);
			}
		})
	}
	$(document).ready(function(){
		tblCheckall();
	});
	</script>
						
					</div>
					<!-- //??濡?怨? -->
					<!-- ?⑤???媛? -->
					
					<div class="section_albuminfo">
						
						<div class="cont_albuminfo">
							<!-- ?⑤???媛?湲? 140128_???? height:203 -->
							
							<!-- //?⑤???媛?湲? -->
							<!-- ??蹂닿린 ??湲? 踰??? -->
							<div class="wrap_btn">
								<button type="button" title="?⑤???媛? ??蹂닿린" class="btn_text arrow_d" data-control="expose" data-expose-type="height" data-expose-target="#d_video_summary" style="display:none">
									<span class="text">??蹂닿린</span>
									<span class="icon"></span>
								</button>
								<button type="button" title="?⑤???媛? ??湲?" class="btn_text arrow_u" data-control="expose" data-expose-type="height" data-expose-target="#d_video_summary" style="display:none">
									<span class="text">??湲?</span>
									<span class="icon"></span>
								</button>
							</div>
							<!-- //??蹂닿린 ??湲? 踰??? -->

						</div>
					</div>
					
					<!-- //?⑤???媛? -->
					<!-- 裕ㅼ?鍮?????  -->
					
					<!-- //裕ㅼ?鍮?????  -->
					<!-- 由щ럭  -->
					<div id="section_rvew" class="section_rvew">
						<h3 class="title arr">게시판</h3>
						
						<div class="d_cmtpgn " id="d_cmtpgn" data-sqwidget="templateType:pc-summary-type;textareaType:large-size;pageType:generic-page" data-sqwidget-settings="cmtPocType:pc.web;pocId:WP10;menuId:28010101;chnlSeq:102;contsRefValue:2319008;listPageUrl:http://www.melon.com//album/detail.htm?albumId=2319008">				<div id="d_cmtpgn_cmt_write_box" class="re_notice  d_cmtpgn_cmt_edit_box" data-cmt-id="-1">		<div class="thumb_wrap">		<a class="thumb d_cmtpgn_user" data-member-key="null" id="commentWriteBoxImage">			<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://image.melon.co.kr/resource/image/cmt/web/common/noArtist03_54.jpg" width="54" height="54" alt="">			<span class="thumb_frame"></span>		</a>	</div>		<div class="re_textarea_wrap">			<div title="리뷰 입력 창 (1000자 이내 입력 가능)" class="textarea" style="min-height: 60px; overflow: hidden;">				<div class="ancm d_cmtpgn_cmt_guide" style="min-height: 54px;"><p>* 게시물의 저작권 등 분쟁, 개인정보 노출로 인한 책임은 작성자 또는 게시자에게 있음을 유의해 주세요.</p></div>				<div class="scroll d_cmtpgn_cmt_edit_area" style="display: none; max-height: 144px;"></div>				<span class="num_board d_cmtpgn_char_count">					<span class="none">현재 입력 글자수</span>					<strong class="d_cmtpgn_char_cnt">0</strong>					/					<span class="none">총 입력 가능 글자수</span>					1000자				</span>			</div>			<div class="wrap_btn">		<div class="wrap_btn_atach_cmt d_cmtpgn_atach_btn_wrapper">			<div class="wrap_btn_attach first_child">		<button type="button" title="음악 첨부" class="btn_atach_cmt sound" aria-haspopup="true" data-control="dropdown"><span class="odd_span">음원</span></button>		<div style="position:absolute; left:0; bottom:-8px; *bottom:-5px; display:none;" class="mt8 d_dropdown d_notpos d_cmtpgn_atach_music_layer"><div class="l_popup_cmt" style="width:456px;">		<div class="cntt">			<h1>음악 첨부</h1>			<div class="wrap_search d_cmtpgn_atach_srch_box">				<input type="text" class="d_cmtpgn_atach_music_srch_hidden" style="display: none;">				<input type="text" title="검색 입력 창 (검색어를 입력해 주세요)" placeholder="검색어를 입력해 주세요" class="text31 d_cmtpgn_atach_music_srch_input" style="width:344px;">				<button type="button" title="검색" class="btn_b31 d_cmtpgn_atach_music_srch_btn"><span class="odd_span"><span class="even_span">검색</span></span></button>			</div>			<div class="search_loading d_cmtpgn_loading" style="display: none;">				<img src="http://image.melon.co.kr/resource/image/cmt/web/common/img_loading.gif" width="40" height="40" alt="">				<p>잠시 기다려 주세요.</p>			</div>			<p class="search_wrong d_cmtpgn_noresult" style="display: none;">검색 된 내용이 없습니다.</p>			<p class="search_wrong d_cmtpgn_fallback" style="display: none;">접속이 지연되고 있습니다.<br>잠시 후 다시 이용해 주시기 바랍니다.<br>이용에 불편을 드려 대단히 죄송합니다.</p>		</div>		<button type="button" title="음악 첨부 닫기" class="btn_close d_cmtpgn_layer_close_btn"><span class="odd_span">닫기</span></button>		<span class="shadow"></span>		<span class="bullet" style="left:9px;"></span>	</div></div>	</div>			<div class="wrap_btn_attach">		<button type="button" title="사진 첨부" class="btn_atach_cmt photo" aria-haspopup="true" data-control="dropdown"><span class="odd_span">사진</span></button>		<div style="position:absolute; left:-29px; bottom:-8px; *bottom:-5px; display:none;" class="mt8 d_dropdown d_notpos d_cmtpgn_atach_image_layer"><div class="l_popup_cmt" style="width:456px;">	<form name="imageUploadForm" method="post" enctype="multipart/form-data" encoding="multipart/form-data" action="http://cmtimgup.melon.com/hs_upload_jsonp_html.php?callback=parent._imageAtachUploadHandler" target="d_cmtpgn_atach_image_frame">		<div class="cntt">			<h1>사진 첨부</h1>			<div class="wrap_search">				<input type="file" title="첨부 이미지 찾아보기" placeholder="파일을 선택해 주세요" class="text31 d_cmtpgn_atach_image_input" style="width:408px;padding:0">			</div>			<div class="wrap_btn_c">				<button type="button" title="사진 첨부 등록 완료" class="btn_emphs_small d_cmtpgn_atach_image_btn"><span class="odd_span"><span class="even_span">등록</span></span></button>				<button type="button" title="사진 첨부 취소" class="btn_emphs02_small d_close"><span class="odd_span"><span class="even_span">취소</span></span></button>			</div>		</div>		<button type="button" title="사진 첨부 닫기" class="btn_close d_cmtpgn_layer_close_btn"><span class="odd_span">닫기</span></button>		<span class="shadow"></span>		<span class="bullet" style="left:38px;"></span>	</form>	</div></div>	</div>			<div class="wrap_btn_attach">		<button type="button" title="영상 첨부" class="btn_atach_cmt video" aria-haspopup="true" data-control="dropdown"><span class="odd_span">영상</span></button>		<div style="position:absolute; left:-59px; bottom:-8px; *bottom:-5px; display:none;" class="mt8 d_dropdown d_notpos d_cmtpgn_atach_video_layer"><div class="l_popup_cmt" style="width:456px;">		<div class="cntt">			<h1>영상 첨부</h1>			<div class="wrap_search d_cmtpgn_atach_srch_box">				<input type="text" class="d_cmtpgn_atach_video_srch_hidden" style="display: none;">				<input type="text" title="검색 입력 창 (검색어를 입력해 주세요)" placeholder="검색어를 입력해 주세요" class="text31 d_cmtpgn_atach_video_srch_input" style="width:344px;">				<button type="button" title="검색" class="btn_b31 d_cmtpgn_atach_video_srch_btn"><span class="odd_span"><span class="even_span">검색</span></span></button>			</div>			<div class="search_loading d_cmtpgn_loading" style="display: none;">				<img src="http://image.melon.co.kr/resource/image/cmt/web/common/img_loading.gif" width="40" height="40" alt="">				<p>잠시 기다려 주세요.</p>			</div>			<p class="search_wrong d_cmtpgn_noresult" style="display: none;">검색 된 내용이 없습니다.</p>			<p class="search_wrong d_cmtpgn_fallback" style="display: none;">접속이 지연되고 있습니다.<br>잠시 후 다시 이용해 주시기 바랍니다.<br>이용에 불편을 드려 대단히 죄송합니다.</p>		</div>		<button type="button" title="영상 첨부 닫기" class="btn_close d_cmtpgn_layer_close_btn"><span class="odd_span">닫기</span></button>		<span class="shadow"></span>		<span class="bullet" style="left:68px;"></span>	</div></div>	</div>			<div class="wrap_btn_attach">		<button type="button" title="링크 첨부" class="btn_atach_cmt link" aria-haspopup="true" data-control="dropdown"><span class="odd_span">링크</span></button>		<div style="position:absolute; left:-89px; bottom:-8px; *bottom:-5px; display:none;" class="mt8 d_dropdown d_notpos d_cmtpgn_atach_link_layer"><div class="l_popup_cmt" style="width:456px;">		<div class="cntt">			<h1>링크 첨부</h1>			<div class="wrap_search type02">				<div class="select_wrap d_cmtpgn_atach_link_option_wrapper" style="display: none;">					<select title="링크 종류 선택" class="d_selectbox" style="width: 60px; display: none;">						<option value="link_video">영상링크</option>											</select><div class="select_type01"><span class="select_box" tabindex="0" title="링크 종류 선택"><span class="sel_r" style="width: 60px;">영상링크</span></span><div class="select_open" style="position: absolute; display: none;" tabindex="0"><ul><li class="on"><a href="#" data-value="link_video" data-text="영상링크">영상링크</a></li></ul></div></div>				</div>				<input type="text" title="링크 첨부 입력 창 (첨부 URL을 입력해 주세요)" placeholder="http://" class="text31 d_cmtpgn_atach_link_input" style="width:408px;">			</div>			<p class="bul_info02 d_atach_video_link_guide">영상링크 첨부는 유튜브 영상 링크만 가능합니다.</p>			<div class="wrap_btn_c">				<button type="button" title="링크 첨부 등록 완료" class="btn_emphs_small d_cmtpgn_atach_link_btn"><span class="odd_span"><span class="even_span">등록</span></span></button>				<button type="button" title="링크 첨부 취소" class="btn_emphs02_small d_close"><span class="odd_span"><span class="even_span">취소</span></span></button>			</div>		</div>		<button type="button" title="링크 첨부 닫기" class="btn_close d_cmtpgn_layer_close_btn"><span class="odd_span">닫기</span></button>		<span class="shadow"></span>		<span class="bullet" style="left:97px;"></span>	</div></div>	</div>		</div>		<span class="wrap_btn_sns d_cmtpgn_sns_btn_wrapper">			<button type="button" title="�섏씠�ㅻ턿에 리뷰 함께 등록" class="btn_cmt_sns facebook d_cmtpgn_syncpost_btn"><span class="odd_span">�섏씠�ㅻ턿</span></button>			<button type="button" title="�몄쐞��에 리뷰 함께 등록" class="btn_cmt_sns twitter d_cmtpgn_syncpost_btn"><span class="odd_span">�몄쐞��</span></button>											</span>	</div>			<div class="wrap_btn02">		<button type="button" title="글 등록" class="btn_reg d_cmtpgn_cmt_reg_btn"><span class="odd_span"><span class="even_span">등록</span></span></button>	</div>		</div>	</div><div class="clfix mb8" id="d_cmtpgn_cmt_count_wrapper" style=""><div class="fl_left">		<strong class="fc_strong">총 <span class="fc_point d_cmtpgn_srch_cnt">8,762</span>개</strong>	</div>	<ul class="list_sort fl_right d_cmtpgn_sort_option_wrapper" style="">		<li class="first_child"><a href="#cmtpgn=&amp;pageNo=1&amp;sortType=0&amp;srchType=2&amp;srchWord=" title="理쒖떊�쒖쑝濡� 蹂닿린">理쒖떊��</a></li>		<li><a href="#cmtpgn=&amp;pageNo=1&amp;sortType=1&amp;srchType=2&amp;srchWord=" title="異붿쿇�쒖쑝濡� 蹂닿린">異붿쿇��</a></li>		<li class="on"><strong title="�듦��쒖쑝濡� 蹂닿린">�듦���</strong></li>	</ul></div>		<div class="list_cmt" id="d_cmtpgn_cmt_list_wrapper" style="">			<div class="search_loading d_cmtpgn_loading" style="display: none;">				<img src="http://image.melon.co.kr/resource/image/cmt/web/common/img_loading.gif" width="40" height="40" alt="">				<p>잠시 기다려 주세요.</p>			</div>			<ul style=""><li data-cmt-id="46818948" data-cmt-owner="off" class="first_child">		<div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">			<div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">				<span class="none">작성자</span>		<span class="thumb_wrap">			<a class="thumb d_cmtpgn_user" data-member-key="7007114" style="cursor:pointer;text-decoration:none;">				<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/71/8/7007114_194.jpg?tm=20151001125752" width="54" height="54" alt="">				<span class="thumb_frame"></span>			</a>		</span>					<!--<span class="none">작성자</span>					<span class="thumb_wrap">						<a class="thumb d_cmtpgn_user" data-member-key="7007114" style="cursor:pointer;text-decoration:none;">							<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/71/8/7007114_194.jpg?tm=20151001125752" width="54" height="54" alt="" />							<span class="thumb_frame"></span>						</a>					</span>				</span>-->				<div class="ellipsis" style="max-width: 102px;">															<a class="thumb d_cmtpgn_user" data-member-key="7007114" style="cursor:pointer;text-decoration:none;"><span class="d_cmtpgn_member_nickname" title="바비아이삥">바비아이삥</span></a>				</div>				<span class="icon_reg_mobile d_cmtpgn_icon"><span class="none">모바일에서 작성된 글</span></span>			</div>			<div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">				<div class="cntt">										<div class="cmt_text d_cmtpgn_cmt_full_contents" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap:break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display:block">		<div class="cmt_cont">		<span class="none">내용</span>		</div>										저희도 답글순 지금이라도 정화 해봅시다<br><br>끝말있기 할게요<br><br><br> 아무나 계속 해주세요!<br><br><br>"아이유"	</div>				</div>				<div>					<span class="none">작성일자</span>					<span class="date">						<span>2015.08.05</span>						<span class="time">21:41</span>					</span>				</div>						<div class="wrap_btn d_cmtpgn_cmt_info_wrapper">			<button type="button" title="답글 더보기" class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn" data-expand-target="#cmt_adcmt_46818948" data-control="expand" role="button"><span class="odd_span">		<span class="text">답글 <strong class="d_cmtpgn_adcmt_cnt">114</strong>개</span>		<span class="icon"></span>	</span></button>			<div class="wrap_btn_right">								<span class="wrap_btn_recm d_cmtpgn_recm_box">			<button type="button" title="글 추천" class="btn_recm positive d_cmtpgn_cmt_recm_btn"><span class="odd_span">				<span class="icon">추천</span>				<span class="none">총건수</span>28			</span></button>			<button type="button" title="글 비추천" class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"><span class="odd_span">				<span class="icon">비추천</span>				<span class="none">총건수</span>5			</span></button>		</span>						<span class="wrap_btn_report d_cmtpgn_cmt_btn_wrapper">		<button type="button" title="글 신고하기" class="btn_reprt d_cmtpgn_cmt_reprt_btn"><span class="odd_span">신고</span></button>	</span>											</div>				</div>			</div>		</div>		<ul class="lower_cmt d_cmtpgn_adcmt_list" id="cmt_adcmt_46818948" style=""></ul>	</li><li data-cmt-id="44350131" data-cmt-owner="off" class="">		<div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">			<div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">				<span class="none">작성자</span>		<span class="thumb_wrap">			<a class="thumb d_cmtpgn_user" data-member-key="23429402" style="cursor:pointer;text-decoration:none;">				<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/235/30/23429402_194.jpg?tm=20150719172639" width="54" height="54" alt="">				<span class="thumb_frame"></span>			</a>		</span>					<!--<span class="none">작성자</span>					<span class="thumb_wrap">						<a class="thumb d_cmtpgn_user" data-member-key="23429402" style="cursor:pointer;text-decoration:none;">							<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/235/30/23429402_194.jpg?tm=20150719172639" width="54" height="54" alt="" />							<span class="thumb_frame"></span>						</a>					</span>				</span>-->				<div class="ellipsis" style="max-width: 102px;">															<a class="thumb d_cmtpgn_user" data-member-key="23429402" style="cursor:pointer;text-decoration:none;"><span class="d_cmtpgn_member_nickname" title="파티해연">파티해연</span></a>				</div>				<span class="icon_reg_mobile d_cmtpgn_icon"><span class="none">모바일에서 작성된 글</span></span>			</div>			<div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">				<div class="cntt">										<div class="cmt_text d_cmtpgn_cmt_full_contents" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap:break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display:block">		<div class="cmt_cont">		<span class="none">내용</span>		</div>										빅뱅 팬분들 그만좀 하세요 아이유가 뭘잘못했다고 평점 테러하세요?	</div>				</div>				<div>					<span class="none">작성일자</span>					<span class="date">						<span>2015.05.18</span>						<span class="time">00:28</span>					</span>				</div>						<div class="wrap_btn d_cmtpgn_cmt_info_wrapper">			<button type="button" title="답글 더보기" class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn" data-expand-target="#cmt_adcmt_44350131" data-control="expand" role="button"><span class="odd_span">		<span class="text">답글 <strong class="d_cmtpgn_adcmt_cnt">93</strong>개</span>		<span class="icon"></span>	</span></button>			<div class="wrap_btn_right">								<span class="wrap_btn_recm d_cmtpgn_recm_box">			<button type="button" title="글 추천" class="btn_recm positive d_cmtpgn_cmt_recm_btn"><span class="odd_span">				<span class="icon">추천</span>				<span class="none">총건수</span>449			</span></button>			<button type="button" title="글 비추천" class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"><span class="odd_span">				<span class="icon">비추천</span>				<span class="none">총건수</span>363			</span></button>		</span>						<span class="wrap_btn_report d_cmtpgn_cmt_btn_wrapper">		<button type="button" title="글 신고하기" class="btn_reprt d_cmtpgn_cmt_reprt_btn"><span class="odd_span">신고</span></button>	</span>											</div>				</div>			</div>		</div>		<ul class="lower_cmt d_cmtpgn_adcmt_list" id="cmt_adcmt_44350131" style=""></ul>	</li><li data-cmt-id="44347974" data-cmt-owner="off" class="">		<div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">			<div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">				<span class="none">작성자</span>		<span class="thumb_wrap">			<a class="thumb d_cmtpgn_user" data-member-key="28380289" style="cursor:pointer;text-decoration:none;">				<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/284/81/28380289_194.jpg?tm=20150903160317" width="54" height="54" alt="">				<span class="thumb_frame"></span>			</a>		</span>					<!--<span class="none">작성자</span>					<span class="thumb_wrap">						<a class="thumb d_cmtpgn_user" data-member-key="28380289" style="cursor:pointer;text-decoration:none;">							<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/284/81/28380289_194.jpg?tm=20150903160317" width="54" height="54" alt="" />							<span class="thumb_frame"></span>						</a>					</span>				</span>-->				<div class="ellipsis" style="max-width: 102px;">															<a class="thumb d_cmtpgn_user" data-member-key="28380289" style="cursor:pointer;text-decoration:none;"><span class="d_cmtpgn_member_nickname" title="BewhY">BewhY</span></a>				</div>				<span class="icon_reg_mobile d_cmtpgn_icon"><span class="none">모바일에서 작성된 글</span></span>			</div>			<div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">				<div class="cntt">										<div class="cmt_text d_cmtpgn_cmt_full_contents" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap:break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display:block">		<div class="cmt_cont">		<span class="none">내용</span>		</div>										아이유짱	</div>				</div>				<div>					<span class="none">작성일자</span>					<span class="date">						<span>2015.05.18</span>						<span class="time">00:06</span>					</span>				</div>						<div class="wrap_btn d_cmtpgn_cmt_info_wrapper">			<button type="button" title="답글 더보기" class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn" data-expand-target="#cmt_adcmt_44347974" data-control="expand" role="button"><span class="odd_span">		<span class="text">답글 <strong class="d_cmtpgn_adcmt_cnt">49</strong>개</span>		<span class="icon"></span>	</span></button>			<div class="wrap_btn_right">								<span class="wrap_btn_recm d_cmtpgn_recm_box">			<button type="button" title="글 추천" class="btn_recm positive d_cmtpgn_cmt_recm_btn"><span class="odd_span">				<span class="icon">추천</span>				<span class="none">총건수</span>694			</span></button>			<button type="button" title="글 비추천" class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"><span class="odd_span">				<span class="icon">비추천</span>				<span class="none">총건수</span>387			</span></button>		</span>						<span class="wrap_btn_report d_cmtpgn_cmt_btn_wrapper">		<button type="button" title="글 신고하기" class="btn_reprt d_cmtpgn_cmt_reprt_btn"><span class="odd_span">신고</span></button>	</span>											</div>				</div>			</div>		</div>		<ul class="lower_cmt d_cmtpgn_adcmt_list" id="cmt_adcmt_44347974" style=""></ul>	</li><li data-cmt-id="44362735" data-cmt-owner="off" class="">		<div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">			<div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">				<span class="none">작성자</span>		<span class="thumb_wrap">			<a class="thumb d_cmtpgn_user" data-member-key="29361762" style="cursor:pointer;text-decoration:none;">				<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/294/62/29361762_194.jpg?tm=20150905190157" width="54" height="54" alt="">				<span class="thumb_frame"></span>			</a>		</span>					<!--<span class="none">작성자</span>					<span class="thumb_wrap">						<a class="thumb d_cmtpgn_user" data-member-key="29361762" style="cursor:pointer;text-decoration:none;">							<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/294/62/29361762_194.jpg?tm=20150905190157" width="54" height="54" alt="" />							<span class="thumb_frame"></span>						</a>					</span>				</span>-->				<div class="ellipsis" style="max-width: 102px;">															<a class="thumb d_cmtpgn_user" data-member-key="29361762" style="cursor:pointer;text-decoration:none;"><span class="d_cmtpgn_member_nickname" title="souza1">souza1</span></a>				</div>				<span class="icon_reg_mobile d_cmtpgn_icon"><span class="none">모바일에서 작성된 글</span></span>			</div>			<div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">				<div class="cntt">										<div class="cmt_text d_cmtpgn_cmt_full_contents" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap:break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display:block">		<div class="cmt_cont">		<span class="none">내용</span>		</div>										대체 아이유목소리가 독보적이니 청아하니 하는것들은 귀가 막귄가 .. 진짜 개평범한데 애초부터가수할 목소리가 아닌데 외모안되니 아티스트 컨셉잘잡고 마침 시가잘맞아서 뜬거지 .참한척털털한척 고단수에 ㅋㅋ 목소리도 가성 쉣소리에 어후  . 호구많네 ㅎ	</div>				</div>				<div>					<span class="none">작성일자</span>					<span class="date">						<span>2015.05.18</span>						<span class="time">08:33</span>					</span>				</div>						<div class="wrap_btn d_cmtpgn_cmt_info_wrapper">			<button type="button" title="답글 더보기" class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn" data-expand-target="#cmt_adcmt_44362735" data-control="expand" role="button"><span class="odd_span">		<span class="text">답글 <strong class="d_cmtpgn_adcmt_cnt">48</strong>개</span>		<span class="icon"></span>	</span></button>			<div class="wrap_btn_right">								<span class="wrap_btn_recm d_cmtpgn_recm_box">			<button type="button" title="글 추천" class="btn_recm positive d_cmtpgn_cmt_recm_btn"><span class="odd_span">				<span class="icon">추천</span>				<span class="none">총건수</span>84			</span></button>			<button type="button" title="글 비추천" class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"><span class="odd_span">				<span class="icon">비추천</span>				<span class="none">총건수</span>273			</span></button>		</span>						<span class="wrap_btn_report d_cmtpgn_cmt_btn_wrapper">		<button type="button" title="글 신고하기" class="btn_reprt d_cmtpgn_cmt_reprt_btn"><span class="odd_span">신고</span></button>	</span>											</div>				</div>			</div>		</div>		<ul class="lower_cmt d_cmtpgn_adcmt_list" id="cmt_adcmt_44362735" style=""></ul>	</li><li data-cmt-id="44348544" data-cmt-owner="off" class="">		<div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">			<div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">				<span class="none">작성자</span>		<span class="thumb_wrap">			<a class="thumb d_cmtpgn_user" data-member-key="28842148" style="cursor:pointer;text-decoration:none;">				<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/289/43/28842148_194.jpg?tm=20150917002334" width="54" height="54" alt="">				<span class="thumb_frame"></span>			</a>		</span>					<!--<span class="none">작성자</span>					<span class="thumb_wrap">						<a class="thumb d_cmtpgn_user" data-member-key="28842148" style="cursor:pointer;text-decoration:none;">							<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/289/43/28842148_194.jpg?tm=20150917002334" width="54" height="54" alt="" />							<span class="thumb_frame"></span>						</a>					</span>				</span>-->				<div class="ellipsis" style="max-width: 102px;">															<a class="thumb d_cmtpgn_user" data-member-key="28842148" style="cursor:pointer;text-decoration:none;"><span class="d_cmtpgn_member_nickname" title="927atm">927atm</span></a>				</div>				<span class="icon_reg_mobile d_cmtpgn_icon"><span class="none">모바일에서 작성된 글</span></span>			</div>			<div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">				<div class="cntt">										<div class="cmt_text d_cmtpgn_cmt_full_contents" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap:break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display:block">		<div class="cmt_cont">		<span class="none">내용</span>		</div>										자작곡은 아직 무리라는 분들 금요일에 만나요는 들어보셨나?<div class="wrap_cmt_box_thum d_cmtpgn_atach_box" data-atach-type="music_song" data-atach-id="4369827" data-song-album-id="2222587" data-song-adult-flag="0" data-song-avail-flag="0" data-st-avail-flag="true" data-dl-avail-flag="true" data-album-only-flag="0">		<div class="cmt_box_thum song">			<div class="image">				<a href="http://www.melon.com/song/detail.htm?songId=4369827" title="금요일에 만나요 (Feat. 장이정 Of HISTORY)" class="d_cmtpgn_atach_content d_cmtpgn_atach_content_melon_song">					<img onerror="WEBPOCIMG.defaultAlbumImg(this);" src="http://cdnimg.melon.co.kr/cm/album/images/022/22/587/2222587_th120.jpg" width="48" height="48" alt="">					<span class="thumb_frame"></span>				</a>			</div>			<div class="cntt">				<div class="wrap_btn">					<button type="button" title="금요일에 만나요 (Feat. 장이정 Of HISTORY) 재생" class="btn_icon play d_cmtpgn_atach_content d_cmtpgn_atach_content_melon_play"><span class="odd_span">재생</span></button>					<button type="button" title="금요일에 만나요 (Feat. 장이정 Of HISTORY) 다운로드" class="btn_icon_cmt dl d_cmtpgn_atach_content d_cmtpgn_atach_content_melon_download"><span class="odd_span">다운로드</span></button>				</div>				<dl>					<dt class="title">						<span class="none">곡명</span>																								<a href="http://www.melon.com/song/detail.htm?songId=4369827" title="금요일에 만나요 (Feat. 장이정 Of HISTORY)" class="d_cmtpgn_atach_content d_cmtpgn_atach_content_melon_song d_cmtpgn_multiline_ellipsis">금요일에 만나요 (Feat. 장이정 Of HISTORY)</a>					</dt>					<dd class="artist_name">						<div class="ellipsis" style="width: auto; max-width: 270px; word-break: normal; word-wrap: normal; white-space:nowrap;">							<span class="none">아티스트명</span>							<span>								<a href="http://www.melon.com/artist/timeline.htm?artistId=261143" title="아이유" class="d_cmtpgn_atach_content d_cmtpgn_atach_content_melon_artist">아이유</a>								<span class="d_cmtpgn_multiartist_ellipsis_tester" style="display: none;"><a href="http://www.melon.com/artist/timeline.htm?artistId=261143" title="아이유" class="d_cmtpgn_atach_content d_cmtpgn_atach_content_melon_artist">아이유</a></span>							</span>						</div>											</dd>					<dd class="info">						<span class="none">앨범명</span>						<span class="ellipsis">Modern Times - Epilogue</span>					</dd>				</dl>			</div>		</div>	</div>	</div>				</div>				<div>					<span class="none">작성일자</span>					<span class="date">						<span>2015.05.18</span>						<span class="time">00:11</span>					</span>				</div>						<div class="wrap_btn d_cmtpgn_cmt_info_wrapper">			<button type="button" title="답글 더보기" class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn" data-expand-target="#cmt_adcmt_44348544" data-control="expand" role="button"><span class="odd_span">		<span class="text">답글 <strong class="d_cmtpgn_adcmt_cnt">38</strong>개</span>		<span class="icon"></span>	</span></button>			<div class="wrap_btn_right">								<span class="wrap_btn_recm d_cmtpgn_recm_box">			<button type="button" title="글 추천" class="btn_recm positive d_cmtpgn_cmt_recm_btn"><span class="odd_span">				<span class="icon">추천</span>				<span class="none">총건수</span>836			</span></button>			<button type="button" title="글 비추천" class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"><span class="odd_span">				<span class="icon">비추천</span>				<span class="none">총건수</span>106			</span></button>		</span>						<span class="wrap_btn_report d_cmtpgn_cmt_btn_wrapper">		<button type="button" title="글 신고하기" class="btn_reprt d_cmtpgn_cmt_reprt_btn"><span class="odd_span">신고</span></button>	</span>											</div>				</div>			</div>		</div>		<ul class="lower_cmt d_cmtpgn_adcmt_list" id="cmt_adcmt_44348544" style=""></ul>	</li><li data-cmt-id="44352335" data-cmt-owner="off" class="">		<div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">			<div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">				<span class="none">작성자</span>		<span class="thumb_wrap">			<a class="thumb d_cmtpgn_user" data-member-key="15110070" style="cursor:pointer;text-decoration:none;">				<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/152/11/15110070_194.jpg?tm=20150918221939" width="54" height="54" alt="">				<span class="thumb_frame"></span>			</a>		</span>					<!--<span class="none">작성자</span>					<span class="thumb_wrap">						<a class="thumb d_cmtpgn_user" data-member-key="15110070" style="cursor:pointer;text-decoration:none;">							<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/152/11/15110070_194.jpg?tm=20150918221939" width="54" height="54" alt="" />							<span class="thumb_frame"></span>						</a>					</span>				</span>-->				<div class="ellipsis" style="max-width: 102px;">															<a class="thumb d_cmtpgn_user" data-member-key="15110070" style="cursor:pointer;text-decoration:none;"><span class="d_cmtpgn_member_nickname" title="2014년내꺼">2014년내꺼</span></a>				</div>				<span class="icon_reg_mobile d_cmtpgn_icon"><span class="none">모바일에서 작성된 글</span></span>			</div>			<div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">				<div class="cntt">										<div class="cmt_text d_cmtpgn_cmt_full_contents" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap:break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display:block">		<div class="cmt_cont">		<span class="none">내용</span>		</div>										진짜 10번을 들어도 별로네요;; 아무리들어도 중독없고 아이유인생 작년이 마무리인가봄 아이유님 그냥 토요일에만나요 나 내세요;; 이건너무심했다 기대를져버리네	</div>				</div>				<div>					<span class="none">작성일자</span>					<span class="date">						<span>2015.05.18</span>						<span class="time">00:57</span>					</span>				</div>						<div class="wrap_btn d_cmtpgn_cmt_info_wrapper">			<button type="button" title="답글 더보기" class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn" data-expand-target="#cmt_adcmt_44352335" data-control="expand" role="button"><span class="odd_span">		<span class="text">답글 <strong class="d_cmtpgn_adcmt_cnt">34</strong>개</span>		<span class="icon"></span>	</span></button>			<div class="wrap_btn_right">								<span class="wrap_btn_recm d_cmtpgn_recm_box">			<button type="button" title="글 추천" class="btn_recm positive d_cmtpgn_cmt_recm_btn"><span class="odd_span">				<span class="icon">추천</span>				<span class="none">총건수</span>62			</span></button>			<button type="button" title="글 비추천" class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"><span class="odd_span">				<span class="icon">비추천</span>				<span class="none">총건수</span>229			</span></button>		</span>						<span class="wrap_btn_report d_cmtpgn_cmt_btn_wrapper">		<button type="button" title="글 신고하기" class="btn_reprt d_cmtpgn_cmt_reprt_btn"><span class="odd_span">신고</span></button>	</span>											</div>				</div>			</div>		</div>		<ul class="lower_cmt d_cmtpgn_adcmt_list" id="cmt_adcmt_44352335" style=""></ul>	</li><li data-cmt-id="44412398" data-cmt-owner="off" class="">		<div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">			<div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">				<span class="none">작성자</span>		<span class="thumb_wrap">			<a class="thumb d_cmtpgn_user" data-member-key="26134713" style="cursor:pointer;text-decoration:none;">				<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://image.melon.co.kr/resource/image/cmt/web/common/noArtist01_54.jpg" width="54" height="54" alt="">				<span class="thumb_frame"></span>			</a>		</span>					<!--<span class="none">작성자</span>					<span class="thumb_wrap">						<a class="thumb d_cmtpgn_user" data-member-key="26134713" style="cursor:pointer;text-decoration:none;">							<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://image.melon.co.kr/resource/image/cmt/web/common/noArtist01_54.jpg" width="54" height="54" alt="" />							<span class="thumb_frame"></span>						</a>					</span>				</span>-->				<div class="ellipsis" style="max-width: 102px;">															<a class="thumb d_cmtpgn_user" data-member-key="26134713" style="cursor:pointer;text-decoration:none;"><span class="d_cmtpgn_member_nickname" title="ljp7133">ljp7133</span></a>				</div>				<span class="icon_reg_mobile d_cmtpgn_icon"><span class="none">모바일에서 작성된 글</span></span>			</div>			<div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">				<div class="cntt">										<div class="cmt_text d_cmtpgn_cmt_full_contents" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap:break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display:block">		<div class="cmt_cont">		<span class="none">내용</span>		</div>										아직도 이러네 ㅋㅋㅋ팬송이라면서 순위 올리려는 노력보소 이렇게되면 단순한 팬송이아닌데?<br>니들은 니들 스스로 안티를 만들고있다 한심한것들아 ㅋㅋㅋㅋㅋㅋㅋ<br> 아이유가 알아줄거같어? 오히려 쪽팔려할듯	</div>				</div>				<div>					<span class="none">작성일자</span>					<span class="date">						<span>2015.05.20</span>						<span class="time">17:26</span>					</span>				</div>						<div class="wrap_btn d_cmtpgn_cmt_info_wrapper">			<button type="button" title="답글 더보기" class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn" data-expand-target="#cmt_adcmt_44412398" data-control="expand" role="button"><span class="odd_span">		<span class="text">답글 <strong class="d_cmtpgn_adcmt_cnt">30</strong>개</span>		<span class="icon"></span>	</span></button>			<div class="wrap_btn_right">								<span class="wrap_btn_recm d_cmtpgn_recm_box">			<button type="button" title="글 추천" class="btn_recm positive d_cmtpgn_cmt_recm_btn"><span class="odd_span">				<span class="icon">추천</span>				<span class="none">총건수</span>22			</span></button>			<button type="button" title="글 비추천" class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"><span class="odd_span">				<span class="icon">비추천</span>				<span class="none">총건수</span>75			</span></button>		</span>						<span class="wrap_btn_report d_cmtpgn_cmt_btn_wrapper">		<button type="button" title="글 신고하기" class="btn_reprt d_cmtpgn_cmt_reprt_btn"><span class="odd_span">신고</span></button>	</span>											</div>				</div>			</div>		</div>		<ul class="lower_cmt d_cmtpgn_adcmt_list" id="cmt_adcmt_44412398" style=""></ul>	</li><li data-cmt-id="44346892" data-cmt-owner="off" class="">		<div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">			<div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">				<span class="none">작성자</span>		<span class="thumb_wrap">			<a class="thumb d_cmtpgn_user" data-member-key="6974113" style="cursor:pointer;text-decoration:none;">				<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://image.melon.co.kr/resource/image/cmt/web/common/noArtist01_54.jpg" width="54" height="54" alt="">				<span class="thumb_frame"></span>			</a>		</span>					<!--<span class="none">작성자</span>					<span class="thumb_wrap">						<a class="thumb d_cmtpgn_user" data-member-key="6974113" style="cursor:pointer;text-decoration:none;">							<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://image.melon.co.kr/resource/image/cmt/web/common/noArtist01_54.jpg" width="54" height="54" alt="" />							<span class="thumb_frame"></span>						</a>					</span>				</span>-->				<div class="ellipsis" style="max-width: 102px;">															<a class="thumb d_cmtpgn_user" data-member-key="6974113" style="cursor:pointer;text-decoration:none;"><span class="d_cmtpgn_member_nickname" title="serinㅇㅅㅇ">serinㅇㅅㅇ</span></a>				</div>				<span class="icon_reg_mobile d_cmtpgn_icon"><span class="none">모바일에서 작성된 글</span></span>			</div>			<div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">				<div class="cntt">										<div class="cmt_text d_cmtpgn_cmt_full_contents" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap:break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display:block">		<div class="cmt_cont">		<span class="none">내용</span>		</div>										아이유의 노래는 사랑입니다!!	</div>				</div>				<div>					<span class="none">작성일자</span>					<span class="date">						<span>2015.05.18</span>						<span class="time">00:00</span>					</span>				</div>						<div class="wrap_btn d_cmtpgn_cmt_info_wrapper">			<button type="button" title="답글 더보기" class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn" data-expand-target="#cmt_adcmt_44346892" data-control="expand" role="button"><span class="odd_span">		<span class="text">답글 <strong class="d_cmtpgn_adcmt_cnt">30</strong>개</span>		<span class="icon"></span>	</span></button>			<div class="wrap_btn_right">								<span class="wrap_btn_recm d_cmtpgn_recm_box">			<button type="button" title="글 추천" class="btn_recm positive d_cmtpgn_cmt_recm_btn"><span class="odd_span">				<span class="icon">추천</span>				<span class="none">총건수</span>1,354			</span></button>			<button type="button" title="글 비추천" class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"><span class="odd_span">				<span class="icon">비추천</span>				<span class="none">총건수</span>161			</span></button>		</span>						<span class="wrap_btn_report d_cmtpgn_cmt_btn_wrapper">		<button type="button" title="글 신고하기" class="btn_reprt d_cmtpgn_cmt_reprt_btn"><span class="odd_span">신고</span></button>	</span>											</div>				</div>			</div>		</div>		<ul class="lower_cmt d_cmtpgn_adcmt_list" id="cmt_adcmt_44346892" style=""></ul>	</li><li data-cmt-id="44387932" data-cmt-owner="off" class="">		<div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">			<div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">				<span class="none">작성자</span>		<span class="thumb_wrap">			<a class="thumb d_cmtpgn_user" data-member-key="30209183" style="cursor:pointer;text-decoration:none;">				<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://image.melon.co.kr/resource/image/cmt/web/common/noArtist01_54.jpg" width="54" height="54" alt="">				<span class="thumb_frame"></span>			</a>		</span>					<!--<span class="none">작성자</span>					<span class="thumb_wrap">						<a class="thumb d_cmtpgn_user" data-member-key="30209183" style="cursor:pointer;text-decoration:none;">							<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://image.melon.co.kr/resource/image/cmt/web/common/noArtist01_54.jpg" width="54" height="54" alt="" />							<span class="thumb_frame"></span>						</a>					</span>				</span>-->				<div class="ellipsis" style="max-width: 102px;">															<a class="thumb d_cmtpgn_user" data-member-key="30209183" style="cursor:pointer;text-decoration:none;"><span class="d_cmtpgn_member_nickname" title="진리의비툽이">진리의비툽이</span></a>				</div>				<span class="icon_reg_mobile d_cmtpgn_icon"><span class="none">모바일에서 작성된 글</span></span>			</div>			<div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">				<div class="cntt">										<div class="cmt_text d_cmtpgn_cmt_full_contents" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap:break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display:block">		<div class="cmt_cont">		<span class="none">내용</span>		</div>										아이유 이름빨이다 만약 아이유 활동명이 아이유가 아니라 훔바훔바 였다면 지금과 같은 인기는 절대 얻을 수 없었을것이다	</div>				</div>				<div>					<span class="none">작성일자</span>					<span class="date">						<span>2015.05.19</span>						<span class="time">07:46</span>					</span>				</div>						<div class="wrap_btn d_cmtpgn_cmt_info_wrapper">			<button type="button" title="답글 더보기" class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn" data-expand-target="#cmt_adcmt_44387932" data-control="expand" role="button"><span class="odd_span">		<span class="text">답글 <strong class="d_cmtpgn_adcmt_cnt">28</strong>개</span>		<span class="icon"></span>	</span></button>			<div class="wrap_btn_right">								<span class="wrap_btn_recm d_cmtpgn_recm_box">			<button type="button" title="글 추천" class="btn_recm positive d_cmtpgn_cmt_recm_btn"><span class="odd_span">				<span class="icon">추천</span>				<span class="none">총건수</span>38			</span></button>			<button type="button" title="글 비추천" class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"><span class="odd_span">				<span class="icon">비추천</span>				<span class="none">총건수</span>79			</span></button>		</span>						<span class="wrap_btn_report d_cmtpgn_cmt_btn_wrapper">		<button type="button" title="글 신고하기" class="btn_reprt d_cmtpgn_cmt_reprt_btn"><span class="odd_span">신고</span></button>	</span>											</div>				</div>			</div>		</div>		<ul class="lower_cmt d_cmtpgn_adcmt_list" id="cmt_adcmt_44387932" style=""></ul>	</li><li data-cmt-id="44368452" data-cmt-owner="off" class="">		<div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">			<div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">				<span class="none">작성자</span>		<span class="thumb_wrap">			<a class="thumb d_cmtpgn_user" data-member-key="15849370" style="cursor:pointer;text-decoration:none;">				<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/159/50/15849370_194.jpg?tm=20150916221416" width="54" height="54" alt="">				<span class="thumb_frame"></span>			</a>		</span>					<!--<span class="none">작성자</span>					<span class="thumb_wrap">						<a class="thumb d_cmtpgn_user" data-member-key="15849370" style="cursor:pointer;text-decoration:none;">							<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://cdnimg.melon.co.kr/svc/user_images/user/159/50/15849370_194.jpg?tm=20150916221416" width="54" height="54" alt="" />							<span class="thumb_frame"></span>						</a>					</span>				</span>-->				<div class="ellipsis" style="max-width: 102px;">															<a class="thumb d_cmtpgn_user" data-member-key="15849370" style="cursor:pointer;text-decoration:none;"><span class="d_cmtpgn_member_nickname" title="방탄지민정국">방탄지민정국</span></a>				</div>				<span class="icon_reg_mobile d_cmtpgn_icon"><span class="none">모바일에서 작성된 글</span></span>			</div>			<div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">				<div class="cntt">										<div class="cmt_text d_cmtpgn_cmt_full_contents" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap:break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display:block">		<div class="cmt_cont">		<span class="none">내용</span>		</div>										드라마에서보니깐 매니저한테 갑질하던데 진짜어이없던데... 아이유씨 그게 당신의 본모습입니까?....;;	</div>				</div>				<div>					<span class="none">작성일자</span>					<span class="date">						<span>2015.05.18</span>						<span class="time">15:55</span>					</span>				</div>						<div class="wrap_btn d_cmtpgn_cmt_info_wrapper">			<button type="button" title="답글 더보기" class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn" data-expand-target="#cmt_adcmt_44368452" data-control="expand" role="button"><span class="odd_span">		<span class="text">답글 <strong class="d_cmtpgn_adcmt_cnt">25</strong>개</span>		<span class="icon"></span>	</span></button>			<div class="wrap_btn_right">								<span class="wrap_btn_recm d_cmtpgn_recm_box">			<button type="button" title="글 추천" class="btn_recm positive d_cmtpgn_cmt_recm_btn"><span class="odd_span">				<span class="icon">추천</span>				<span class="none">총건수</span>16			</span></button>			<button type="button" title="글 비추천" class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"><span class="odd_span">				<span class="icon">비추천</span>				<span class="none">총건수</span>136			</span></button>		</span>						<span class="wrap_btn_report d_cmtpgn_cmt_btn_wrapper">		<button type="button" title="글 신고하기" class="btn_reprt d_cmtpgn_cmt_reprt_btn"><span class="odd_span">신고</span></button>	</span>											</div>				</div>			</div>		</div>		<ul class="lower_cmt d_cmtpgn_adcmt_list" id="cmt_adcmt_44368452" style=""></ul>	</li></ul><p class="search_wrong d_cmtpgn_nodata" style="display: none;">등록된 글이 없습니다.</p><div class="wrap_check_sys d_cmtpgn_fallback" style="display: none; margin-top: 40px; margin-bottom: 40px;">		<div>			<div class="img_check_sys" style="width:320px"></div>			<div class="msge">				<h3>접속이 지연되고 있습니다.</h3>				<p>잠시 후 다시 이용해 주시기 바랍니다.<br>이용에 불편을 드려 대단히 죄송합니다.</p>			</div>		</div>	</div>		</div>			<div class="paginate" id="d_cmtpgn_paginate_wrapper" style=""><a class="btn_first disabled d_cmtpgn_navigator" title="맨 처음"><span>맨 처음</span></a>	<a class="btn_pre disabled d_cmtpgn_navigator" title="이전"><span>이전</span></a>	<span class="page_num"><strong><span class="none">�꾩옱�섏씠吏�</span>1</strong><a href="#cmtpgn=&amp;pageNo=2&amp;sortType=2&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">2</a><a href="#cmtpgn=&amp;pageNo=3&amp;sortType=2&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">3</a><a href="#cmtpgn=&amp;pageNo=4&amp;sortType=2&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">4</a><a href="#cmtpgn=&amp;pageNo=5&amp;sortType=2&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">5</a><a href="#cmtpgn=&amp;pageNo=6&amp;sortType=2&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">6</a><a href="#cmtpgn=&amp;pageNo=7&amp;sortType=2&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">7</a><a href="#cmtpgn=&amp;pageNo=8&amp;sortType=2&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">8</a><a href="#cmtpgn=&amp;pageNo=9&amp;sortType=2&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">9</a><a href="#cmtpgn=&amp;pageNo=10&amp;sortType=2&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">10</a></span>	<a href="#cmtpgn=&amp;pageNo=11&amp;sortType=2&amp;srchType=2&amp;srchWord=" class="btn_next d_cmtpgn_navigator" title="다음"><span>다음</span></a>	<a href="#cmtpgn=&amp;pageNo=877&amp;sortType=2&amp;srchType=2&amp;srchWord=" class="btn_last d_cmtpgn_navigator" title="맨 끝"><span>맨 끝</span></a></div>		<div class="wrap_search" id="d_cmtpgn_srch_wrapper" style=""><div class="select_wrap d_cmtpgn_srch_option_wrapper">		<select title="검색 방법 선택" class="d_selectbox" style="width: 55px; display: none;" data-class="select_type02">			<option value="2" selected="selected">내용</option>			<option value="1">작성자</option>		</select><div class="select_type02"><span class="select_box" tabindex="0" title="검색 방법 선택"><span class="sel_r" style="width: 55px;">내용</span></span><div class="select_open" style="position: absolute; display: none;" tabindex="0"><ul><li class="on"><a href="#" data-value="2" data-text="내용">내용</a></li><li><a href="#" data-value="1" data-text="작성자">작성자</a></li></ul></div></div>	</div>	<input type="text" title="검색 입력 창 (검색어를 입력해 주세요)" placeholder="검색어를 입력해 주세요" class="input_text d_cmtpgn_srch_input" style="width:184px;">	<button type="button" title="검색" class="btn_base02 d_cmtpgn_cmt_srch_btn"><span class="odd_span"><span class="even_span">검색</span></span></button></div><textarea id="d_cmtpgn_dummy_textarea" cols="30" rows="20" style="width:652px; height:0px; margin:0; padding:0; border:0;"></textarea><form id="d_cmtpgn_dummy_form" name="d_cmtpgn_dummy_form"></form></div>
					</div>
					<!-- //由щ럭  -->
					<!-- ?곌? ?⑤?  -->
					
					<!-- //?곌? ?⑤?  -->
					<!-- ??濡? 怨≪?? ?ы?⑤?? DJ ?????대━?ㅽ??  -->
					
					<div class="section_playlist">
						
						<div class="list_dj_play">
							
						</div>
					</div>
					
					<!-- //??濡? 怨≪?? ?ы?⑤?? DJ ?????대━?ㅽ??  -->
					<!-- 醫????? ?? ?щ??  -->
					
					<div class="section_intst">
						
						<div class="wrap_list_intst">
			</div>
						<div class="wrap_page">
							
							<div class="page">
								
								<span class="wrap_btn">
									<a href="#;" title="?댁??" class="btn btn_pre d_btn withLikeBtnTmp disabled" id="withLikeBtnTmp1" data-orderby-type="MELONDJ_YN" data-limit-count="13" data-view-type="withLikeUser" data-view-contsid="2319008"></a>
									<a href="#;" title="?ㅼ??" class="btn btn_next d_btn withLikeBtnTmp mhover" id="withLikeBtnTmp2" data-orderby-type="MELONDJ_YN" data-limit-count="13" data-view-type="withLikeUser" data-view-contsid="2319008"></a>
								</span>
							</div>
						</div>
					</div>
					
					<!-- //醫????? ?? ?щ??  -->
				</div>
<!-- C. ??泥? 怨듯?? ?ㅽ?щ┰?? -->

	<script type="text/javascript">
		var httpWww = "http://www.melon.com";
		var httpsWww = "https://www.melon.com";
		var POC_ID = "WP10";
	</script>

	<script type="text/javascript" src="/resource/script/web/common/melonweb_openlib.js"></script>
	<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/2g/e/1y2hqs1ftr1.js"></script> 
	<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/6e/p/up2qiygqvd.js"></script> 
	<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/nw/n/1edc7lk2xux.js"></script> 
	<script type="text/javascript" src="/resource/script/web/cm/common/melonweb_cm.js"></script>
	<script type="text/javascript" src="/resource/script/web/chart/json2.js"></script>
	<script type="text/javascript" src="http://log.melon.com/mlog.js"></script>

	<script type="text/javascript">
		var melon = MELON.WEBSVC.POC;

		document.domain="melon.com";
		
		//pocId 荑??ㅼ?ㅼ?? ?ㅽ??
		try {
			melon.setPocId();
		} catch (e){}
	</script>
	
	<script type="text/javascript" src="/resource/script/web/common/socket.io.js"></script>
<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/fl/7/uot4m6bho9.js"></script>
<!-- D. ?대?? 硫??? 愿??? 怨듯?? ?ㅽ?щ┰?? -->
<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/ry/z/13686ujiqt.js"></script>

<!-- D. ??硫? ?대? ???? ?ㅽ?щ┰?? -->
<script type="text/javascript">
$(function() {
	"use strict";
	var $doc = $(document),
		WEBSVC = MELON.WEBSVC,
		PBPGN = MELON.PBPGN,
		addComma = WEBSVC.number.addComma;

	/* ********************************************************************************
	 * ?⑤??대?몄? ????
	 ******************************************************************************** */
	$("a.photoDetailThumb").click(function(e) {
		e.preventDefault();

		var $img = $(this).children('img');
		//window.open('http://image.melon.co.kr' + $img.attr('org_src'), "?대?몄??ш?蹂닿린", "height=" + screen.height + ", width=" + screen.width + ", toolbar=no, menubar=no, scrollbars=no, resizable=yes, fullscreen=no");
		MELON.WEBSVC.openPopup('http://image.melon.co.kr' + $img.attr('org_src'), screen.width, screen.height, {
			'scrollbars':'no',
			'toolbar' : 'no',
			'menubar' : 'no',
			'resizable' : 'yes',
			'fullscreen' : 'no'
		}, 'center', '');
	});
	// ???? ????  Show /hide SEt
	var checkPopup = true;
	if( "" == 'Y') {
		checkPopup = false;
	}
	$('div.stPointLayer').on('beforeshow', function(e) {
		if( !checkPopup ) { // 留??? ??濡??ㅼ?댁?? ????吏?硫? ?????? 議곌굔?? ??,
			alert("?대?? 李몄?ы???⑥?듬????.");
			e.preventDefault(); // ?? 遺?遺??? ?ｌ?댁＜硫? ????.
			return false;
		}
	});
	 // ??湲? 移댁?댄?? URL SET
	 // 由щ럭 ?????? ???명???? ????蹂대?? 湲멸꼍?? ??蹂닿린 ?몄? 諛? ???? 以???
	 melon.show.moreButton('d_video_summary', 203);

	/* ********************************************************************************
	 * ?⑤?????
	 ******************************************************************************** */
	$("#d_starRate").starRating().on('changedrate', function(e, val) {
		setTimeout(function(){  // IE ????留? 踰?洹? fixed
			$('#d_rate').html(val.rate.toFixed(1));
		}, 0);
	}).on('click', '[data-role=ok]', function(){
		if(!MELON.WEBSVC.POC.login.isMelonLogin()) {
			MELON.WEBSVC.POC.login.loginPopupLayerd('');
			return;
		}
		if( "" == 'Y') {
			alert("?대?? 李몄?ы???⑥?듬????.");
			return;
		}
		// ??踰? 濡?吏?
		$.ajax({
			type:"post",
			url: '/album/insertAlbumGrade.json',
			dataType:"json",
			async:true,
			data : {
				albumId: '2319008',
				evalScore	: $('#d_rate').html()
			},
			success:function(obj){
				if(obj.result.RESULT == '1') {
					alert("?????? ?깅? ???듬????.");
					var vTempCount = MELON.WEBSVC.number.addComma(obj.result.PTCPNMPRCO);
					$("#gradCountLayer").html(vTempCount+"紐?");
					var totalAvgScore = obj.result.TOTAVRGSCORE;
					var roundScore = parseFloat(totalAvgScore).toFixed(1);
					$("#gradPointLayer").html(roundScore);
					var viewValue =(obj.result.TOTAVRGSCORE)*20;
					$("#contt_evalscore01_view").attr("style", "width:"+viewValue+"%");
					checkPopup = false;
				} else if(obj.result.RESULT == '2'){
					alert("?대?? 李몄?ы???⑥?듬????.");
				} else {
					alert("???? ?깅?以? ?ㅻ?媛?  諛??????듬????");
				}
			},
			error: function(request,error) {
				alert("???? ?깅?以? ?ㅻ?媛?  諛??????듬????");
			}
		});
		$("#d_starRate").hideLayer();
	});

	// 裕ㅼ?鍮????? ??
	$('.section_mv').toggleSlider({
		type:'count-on',
		selectors: {
			tabs: '>div.wrap_page>div.page>span.wrap_btn>a',
			contents: '>div.wrap_list_mv>ul',
			nowpages: '>div.wrap_page>div.page>span.page_num>strong',
			totalpages: '>div.wrap_page>div.page>span.page_num>span'
		}
	});

	// ??由ъ??⑤? ??
	$('div.section_seris').ajaxToggle({
		type:'count-on',
		selectors: {
			// 踰??? ???? [d_btn]?? 怨듯?듭?닿린 ??臾몄?? ?뱀?? ?대???ㅻ?? 以???.
			tabs: 'a.relationBtnTmp',
			// ???? ???댁? DP ????
			nowpages: 'strong.d_now_page',
			// ???? ???댁? DP ????
			totalpages: 'span.d_total_page',
			// AJAX ?몄??? InnerHtml ?댁??쇳?? ????
			contents: 'div.wrap_list_seris'
		}
	});

	// 醫??????? ?щ??
	$('div.section_intst').ajaxToggle({
		type:'count-on',
		selectors: {
			// 踰??? ???? [d_btn]?? 怨듯?듭?닿린 ??臾몄?? ?뱀?? ?대???ㅻ?? 以???.
			tabs: 'a.withLikeBtnTmp',
			// ???? ???댁? DP ????
			nowpages: 'strong.d_now_page',
			// ???? ???댁? DP ????
			totalpages: 'span.d_total_page',
			// AJAX ?몄??? InnerHtml ?댁??쇳?? ????
			contents: 'div.wrap_list_intst',
			orderlayer : 'a.orderClass' // ???? Layer
		}
	});
	// 醫??????? ?щ?? ???? ?대┃
	$('a.orderClass').on('click', function(e){
		$('.list_sort').find(">li").each(function() {
			$(this).removeClass("on");
		})
		$(this).parent().addClass("on");
		var inputId = this.id;
		$("a.withLikeBtnTmp").each(function() {
			$(this).attr("data-orderby-type",inputId);
		});
	});
	/******************SNS *****************/
	 //???댁?ㅻ?
    $("#albumFacebook").click(function(){
    	$.albumName = "留???";
		$.artistName = "???댁??";
		$.imgUrl = $("#albumImgArea img").attr("src");
		$.menuId = $(this).attr("data-menuId");
		melon.sns.facebook({
			type 		: "alb",
			contsId 	: "2319008",
			albumName	: $.albumName,
			artistName  : $.artistName,
			imgUrl      : $.imgUrl,
			menuId		: $.menuId
		});
    });
    $("#albumTwitter").click(function(){
		$.albumName = "留???";
		$.artistName = "???댁??";
		$.menuId = $(this).attr("data-menuId");
		melon.sns.twitter({
			type 		: "alb",
			contsId 	: "2319008",
			albumName	: $.albumName,
			artistName  : $.artistName,
			menuId		: $.menuId
		});
	});


 	// Banner Info
	var serverTime = "2015:10:22 10:27:17"; 	// ??媛??? ??踰????? 李??댁＜?몄??.(yyyy:MM:dd hh:mm:ss)
	$(document).on('limitpopup', function( e, cookieId ) {
		if ( cookieId === 'linebanner01' ) {
			$('div.line_ban').show();
			$('div.line_ban').timeLimitSet({cookieType:'array',timeLocation:'local',timeType:'dayafter',selectors:{closebtn:'>button.d_fadeout', checkbox:''}});
		}
	});
 	// 諛??몃?? ???? ?몄? ?댁?쇳??
	PBPGN.TimeLimitPopup.init({ cookieType:'array', cookieId:'linebanner01', limitType:'day', serverTime:serverTime });

	$('.btn_ver').on('click', function(){
		if('0' == "1"){
			melon.link.goAlbumDetail('');
		} else {
			WEBSVC.openPopup('/album/popup/otherAlbumPopup.htm?albumId=2319008', 834, 640);
		}
	});

	// 遺??대┸ ??媛? 諛곕??
	var bookletBnr = WEBSVC.Cookie.get('commerceBanner2');
	if (!bookletBnr) {
		$('.booklet_bnr').show();
	};
	$('.booklet_bnr .d_limit_btn').click(function() {
		var expiresDay = new Date();
		expiresDay.setDate(expiresDay.getDate() + 100000);
		$('.booklet_bnr').hide();
		WEBSVC.Cookie.set('commerceBanner2', true, {expires : expiresDay});
	});

	// ???⑥?? 醫?????..
	$('div.like_area button.btn_like_b').on('click', function(){
		// 131114_????
		var $btn = $(this),
			albumNo = $btn.attr('data-album-no'),
			menuId = $btn.attr('data-album-menuId'),
			title = $btn.attr('title').split(' 醫?????'),
			isLike = $btn.hasClass('on'), doLike = !isLike,
			addComma = WEBSVC.number.addComma,
			$target = (function(){
				var targetId = $btn.attr('data-target-id');
				if(!targetId) { return $btn; }
				targetId = targetId.substr(0, 1) === '#' ? targetId : '#' + targetId;
				return $(targetId);
			})(),
			defer, event;

		$btn.trigger((event = $.Event('likebefore')), [albumNo, doLike]);
		if(event.isDefaultPrevented()){ return; }

		if(isLike) {
			WEBSVC.alert2('醫????? 痍⑥???????듬????.',{opener :$btn, removeOnClose:true});
			defer = WEBSVC.AlbumList.dislike(albumNo,menuId)
		} else {
			defer = WEBSVC.AlbumList.like(albumNo,menuId);
		}

		defer.done(function(json) {

			if(json.result === true) {
				$btn.trigger((event = $.Event('likechanged')), [albumNo, title[0], doLike, json.data.SUMMCNT.toString().replace(/(\d)(?=(?:\d{3})+$)/g, "$1,")]);
				if(event.isDefaultPrevented()){ return; }

				$btn[doLike ? 'addClass' : 'removeClass']('on').attr('title', title[0] + (doLike ? ' 醫????? 痍⑥??' : ' 醫?????'));

				$target.html(json.data.SUMMCNT.toString().replace(/(\d)(?=(?:\d{3})+$)/g, "$1,"));
				doLike && WEBSVC.alert2('醫????? 諛????????듬????.',{opener :$btn, removeOnClose:true});
				loadTopLike();
				loadBottomLike();
				loadLikeUserTotCount();
			} else {
				alert(json.errorMessage);
			}
		}).fail(function(msg){
			alert(msg);
		});
	});

	function loadTopLike() {
		$.ajax({
			url: '/album/albumTopLikeUser.htm',
			data: {
				contsId : '2319008',
				viewPage : '1'
			},
			async : false
		}).done(function(html) {
			$('#albumTopLikeUserLayer').html(html);
		});
	}

	function loadBottomLike() {
		$.ajax({
			url: '/album/withLikeUser.htm',
			data: {
				contsId : '2319008',
				viewPage : '1'
			},
			async : false
		}).done(function(html) {
			$('.wrap_list_intst').html(html);
		});
	}
	function loadLikeUserTotCount() {
		$.ajax({
			url: '/album/withLikeUser.json',
			dataType:"json",
			data: {
				contsId : '2319008',
				viewPage : '1'
			},
			async : false
		}).done(function(json) {

			if(json.withLikeListTotCountPg == 0)
				$("#bottomListUserLayer").hide();
			else
				$("#bottomListUserLayer").show();

			$("#withLikeBtnTmp1").attr("data-limit-count",json.withLikeListTotCountPg);
			$("#withLikeBtnTmp2").attr("data-limit-count",json.withLikeListTotCountPg);
			$('div.section_intst').ajaxToggle({
				type:'count-on',
				selectors: {
					// 踰??? ???? [d_btn]?? 怨듯?듭?닿린 ??臾몄?? ?뱀?? ?대???ㅻ?? 以???.
					tabs: 'a.withLikeBtnTmp',
					// ???? ???댁? DP ????
					nowpages: 'strong.d_now_page',
					// ???? ???댁? DP ????
					totalpages: 'span.d_total_page',
					// AJAX ?몄??? InnerHtml ?댁??쇳?? ????
					contents: 'div.wrap_list_intst',
					orderlayer : 'a.orderClass' // ???? Layer
				}
			});
		});
	}

});
function goArtist(obj){
	location.href="/artist/detail.htm?artistId="+obj;
}
function goReview(){
	var position = $("#section_rvew").offset();
	$("html, body").animate({scrollTop : position.top}, 0);
}
</script>
<script type="text/javascript">document.domain='melon.com';</script>
<!-- ???ш렇?? ?ㅽ?щ┰?? -->
<script type="text/javascript" src=" http://cmt.melon.com/cmt/plugin/release/melonweb_cmtpgn_pc_sumry_type.js"></script>
			<!-- //contents -->
		</div>
	</div>
	<!-- footer -->
	<div id="footer" class="my_fold">
		<div class="btn_top_wrap" style="position: fixed; display: none;">
			<a href="#skip_nav" class="btn_top" title="留? ??濡? 媛?湲?" style=""><span>留? ??濡? 媛?湲?</span></a>
		</div>

		
		
		
		
		<!-- ?? 以??쇰?? add ?대???? 異?媛? -->
		<!-- <div class="ban add">
			<a href="http://www.melon.com/cds/event/web/event_first.htm?SUB=FB" title="2012 ????誘쇨뎅 ?쇱?ㅽ?몃????? ????
"><img height="32" width="110" src="http://cdnimg.melon.co.kr/resource/image/web/common/ban_footer01.png" alt="2012 ????誘쇨뎅 ?쇱?ㅽ?몃????? ????"/></a><a href="http://www.melon.com/cds/event/web/event_kbpi.htm?SUB=FB" title="??援??λ?????而⑥?ㅽ?? 2012 釉????? ???? 1??
"><img height="32" width="122" src="http://cdnimg.melon.co.kr/resource/image/web/common/ban_footer02.png" alt="??援??λ?????而⑥?ㅽ?? 2012 釉????? ???? 1??"/></a>
		</div> -->
		<a href="#" class="btn_top" title="留? ??濡? 媛?湲?" style="display: none;">留? ??濡? 媛?湲?</a>
		<!--140602 異?媛? lyr-->
		<div id="btnMobileWeb" class="mobile_btn_wrap" style="display:none;">
			<p>???????? ?⑤?/釉??쇱?곗???????? 硫?濡? ??鍮??ㅼ?? ?ъ?⑹?? ?쇰? ?????? ?? ???듬????. ???대?????由쎈????.</p>
			<a href="javascript:;" onclick="goMelonTPage();" class="btn btn_big" title="紐⑤??? ?? 踰???">
				<span class="odd_span">
					<span class="even_span">紐⑤??? ?? 踰???</span>
				</span>
			</a>
		</div>
		<script type="text/javascript">

			$(function() {
				// 紐⑤???(t.com)???? ???댁?? 寃쎌?? - 紐⑤???(t.com) ??鍮??? 醫?猷?濡? ????
/*
				var fromMobileWeb = getCookie("D");

				if(fromMobileWeb != null && fromMobileWeb.indexOf('T') > -1){
					$("#btnMobileWeb").css("display", "block");
				}
*/
				// ?ｌ? 釉??쇱?곗???닿? ?대?? ?????? ?? ???? ???? 寃쎌?? 泥댄?ы???? ?????? ???대??.
				var isEdge = (navigator.userAgent.indexOf("Edge") > 0);
				var edgeCheckYN = getCookie("EDGE_CHECK") != 'Y';
				
				if(isEdge && edgeCheckYN){
					window.open('http://www.melon.com/error_page/error_edgeTypeA.html','edgeCheck','scrollbars=no, resizable=no, location=no, width=560, height=498');
				}
				
				// ??釉????닿? ?대?? ?????? ?? ???? ???? 寃쎌?? 泥댄?ы???? ?????? ???대??.
				var tabletCheckYN = getCookie("TABLET_CHECK") != 'Y';

				if(melon.isTablet() && tabletCheckYN){
					window.open('http://www.melon.com/error_page/error_tabletTypeA.html','tabletPopTypeA','scrollbars=no, resizable=no, location=no, width=560, height=483');
				}
				
				// ?대?? 荑??ㅺ? 議댁?ы??硫? 荑??? ????
				if(getCookie("CHECK_POP") != ''){
					// 泥댄?? ?? ?대?? 荑??ㅻ?? ??嫄?
					var expireDate = new Date();
					expireDate.setDate(expireDate.getDate()-1);
					document.cookie = "CHECK_POP=;path=/;expires="+expireDate.toGMTString()+";domain=.melon.com";
				}
			});

			function goMelonTPage(){
				// 荑??? ???? ?? t.com?쇰? ???댁? ?대??
				var expireDate = new Date();
				expireDate.setDate(expireDate.getDate()-1);
				document.cookie = "D=;path=/;expires="+expireDate.toGMTString()+";domain=.melon.com";

				location.href= 'http://t.melon.com';
			}
		</script>
		<!--//140602 異?媛? lyr-->
	</div>
	<!-- //footer -->
</div>


<!---->
<!--  style.css???? ?대?몄? 異?媛??댁?? div class?대??? ?ｌ?대??. ?대?몄??? ??泥댁???쇰? style.css????. 
	  
.bannersearch{
	background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
	background-size:100% 100%;
	min-height:895px;
}

css???? ?대?몄? ?대?곗???쇰? 異?媛???怨? div???? ?대???ㅻ? ?ｌ?댁＜硫? ????.
-->

<!---->
<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../js/bootstrap.js"></script>	  


<!---->
<!--  style.css???? ?대?몄? 異?媛??댁?? div class?대??? ?ｌ?대??. ?대?몄??? ??泥댁???쇰? style.css????. 
	  
.bannersearch{
	background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
	background-size:100% 100%;
	min-height:895px;
}

css???? ?대?몄? ?대?곗???쇰? 異?媛???怨? div???? ?대???ㅻ? ?ｌ?댁＜硫? ????.
-->

<!---->
<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../js/bootstrap.js"></script>	  

</body></html>
<!---->
<!--  style.css안에 이미지 추가해서 div class이름에 넣어라. 이미지는 전체적으로 style.css안에. 
	  
.bannersearch{
	background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
	background-size:100% 100%;
	min-height:895px;
}

css안에 이미지 이런식으로 추가하고 div안에 클래스명 넣어주면 된다.
-->

<!---->
<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../js/bootstrap.js"></script>	  
</body>
</html>