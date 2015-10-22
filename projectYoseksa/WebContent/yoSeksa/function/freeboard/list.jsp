<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

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
		
		<!-- 여기는 작업하지 마요 -->
		<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
		<script src="js/classie.js"></script>
	<!-- 페이지 가운데 -->
<div class="pages">
		<div class="container">
			 <h2 class="top">FreeBoard</h2> 
			  <div align="right">
			    <ul class="nav navbar-nav">
			      <li class="active">
			        <a href=""><img src="https://d30y9cdsu7xlg0.cloudfront.net/png/72548-200.png" width="40px" height="40px"></a>
			      </li>
			    </ul>
			  </div>
			<div class="headdings">
						<table class="table">
						    <tr>
				            <td align=left colspan="2">번호1</td>
				            <td align="right">
					              <input type="button" value="댓글">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=center height=10% rowspan="3">
				              <img src ="https://d30y9cdsu7xlg0.cloudfront.net/png/78590-200.png" width="60px" height="60px">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">닉네임1</td>
				
				            <td width=70% align=center bgcolor="#d2d2d2" height=70 rowspan="2">
					           자유게시판 내용 자유게시판 내용 자유게시판 내용 자유게시판 내용
					           자유게시판 내용 자유게시판 내용 자유게시판 내용 자유게시판 내용
					           </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">작성일</td>
			          </tr>
						</table>
			</div>
			<div class="headdings">
						<table class="table">
						    <tr>
				            <td align=left colspan="2">번호2</td>
				            <td align="right" >
					              <input type="button" value="댓글">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=center height=10% rowspan="3">
				              <img src ="https://d30y9cdsu7xlg0.cloudfront.net/png/78590-200.png" width="60px" height="60px">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">닉네임2</td>
				
				            <td width=70% align=center bgcolor="#d2d2d2" height=70 rowspan="2">
					           자유게시판 내용 자유게시판 내용 자유게시판 내용 자유게시판 내용
					           자유게시판 내용 자유게시판 내용 자유게시판 내용 자유게시판 내용
					           </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">작성일</td>
			          </tr>
						</table>
			</div>
			<div class="headdings">
						<table class="table">
						    <tr>
				            <td align=left colspan="2">번호3</td>
				            <td align="right" >
					              <input type="button" value="댓글">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=center height=10% rowspan="3">
				              <img src ="https://d30y9cdsu7xlg0.cloudfront.net/png/78590-200.png" width="60px" height="60px">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">닉네임3</td>
				
				            <td width=70% align=center bgcolor="#d2d2d2" height=70 rowspan="2">
					           자유게시판 내용 자유게시판 내용 자유게시판 내용 자유게시판 내용
					           자유게시판 내용 자유게시판 내용 자유게시판 내용 자유게시판 내용
					           </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">작성일</td>
			          </tr>
						</table>
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

<!---->
<!----> 
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../js/bootstrap.js"></script>	  
</body>
</html>