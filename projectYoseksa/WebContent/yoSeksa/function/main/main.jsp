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
			<!-- 왼쪽상단에 있는 버튼을 클릭했을때 나오는 링크or속성값을 지정하는곳 -->
		  </nav>
		<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
 		<script src="yoSeksa/js/classie.js"></script>
<!-- 타이틀 메뉴바 -->
<div class="navbar navbar-inverse navbar-static-top affix-top" id="nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="yoseksa.sek">Home</a></li>
							<li><a class="scroll" id=startmain href="#section1">검색메인</a></li>
							<li><a class="scroll" href="#services">공지</a></li>
							<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">자유게시판<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="freeboard.sek">about1</a></li>
									<li><a href="freeboard.sek">about2</a></li>
									<li><a href="recipe_content.sek">레시피 내용보기</a></li>           
								</ul>
							</li>
							<li><a href="diary.sek">캘린더</a></li>
							<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="recipe.sek">gallery1</a></li>
									<li><a href="qna.sek">Q&A</a></li>
									<li><a href="join.sek">회원가입</a></li>           
								</ul>
							</li>
							<li><a href="main.jsp?no=5">자게글쓰기</a></li>
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

<!-- 여기에 include 작성-->
<jsp:include page="${jsp }"></jsp:include>
<!--  메인인인인인이닌이니이 -->
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
<!-- 자바 스크립트 호출-->
<!----> 
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

</body>
</html>