<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
<!-- <link href="css/style.css" type="text/css" rel="stylesheet" media="all"> -->
<link href="../../css/style3.css" type="text/css" rel="stylesheet"
	media="all">
<link href="../../css/bootstrapTheme.css" rel="stylesheet">
<link href="../../css/custom.css" rel="stylesheet">
<link href="../../css/owl.carousel.css" rel="stylesheet">
<link href="../../cssl/owl.theme.css" rel="stylesheet">
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
<script type="text/javascript" src="../../js/saved_resource"></script>
<script type="text/javascript" src="../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
<script src="../../js/modernizr.custom.js"></script>
<script src="../../js/jquery-1.11.1.min.js"></script>
<script src="../../js/responsiveslides.min.js"></script>
<script type="text/javascript" src="../../js/jquery.cycle.all.js"></script>
<script src="../../js/owl.carousel.js"></script>
<script src="../../js/owl.carousel.min.js"></script>
<!--/animated-css-->
<script type="text/javascript" src="../../js/move-top.js"></script>
<script type="text/javascript" src="../../js/easing.js"></script>
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
	<section class="button">
		<button id="showLeftPush">
			<img src="../../images/menu-icon.png" alt="">
		</button>
	</section>
	<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
		id="cbp-spmenu-s1">
		<h3>Menu</h3>
		<!-- 왼쪽상단에 있는 버튼을 클릭했을때 나오는 링크or속성값을 지정하는곳 -->
	</nav>
	<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
	<script src="../../js/classie.js"></script>
	<script>
		var menuLeft = document.getElementById('cbp-spmenu-s1'), showLeftPush = document
				.getElementById('showLeftPush'), showRightPush = document
				.getElementById('showRightPush'), body = document.body;

		showLeftPush.onclick = function() {
			classie.toggle(this, 'active');
			classie.toggle(body, 'cbp-spmenu-push-toright');
			classie.toggle(menuLeft, 'cbp-spmenu-open');
			disableOther('showLeftPush');
		};

		function disableOther(button) {
			if (button !== 'showLeftPush') {
				classie.toggle(showLeftPush, 'disabled');
			}
			if (button !== 'showRightPush') {
				classie.toggle(showRightPush, 'disabled');
			}
		}
	</script>
	<!-- header -->


	<div class="navbar navbar-inverse navbar-static-top affix-top" id="nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="index.html">Home</a></li>
							<li><a class="scroll" href="#section1">Search</a></li>
							<li><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">About<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="about.html">about1</a></li>
									<li><a href="about.html">about2</a></li>
									<li><a href="about.html">about3</a></li>
								</ul></li>
							<li><a class="scroll" href="#services">Services</a></li>
							<li><a href="typo.html">News</a></li>
							<li><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Gallery<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="gallery.html">gallery1</a></li>
									<li><a href="gallery.html">gallery2</a></li>
									<li><a href="gallery.html">gallery3</a></li>
								</ul></li>
							<li><a href="contact.html">Mail</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
	</div>

	<!---->
	<!--  style.css안에 이미지 추가해서 div class이름에 넣어라. 이미지는 전체적으로 style.css안에. 
	  
.bannersearch{
	background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
	background-size:100% 100%;
	min-height:895px;
}

css안에 이미지 이런식으로 추가하고 div안에 클래스명 넣어주면 된다.
-->
	<div class="container" style="margin-top: 60px;">
		<div class="row" style="margin-bottom: 0px; margin-left: 0px;">
			<h3>My Recipe</h3>
		</div>
		<div class="col-md-12">
			<div class="row">
				<div class="col-lg-4">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search for..." style="height: 30px;"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">Go!</button>
						</span>
					</div>
					<!-- /input-group -->
				</div>
				<!-- /.col-lg-6 -->
				<button type="button" class="btn btn-default"
					aria-label="Left Align">
					<span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
				</button>
			</div>
			<!-- /.row -->

			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>
			<p></p>

			<div class="row">
				<div class="col-sm-3 col-md-3.5">
					<div class="thumbnail">
						<img src="../../images/g1.jpg" alt="">
						<div class="caption">
							<h3>Thumbnail label</h3>
							aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
							<a href="#" class="btn btn-primary" role="button">Like</a> <a
								href="#" class="btn btn-default" role="button">Plan</a>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3.5">
					<div class="thumbnail">
						<img src="../../images/g1.jpg" alt="">
						<div class="caption">
							<h3>Thumbnail label</h3>
							aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
							<a href="#" class="btn btn-primary" role="button">Like</a> <a
								href="#" class="btn btn-default" role="button">Plan</a>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3.5">
					<div class="thumbnail">
						<img src="../../images/g1.jpg" alt="">
						<div class="caption">
							<h3>Thumbnail label</h3>
							aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
							<a href="#" class="btn btn-primary" role="button">Like</a> <a
								href="#" class="btn btn-default" role="button">Plan</a>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3.5">
					<div class="thumbnail">
						<img src="../../images/g1.jpg" alt="">
						<div class="caption">
							<h3>Thumbnail label</h3>
							aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
							<a href="#" class="btn btn-primary" role="button">Like</a> <a
								href="#" class="btn btn-default" role="button">Plan</a>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3.5">
					<div class="thumbnail">
						<img src="../../images/g1.jpg" alt="">
						<div class="caption">
							<h3>Thumbnail label</h3>
							aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
							<a href="#" class="btn btn-primary" role="button">Like</a> <a
								href="#" class="btn btn-default" role="button">Plan</a>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3.5">
					<div class="thumbnail">
						<img src="../../images/g1.jpg" alt="">
						<div class="caption">
							<h3>Thumbnail label</h3>
							aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
							<a href="#" class="btn btn-primary" role="button">Like</a> <a
								href="#" class="btn btn-default" role="button">Plan</a>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3.5">
					<div class="thumbnail">
						<img src="../../images/g1.jpg" alt="">
						<div class="caption">
							<h3>Thumbnail label</h3>
							aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
							<a href="#" class="btn btn-primary" role="button">Like</a> <a
								href="#" class="btn btn-default" role="button">Plan</a>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3.5">
					<div class="thumbnail">
						<img src="../../images/g1.jpg" alt="">
						<div class="caption">
							<h3>Thumbnail label</h3>
							aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
							<a href="#" class="btn btn-primary" role="button">Like</a> <a
								href="#" class="btn btn-default" role="button">Plan</a>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3.5">
					<div class="thumbnail">
						<img src="../../images/g1.jpg" alt="">
						<div class="caption">
							<h3>Thumbnail label</h3>
							aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
							<a href="#" class="btn btn-primary" role="button">Like</a> <a
								href="#" class="btn btn-default" role="button">Plan</a>
						</div>
					</div>
				</div>
			</div>
			<nav align=center>
				<ul class="pagination">
					<li><a href="#" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>

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
			<script src="../../js/bootstrap.js"></script>
</body>
</html>