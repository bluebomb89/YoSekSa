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

	// submit ���� ��üũ
	function regform_submit(f) {
		// ȸ�����̵� �˻�
		if (f.w.value == "") {
			var msg = member_id_check();
			if (msg) {
				alert(msg);
				f.member_id.select();
				return false;
			}
		}

		if (f.w.value == "") {
			if (f.member_pw.value.length < 6) {
				alert("��й�ȣ�� 3���� �̻� �Է��Ͻʽÿ�.");
				f.member_pw.focus();
				return false;
			}
		}

		if (f.member_pw.value != f.member_pw_re.value) {
			alert("��й�ȣ�� ���� �ʽ��ϴ�.");
			f.member_pw_re.focus();
			return false;
		}

		if (f.member_pw.value.length > 0) {
			if (f.member_pw_re.value.length < 6) {
				alert("��й�ȣ�� 3���� �̻� �Է��Ͻʽÿ�.");
				f.member_pw_re.focus();
				return false;
			}
		}


		// �г��� �˻�
		if ((f.w.value == "")
				|| (f.w.value == "u" && f.nickname.defaultValue != f.nickname.value)) {
			var msg = nickname_check();
			if (msg) {
				alert(msg);
				f.nickname.select();
				return false;
			}
		}

		// E-mail �˻�
		if ((f.w.value == "")
				|| (f.w.value == "u" && f.email.defaultValue != f.email.value)) {
			var msg = email_check();
			if (msg) {
				alert(msg);
				f.email.select();
				return false;
			}
		}

		if (!chk_captcha())
			return false;
		{

			document.getElementById("btnSub").disabled = "disabled";

			return true;
		}
		
		
	}
	
</script>

<script type="text/javascript">
// window.onload=function(){}
// $(document).ready(function(){})
$(function(){
	//$('#username').val("admin");
	$('#btnSub').click(function(){
		var reg_nickname=$('#nickname').val();

		$('#nameSpan').text("");
		
		var reg_member_id=$('#member_id').val();

		$('#subSpan').text("");
		
		var reg_email=$('#email').val();

		$('#contSpan').text("");
		
		var reg_member_pw=$('#member_pw').val();

		$('#pwdSpan').text("");
		$('#regform').submit();
	});
	$('#btnCancel').click(function(){
		history.back();
	});
});
</script>
<!--script-->

</head>

<body style="cursor: default;">

	<!-- �ߴ� -->
	<div id="wrapper">
		<div id="container">
			<div id="wrapper_title">ȸ�� ����</div>

			<!-- ȸ������ �Է�/���� ���� { -->
			<div class="mbskin">

				<script src="http://www.webnoriter.com/~imsi/store/js/jquery.register_form.js"></script>
				
				<form id="regform" name="regform" method=post action="member_insert_ok.sek">
					<div class="tbl_frm01 tbl_wrap">
						<table>
							<tbody>
								<tr>
									<th scope="row">
										<label for="reg_member_id">���̵�
											<strong	class="sound_only">�ʼ�</strong>
										</label>
									</th>
									<td>
										<span class="frm_info">������, ����, _ �� �Է� ����. �ּ� 6���̻� �Է��ϼ���.</span>
											<input type="text" name="member_id" value="" id="reg_member_id" required="" class="frm_input required "	minlength="6" maxlength="20">
										<span id="msg_member_id"></span>
									</td>
								</tr>
								<tr>
									<th scope="row">
										<label for="reg_member_pw">��й�ȣ
											<strong class="sound_only">�ʼ�</strong>
										</label>
									</th>
									<td>
										<input type="password" name="member_pw" id="reg_member_pw" required="" class="frm_input required" minlength="6" maxlength="20">
									</td>
								</tr>
								<tr>
									<th scope="row">
										<label for="reg_member_pw_re">��й�ȣ Ȯ��
											<strong class="sound_only">�ʼ�</strong>
										</label>
									</th>
									<td>
										<input type="password" name="member_pw_re" id="reg_member_pw_re" required="" class="frm_input required" minlength="" maxlength="20">
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="tbl_frm01 tbl_wrap">
						<table>
							<caption>�������� �Է�</caption>
							<tbody>

								<tr>
									<th scope="row">
										<label for="reg_member_nick">�г���
											<strong class="sound_only">�ʼ�</strong>
										</label>
									</th>
									<td>
										<input type="text" name="nickname" value="" id="reg_nickname" required="" class="frm_input required nospace" size="10"maxlength="20">
										<span id="msg_member_nick"></span>
									</td>
								</tr>

								<tr>
									<th scope="row">
										<label for="reg_member_email">E-mail
											<strong class="sound_only">�ʼ�</strong>
										</label>
									</th>
									<td>
										<input type="text" name="email" value="" id="reg_email" required="" class="frm_input email required" size="70" maxlength="100">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- ���/��� ��ư -->
					<div class="btn_confirm">
						<input type="submit" value="ȸ������" id="btnSub"
							class="btn_submit" accesskey="s"> <a
							href="http://www.webnoriter.com/~imsi/store" class="btnCancel">���</a>
					</div>
				</form>
			</div>
			<!-- } ȸ������ �Է�/���� �� -->
		</div>

		<!-- �ϴ� ���� { -->
	</div>

	<script src="../../js/bootstrap.js"></script>
</body>
</html>