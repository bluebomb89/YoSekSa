<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="yoSeksa/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/component.css" rel="stylesheet" type="text/css"  />
<!-- script -->


</head>
<body  class="cbp-spmenu-push">
		<!--bottom-->
		  <section class="button">
					<button id="showLeftPush"><img src="yoSeksa/images/menu-icon.png" alt=""></button>
		   </section>
			<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
			<h3>Menu</h3>
			<!-- ���ʻ�ܿ� �ִ� ��ư�� Ŭ�������� ������ ��ũor�Ӽ����� �����ϴ°� -->
		  </nav>
		<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
 		<script src="yoSeksa/js/classie.js"></script>
<!-- Ÿ��Ʋ �޴��� -->
<div class="navbar navbar-inverse navbar-static-top affix-top" id="nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="yoseksa.sek">Home</a></li>
							<li><a class="scroll" id=startmain href="#section1">�˻�����</a></li>
							<li><a class="scroll" href="#services">����</a></li>
							<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">�����Խ���<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="freeboard.sek">about1</a></li>
									<li><a href="freeboard.sek">about2</a></li>
									<li><a href="recipe_content.sek">������ ���뺸��</a></li>           
								</ul>
							</li>
							<li><a href="diary.sek">Ķ����</a></li>
							<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="recipe.sek">gallery1</a></li>
									<li><a href="qna.sek">Q&A</a></li>
									<li><a href="join.sek">ȸ������</a></li>           
								</ul>
							</li>
							<li><a href="main.jsp?no=5">�ڰԱ۾���</a></li>
						</ul>         
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>	
		</div>
	</div>

<!---->
<!--  style.css�ȿ� �̹��� �߰��ؼ� div class�̸��� �־��. �̹����� ��ü������ style.css�ȿ�. 
	  
.bannersearch{
	background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
	background-size:100% 100%;
	min-height:895px;
}

css�ȿ� �̹��� �̷������� �߰��ϰ� div�ȿ� Ŭ������ �־��ָ� �ȴ�.
-->

<!-- ���⿡ include �ۼ�-->
<jsp:include page="${jsp }"></jsp:include>
<!--  �������������̴��̴��� -->
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
<a href="#to-top" id="toTop" style="display: block;right: 10px;"><span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- �ڹ� ��ũ��Ʈ ȣ��-->
<!----> 
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

</body>
</html>