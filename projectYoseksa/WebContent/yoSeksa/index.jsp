<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Flooring a Interior category Flat Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/component.css" rel="stylesheet" type="text/css"  />
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="css/bootstrapTheme.css" rel="stylesheet">
<link href="css/style1.css" type="text/css" rel="stylesheet" media="all">
<link href="css/custom.css" rel="stylesheet">
<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/owl.theme.css" rel="stylesheet">
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
<script src="js/modernizr.custom.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/owl.carousel.min.js"></script>
<!--/animated-css-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script src="js/bootstrap.js"></script> 
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
	      items : 4, //10 items above 1000px browser width
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
	  $("#owl-demo").mouseover(function(){
	    owl.trigger('owl.stop');
	  })
	  $("#owl-demo").mouseout(function(){
	  	owl.trigger('owl.play',1500);
	  })
	  $("#startmain").click(function(){
		  	owl.trigger('owl.play',1500);
		  })	 
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		/* affix the navbar after scroll below header */
		$('#nav').affix({
			offset: {top: $('header').height()-$('#nav').height()}
		});
		
		/* affix-top 에서 affix로 수정될대 이벤트 발생*/
		$('#nav').on("affix.bs.affix",function(){
			$("#startmain").text("haa!");
		});
		/* affix에서 affix-top으로 전환될때 이벤트 발생*/
		$('#nav').on("affix-top.bs.affix",function(){
			$("#startmain").text("Search");
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
					<button id="showLeftPush"><img src="images/menu-icon.png" alt=""></button>
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
<!-- 메인화면 -->
<header class="masthead">
			<div class="bannersearch"></div>
</header>
<!-- 타이틀 메뉴바 -->
<div class="navbar navbar-inverse navbar-static-top affix-top" id="nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="index.html">홈</a></li>
							<li><a class="scroll" id=startmain href="#section1">Search</a></li>
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

<!---->
<!--  style.css안에 이미지 추가해서 div class이름에 넣어라. 이미지는 전체적으로 style.css안에. 
	  
.bannersearch{
	background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
	background-size:100% 100%;
	min-height:895px;
}

css안에 이미지 이런식으로 추가하고 div안에 클래스명 넣어주면 된다.
-->

<!-- 서비스눌렀을때 검색화면이동 -->
		<div id="section1" class="slider" style="margin-bottom: 14px;">
			<div class="callbacks_container" style="padding-left: 15px; padding-right: 15px;">
			  <ul class="rslides" id="slider">
				<div class="slid banner1">				  
				  <div class="caption">
					<!-- 
					<h3>Donec ut turpis sit amet enim mattis commodo velit.</h3>
					<p>FOURNIER Timber carefully selects from a wide range of quality hardwoods to customers exact requirements which minimises wastage.</p>
					<a class="hvr-bounce-to-right btn-left" href="#">Click</a>	
					<a class="hvr-bounce-to-left  btn-right" href="#">learn more</a>
					 -->
					</div>
				</div>
				<div class="slid banner2">				  
					<div class="caption">
						<!-- 
						<h3>Donec ut turpis sit amet enim mattis commodo velit.</h3>
						<p>FOURNIER Timber carefully selects from a wide range of quality hardwoods to customers exact requirements which minimises wastage.</p>
						<a class="hvr-bounce-to-right btn-left" href="#">Click</a>	
						<a class="hvr-bounce-to-left  btn-right" href="#">learn more</a>
						 -->
					</div>
				</div>
				<div class="slid banner3">				  
				  <div class="caption">
				    <!-- 
					<h3>Donec ut turpis sit amet enim mattis commodo velit.</h3>
					<p>FOURNIER Timber carefully selects from a wide range of quality hardwoods to customers exact requirements which minimises wastage.</p>
					<a class="hvr-bounce-to-right btn-left" href="#">Click</a>	
					<a class="hvr-bounce-to-left  btn-right" href="#">learn more</a>
					 -->
					</div>
				</div>
				<div class="slid banner4">				  
				  <div class="caption">
				    <!-- 
					<h3>Donec ut turpis sit amet enim mattis commodo velit.</h3>
					<p>FOURNIER Timber carefully selects from a wide range of quality hardwoods to customers exact requirements which minimises wastage.</p>
					<a class="hvr-bounce-to-right btn-left" href="#">Click</a>	
					<a class="hvr-bounce-to-left  btn-right" href="#">learn more</a>
					 -->
					</div>
				</div>
			</ul>
		  </div>
	  	<div align=left style="position: absolute;">
	  		<a class="btn prev">Previous</a>
	  	</div>
	  	<div align=right>
	  		<a class="btn next">Next</a>
	  	</div>
		<div id="owl-demo" class="owl-carousel owl-theme">
			<div class="item col-sm-3 col-md-3">
				<div class="thumbnail">
					<img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
					<div class="caption">
						<h3>Categori 1</h3>
					</div>
				</div>
			</div>
			<div class="item col-sm-3 col-md-3">
				<div class="thumbnail">
					<img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
					<div class="caption">
						<h3>Categori 2</h3>
					</div>
				</div>
			</div>
			<div class="item col-sm-3 col-md-3">
				<div class="thumbnail">
					<img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
					<div class="caption">
						<h3>Categori 3</h3>
					</div>
				</div>
			</div>
			<div class="item col-sm-3 col-md-3">
				<div class="thumbnail">
					<img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
					<div class="caption">
						<h3>Categori 4</h3>
					</div>
				</div>
			</div>
			<div class="item col-sm-3 col-md-3">
				<div class="thumbnail">
					<img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
					<div class="caption">
						<h3>Categori 5</h3>
					</div>
				</div>
			</div>
			<div class="item col-sm-3 col-md-3">
				<div class="thumbnail">
					<img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
					<div class="caption">
						<h3>Categori 6</h3>
					</div>
				</div>
			</div>
			<div class="item col-sm-3 col-md-3">
				<div class="thumbnail">
					<img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
					<div class="caption">
						<h3>Categori 7</h3>
					</div>
				</div>
			</div>
			<div class="item col-sm-3 col-md-3">
				<div class="thumbnail">
					<img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
					<div class="caption">
						<h3>Categori 8</h3>
					</div>
				</div>
				</div>	
			</div>
		</div>
<!-- services -->
<div id="services" class="services" style="padding-top: 51px">
	 <div class="container">
			<div class="service-info">
				<h3>Services</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel risus non mauris volutpat pellentesque. Sed rhoncus, arcu nec euismod ultrices tellus nulla varius tellus ac blandit nunc ex vel felis pellentesque imperdiet imperdiet nibh</p>
			</div>
			<div class="specialty-grids-top">
				<div class="col-md-4 service-box" style="visibility: visible; -webkit-animation-delay: 0.4s;">
					<figure class="icon">
						<span class="glyphicon3 glyphicon-home" aria-hidden="true"></span>
					</figure>
					<h5>Proin eget ipsum ultrices</h5>
					<p>Sed ut perspiciis iste natus error sit voluptatem accusantium doloremque laudantium elerisque ipsum vehicula pharetra laoreet.</p>
				</div>
				<div class="col-md-4 service-box wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
					<figure class="icon">
						<span class="glyphicon3 glyphicon-time" aria-hidden="true"></span>
					</figure>
					<h5>Proin eget ipsum ultrices</h5>
					<p>Sed ut perspiciis iste natus error sit voluptatem accusantium doloremque laudantium elerisque ipsum vehicula pharetra laoreet.</p>
				</div>
				<div class="col-md-4 service-box wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
					<figure class="icon">
						<span class="glyphicon3 glyphicon-edit" aria-hidden="true"></span>
					</figure>
					<h5>Proin eget ipsum ultrices</h5>
					<p>Sed ut perspiciis iste natus error sit voluptatem accusantium doloremque laudantium elerisque ipsum vehicula pharetra laoreet.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
	 </div>		
</div>
 <!-- testimonial -->
<div class="testimonial">
		<!-- container -->
		<div class="container">
		 	<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider2").responsiveSlides({
							auto: true,
							pager: true,
							nav: false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
					</script>
					<div  id="top" class="callbacks_container">
						<ul class="rslides" id="slider2">
							<li>
								<div class="testimonial-grids">
									<div class="testimonial-left">
										<img src="images/t1.jpg" alt="" />
									</div>
									<div class="testimonial-right">
										<h5>Mary Wilson</h5>
										<p><span>"</span> Lorem ipsum dolor sit amet consec tetuer adi piscing elit Praesent vestibulum 
											molestie lacus consec tetuer piscing voluptatem accusantium doloremque laudantium elerisque ipsum vehicula pharetra elit Praesent vestibulum lacus<span>"</span>
										</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</li>
							<li>
								<div class="testimonial-grids">
									<div class="testimonial-left">
										<img src="images/t3.jpg" alt="" />
									</div>
									<div class="testimonial-right">
										<h5>David Smith</h5>
										<p><span>"</span> Lorem ipsum dolor sit amet consec tetuer adi piscing elit Praesent vestibulum 
											molestie lacus consec tetuer piscing voluptatem accusantium doloremque laudantium elerisque ipsum vehicula pharetra elit Praesent vestibulum lacus<span>"</span>
										</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</li>
							<li>
								<div class="testimonial-grids">
									<div class="testimonial-left">
										<img src="images/t2.jpg" alt="" />
									</div>
									<div class="testimonial-right">
										<h5>Lora  Alance</h5>
										<p><span>"</span> Lorem ipsum dolor sit amet consec tetuer adi piscing elit Praesent vestibulum 
											molestie lacus consec tetuer piscing voluptatem accusantium doloremque laudantium elerisque ipsum vehicula pharetra elit Praesent vestibulum lacus<span>"</span>
										</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</li>
						</ul>
				</div>
		</div>
 </div>

<!-- projects -->
<div class="projects">
	 <div class="container">
			<div class="projects-info">
				<h3>Our Projects</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel risus non mauris volutpat pellentesque. Sed rhoncus, arcu nec euismod ultrices tellus nulla varius tellus ac blandit nunc ex vel felis pellentesque imperdiet imperdiet nibh</p>
			</div>
		 <div class="event-grids">
			 <div class="col-md-4 event-grid-sec">
				 <div class="event-time text-center">
					 <p>03/2015</p>
				 </div>
				 <div class="event-grid_pic">
					 <img src="images/pc.jpg" alt=""/>
					 <h3><a href="#">Morbi pellentesque urna scelerisque justo rutrum.</a></h3>
					 <p>Nullam placerat aliquet nisl id finibus. Nulla mollis mattis magna in hendrerit. Pellentesque nunc nisl, dapibus eget erat non,
					 sagittis accumsan dolor.</p>
					 <div class="more"><a href="single.html">> Read More</a></div>
				 </div>
			 </div>
			 <div class="col-md-4 event-grid-sec">
				 <div class="event-time text-center">
					 <p>02/2015</p>
				 </div>
				 <div class="event-grid_pic">
					 <img src="images/pc1.jpg" alt=""/>
					 <h3><a href="#">Morbi pellentesque urna scelerisque justo rutrum.</a></h3>
					 <p>Nullam placerat aliquet nisl id finibus. Nulla mollis mattis magna in hendrerit. Pellentesque nunc nisl, dapibus eget erat non,
					 sagittis accumsan dolor.</p>
					 <div class="more"><a href="single.html">> Read More</a></div>
				 </div>
			 </div>
			 <div class="col-md-4 event-grid-sec">
				 <div class="event-time text-center">
					 <p>04/2015</p>
				 </div>
				 <div class="event-grid_pic">
					 <img src="images/pc2.jpg" alt=""/>
					 <h3><a href="#">Morbi pellentesque urna scelerisque justo rutrum.</a></h3>
					 <p>Nullam placerat aliquet nisl id finibus. Nulla mollis mattis magna in hendrerit. Pellentesque nunc nisl, dapibus eget erat non,
					 sagittis accumsan dolor.</p>
					 <div class="more"><a href="single.html">> Read More</a></div>
				 </div>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!-- footer -->
<div class="footer">
	 <div class="container">
		 <div class="footer-grids">
			 <div class="col-md-6 ftr-grid1">
				 <h4>About</h4>
				 <p>Nam ac interdum dui, eget iaculis augue. Cras sagittis orci leo, quis luctus diam sollicitudin in. Nullam in convallis sem. Aliquam erat felis, iaculis ac semper et, congue feugiat nibh. Nullam commodo fermentum venenatis.</p>
				 <div class="social">
					<ul>
						<li><a href="#"><i class="facebok"> </i></a></li>
						<li><a href="#"><i class="twiter"> </i></a></li>
						<li><a href="#"><i class="in"> </i></a></li>
						<li><a href="#"><i class="goog"> </i></a></li>						
							<div class="clearfix"></div>	
					</ul>
				 </div>
			 </div>
			 <div class="col-md-6 news-ltr">
				 <h4>Newsletter</h4>
				 <p>Aenean sagittis est eget elit pulvinar cursus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non purus at risus consequat finibus.</p>
				 <form>					 
					  <input type="text" class="text" value="Enter Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Email';}">
					 <input type="submit" value="Subscribe">
					 <div class="clearfix"></div>
				 </form>
			</div>
			 <div class="clearfix"></div>
		 </div>		 
	 </div>
</div>
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

</body>
</html>