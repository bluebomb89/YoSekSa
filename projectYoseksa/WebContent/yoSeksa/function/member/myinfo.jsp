<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.member.dao.*"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:useBean id="dao" class="com.member.dao.MemberDAO"/>

<!DOCTYPE HTML>
<html>
<head>

<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>ȸ�� ����</title>

<link rel="stylesheet" href="http://www.webnoriter.com/~imsi/store/css/default_shop.css">
<link rel="stylesheet" href="http://www.webnoriter.com/~imsi/store/skin/shop/basic/style.css">
<link rel="stylesheet" href="http://www.webnoriter.com/~imsi/store/skin/member/basic/style.css">
<link href="../../css/styleggong.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/bootstrap.css" type="text/css" rel="stylesheet"
	media="all">
<link href="../../css/owl.theme.css" rel="stylesheet">
<link href="../../css/component.css" rel="stylesheet" type="text/css" />
<!-- jQuery (necessary JavaScript plugins) -->

<!-- Custom Theme files -->
<link href="../../css/style.css" type="text/css" rel="stylesheet"
	media="all">
<link href="../../css/bootstrapTheme.css" rel="stylesheet">
<link href="../../css/custom.css" rel="stylesheet">
<link href="../../css/owl.carousel.css" rel="stylesheet">

<!-- Custom Theme files -->
<!--//theme-style-->

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
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

<!--script-->

</head>

<body style="cursor: default;">

	<!-- �ߴ� -->
	<div id="wrapper">
		<div id="container">
			<div id="wrapper_title">�� ����</div>

			<!-- ȸ������ �Է�/���� ���� { -->
			<div class="event-grid_pic">

				<script
					src="http://www.webnoriter.com/~imsi/store/js/jquery.register_form.js"></script>
				<div class="myhome_list five">
				<table border="0" align="center">
					<tr>
						<td align="center">
							<a href="#"> 
							<!--������ --> 
								<img src="https://d30y9cdsu7xlg0.cloudfront.net/png/51422-200.png" width="150" height="150">
								<br><b>������������</b>
							</a>
						</td>
						<td align="center">
							<a href="#">
							<!--���̾ --> 
								<img src="https://d30y9cdsu7xlg0.cloudfront.net/png/136494-200.png" width="150" height="150">
								<br><b>���̾</b>
							</a>
						</td>
						<td align="center">
							<a href="#">
							<!-- ��ũ�� --> 
								<img src="https://d30y9cdsu7xlg0.cloudfront.net/png/109234-200.png" width="150" height="150">
								<br><b>��ũ��</b>
							</a>
						</td>
					</tr>
				</table>
				</div>
				<!-- �� -->
			</div>
		</div>
	</div>

	<script src="../../js/bootstrap.js"></script>
</body>
</html>