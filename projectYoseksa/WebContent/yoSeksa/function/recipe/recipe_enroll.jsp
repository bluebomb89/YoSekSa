<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Flooring a Interior category Flat Bootstarp Responsive
	Website Template | Home :: w3layouts</title>
<link href="../../css/bootstrap.css" type="text/css" rel="stylesheet"
	media="all">
<link href="../../css/component.css" rel="stylesheet" type="text/css" />
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<!-- <link href="../../css/style.css" type="text/css" rel="stylesheet" media="all"> -->
<link href="../../css/style3.css" type="text/css" rel="stylesheet"
	media="all">
<link href="../../css/bootstrapTheme.css" rel="stylesheet">
<link href="../../css/custom.css" rel="stylesheet">
<link href="../../css/owl.carousel.css" rel="stylesheet">
<link href="../../css/owl.theme.css" rel="stylesheet">
<link href="../../css/recipe_regi.css" rel="stylesheet">
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Flooring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<!-- //footer -->
<script type="text/javascript" src="js/saved_resource"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/owl.carousel.min.js"></script>
<!--/animated-css-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 900);
		});
		$('.slideshow').cycle({
			fx : 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
		});

	});
</script>
<script>
	$(document).ready(function() {

		var owl = $("#owl-demo");

		owl.owlCarousel({
			items : 10, //10 items above 1000px browser width
			itemsDesktop : [ 1000, 5 ], //5 items between 1000px and 901px
			itemsDesktopSmall : [ 900, 3 ], // betweem 900px and 601px
			itemsTablet : [ 600, 2 ], //2 items between 600 and 0
			itemsMobile : false
		// itemsMobile disabled - inherit from itemsTablet option
		});

		// Custom Navigation Events
		$(".next").click(function() {
			owl.trigger('owl.next');
		})
		$(".prev").click(function() {
			owl.trigger('owl.prev');
		})
		$(".play").click(function() {
			owl.trigger('owl.play', 1000); //owl.play event accept autoPlay speed as second parameter
		})
		$(".stop").click(function() {
			owl.trigger('owl.stop');
		})

	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		/* affix the navbar after scroll below header */
		$('#nav').affix({
			offset : {
				top : $('header').height() - $('#nav').height()
			}
		});

	});
</script>
<script>
	$(function() {
		$("#slider").responsiveSlides({
			auto : true,
			nav : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>

<!--script-->

</head>
<body class="cbp-spmenu-push">
	<!--bottom-->
	<!-- header -->

	<!---->
	<!--  style.css안에 이미지 추가해서 div class이름에 넣어라. 이미지는 전체적으로 style.css안에. 
	  
.bannersearch{
	background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
	background-size:100% 100%;
	min-height:895px;
}

css안에 이미지 이런식으로 추가하고 div안에 클래스명 넣어주면 된다.
-->
	<form name="insFrm" id="insFrm" method="post" style="height: 1996px;">
	<div class="container recipe_regi" style="margin-top: 60px; margin-left: 11px;margin-right: 11px;width: 1240px;padding-left: 0px;padding-right: 0px;">
	  <div class="regi_center" style="height: 1870px;">
		<div class="regi_title">Wirte Recipe</b></div>
		  <div class="cont_box pad_l_60" style="height: 422px;">
		  	<div id="divMainPhotoUpload" class="cont_pic2">
		  	 <div style="position:absolute;left:-3000px">
		  	  <input type="file" name="q_main_file" id="q_main_file" file_gubun="main" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text="">
		  	 </div>
		  	 <div id="divMainPhotoBox" is_over="0">
               <img id="mainPhotoHolder" onclick="browseMainFile()" src="http://recipe1.ezmember.co.kr/img/pic_none4.gif" style="width: 250px; height: 250px; cursor:pointer">
        	 </div>
        	
		  	</div>
		  	<div class="cont_line"><p class="cont_tit4">������ ����</p><input type="text" name="cok_title" id="cok_title" value="" class="form-control" placeholder="��) �Ұ��� �̿��� ���̱�" style="width:610px; "></div>
		  </div>
	    </div>
	 </div>
	</form>
	<!-- recipe enroll form -->
	


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
					$().UItoTop({
						easingType : 'easeOutQuart'
					});
				});
			</script>

			<a href="#to-top" id="toTop" style="display: block;"> <span
				id="toTopHover" style="opacity: 1;"> </span></a>
			<!---->
			<!-- Bootstrap core JavaScript
    ================================================== -->
			<!-- Placed at the end of the document so the pages load faster -->
			<script src="js/bootstrap.js"></script>
</body>
</html>