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
	<!--  style.css�ȿ� �̹��� �߰��ؼ� div class�̸��� �־��. �̹����� ��ü������ style.css�ȿ�. 
	  
.bannersearch{
	background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
	background-size:100% 100%;
	min-height:895px;
}

css�ȿ� �̹��� �̷������� �߰��ϰ� div�ȿ� Ŭ������ �־��ָ� �ȴ�.
-->
	<form name="insFrm" id="insFrm" method="post" style="height: 1996px;">
		<div class="container recipe_regi"
			style="margin-top: 60px; margin-left: 11px; margin-right: 11px; width: 1240px; padding-left: 0px; padding-right: 0px;">
			<div class="regi_center" style="height: 1870px;">
				<div id="regi_title">
					Wirte Recipe</b>
				</div>
				<div class="cont_box pad_l_60" style="height: 422px;">
					<div id="divMainPhotoUpload" class="cont_pic2">
						<div style="position: absolute; left: -3000px">
							<input type="file" name="q_main_file" id="q_main_file"
								file_gubun="main" accept="jpeg,png,gif"
								style="display:; width: 0px; height: 0px; font-size: 0px;"
								text="">
						</div>
						<div id="divMainPhotoBox" is_over="0">
							<img id="mainPhotoHolder" onclick="browseMainFile()"
								src="http://recipe1.ezmember.co.kr/img/pic_none4.gif"
								style="width: 250px; height: 250px; cursor: pointer">
						</div>

					</div>
					<div class="cont_line">
						<p class="cont_tit4">������ ����</p>
						<input type="text" name="cok_title" id="cok_title" value=""
							class="form-control" placeholder="��) �Ұ�� �̿��� ���̱�"
							style="width: 610px;">
					</div>
					<div class="cont_line pad_b_25">
						<p class="cont_tit4">�丮�Ұ�</p>
						<textarea name="cok_intro" id="cok_intro"
							class="form-control step_cont"
							placeholder="�� �������� ź������� �����ּ���. ��) ������ ������ �¾� �Ұ�� �̿����� �����þ��. ��ӴϷκ��� ��� �̿��� �����Ǹ� ������ �Ը��� �°� ����߽��ϴ�."
							style="height: 100px; width: 610px; resize: none;"></textarea>
					</div>
					<div class="cont_line">
						<p class="cont_tit4">ī�װ�</p>
						<select name="cok_sq_category_4" id="cok_sq_category_4" text="������">
							<option value="">������</option>
							<option value="63">�ع���</option>
							<option value="56">���ι���</option>
							<option value="54">��/��</option>
							<option value="55">�</option>
							<option value="60">����/����Ʈ</option>
							<option value="53">��/����</option>
							<option value="52">��/��/��</option>
							<option value="61">ǻ��</option>
							<option value="57">��ġ/����/���</option>
							<option value="58">���/�ҽ�/��</option>
							<option value="65">���</option>
							<option value="64">������/����</option>
							<option value="66">����ŷ</option>
							<option value="59">��/����/��</option>
							<option value="62">��Ÿ</option>
						</select> <select name="cok_sq_category_2" id="cok_sq_category_2"
							text="��Ȳ��">
							<option value="">��Ȳ��</option>
							<option value="12">�ϻ�</option>
							<option value="18">�ʽ��ǵ�</option>
							<option value="13">�մ�����</option>
							<option value="19">������</option>
							<option value="21">���̾�Ʈ��</option>
							<option value="15">������</option>
							<option value="43">�����</option>
							<option value="17">����</option>
							<option value="45">�߽�</option>
							<option value="20">Ǫ�彺Ÿ�ϸ�</option>
							<option value="46">����</option>
							<option value="44">����</option>
							<option value="14">������</option>
							<option value="22">��Ÿ</option>
						</select> <select name="cok_sq_category_1" id="cok_sq_category_1"
							text="�����">
							<option value="">�����</option>
							<option value="6">����</option>
							<option value="1">���̱�</option>
							<option value="7">��ħ</option>
							<option value="36">����</option>
							<option value="41">��ħ</option>
							<option value="42">���</option>
							<option value="8">��</option>
							<option value="35">����</option>
							<option value="10">���̱�</option>
							<option value="9">Ƣ��</option>
							<option value="38">���</option>
							<option value="67">����</option>
							<option value="39">��ġ��</option>
							<option value="37">ȸ</option>
							<option value="11">��Ÿ</option>
						</select> <select name="cok_sq_category_3" id="cok_sq_category_3"
							text="��Ằ">
							<option value="">��Ằ</option>
							<option value="23">����</option>
							<option value="28">ä�ҷ�</option>
							<option value="24">�ع���</option>
							<option value="50">�ް�/����ǰ</option>
							<option value="33">������ǰ��</option>
							<option value="47">���/����</option>
							<option value="32">����</option>
							<option value="25">�Ǿ��</option>
							<option value="31">������</option>
							<option value="48">���Ϸ�</option>
							<option value="27">��/�߰���</option>
							<option value="26">���</option>
							<option value="34">��Ÿ</option>
						</select><select name="cok_sq_category_3" id="cok_sq_category_3" text="��Ằ">
							<option value="">��亰</option>
							<option value="23">����</option>
							<option value="28">ä�ҷ�</option>
							<option value="24">�ع���</option>
							<option value="50">�ް�/����ǰ</option>
							<option value="33">������ǰ��</option>
							<option value="47">���/����</option>
							<option value="32">����</option>
							<option value="25">�Ǿ��</option>
							<option value="31">������</option>
							<option value="48">���Ϸ�</option>
							<option value="27">��/�߰���</option>
							<option value="26">���</option>
							<option value="34">��Ÿ</option>
						</select>
					</div>
					<div class="cont_line">
						<p class="cont_tit4">�丮����</p>
						�ο� <select name="cok_portion" id="cok_portion" text="�ο�">
							<option value="">�ο�</option>
							<option value="1">1�κ�</option>
							<option value="2">2�κ�</option>
							<option value="3">3�κ�</option>
							<option value="4">4�κ�</option>
							<option value="5">5�κ�</option>
							<option value="6">6�κ��̻�</option>
						</select> <span class="pad_l_30">�ð� </span> <select name="cok_time"
							id="cok_time" text="�丮�ð�">
							<option value="">�ð�</option>
							<option value="5">5���̳�</option>
							<option value="10">10���̳�</option>
							<option value="15">15���̳�</option>
							<option value="30">30���̳�</option>
							<option value="60">60���̳�</option>
							<option value="90">90���̳�</option>
							<option value="120">2�ð��̳�</option>
							<option value="999">2�ð��̻�</option>
						</select> <span class="pad_l_30">���̵� </span> <select name="cok_degree"
							id="cok_degree" text="���̵�">
							<option value="">���̵�</option>
							<option value="1">�ƹ���</option>
							<option value="2">�ʱ�</option>
							<option value="3">�߱�</option>
							<option value="4">���</option>
							<option value="5">���ǰ���</option>
						</select>
					</div>

				</div>
				<div class="cont_box pad_l_60">
					<div class="mag_b_25">
						<p class="cont_tit4">���</p>
						<ul id="divResourceArea" class="ui-sortable">
							<li id="liResource_1" class=""><a href="#"
								class="btn-lineup ui-sortable-handle" data-original-title=""
								title=""></a><input type="text" name="cok_resource_nm[]"
								id="cok_resource_nm_1" class="form-control"
								style="width: 300px;" placeholder="��) �������"><input
								type="text" name="cok_resource_amt[]" id="cok_resource_amt_1"
								class="form-control" style="width: 300px;" placeholder="��) 300g"><a
								id="btnResourceDel_1" href="javascript:delResource(1)"
								class="btn-del" style="display: none;"></a></li>
							<li id="liResource_2"><a href="#"
								class="btn-lineup ui-sortable-handle" data-original-title=""
								title=""></a><input type="text" name="cok_resource_nm[]"
								id="cok_resource_nm_2" class="form-control"
								style="width: 300px;" placeholder="��) �����"><input
								type="text" name="cok_resource_amt[]" id="cok_resource_amt_2"
								class="form-control" style="width: 300px;" placeholder="��) 1/2��"><a
								id="btnResourceDel_2" href="javascript:delResource(2)"
								class="btn-del" style="display: none;"></a></li>
							<li id="liResource_3"><a href="#"
								class="btn-lineup ui-sortable-handle" data-original-title=""
								title=""></a><input type="text" name="cok_resource_nm[]"
								id="cok_resource_nm_3" class="form-control"
								style="width: 300px;" placeholder="��) ����"><input
								type="text" name="cok_resource_amt[]" id="cok_resource_amt_3"
								class="form-control" style="width: 300px;" placeholder="��) 2��"><a
								id="btnResourceDel_3" href="javascript:delResource(3)"
								class="btn-del" style="display: none;"></a></li>
							<li id="liResource_4"><a href="#" class="btn-lineup"></a><input
								type="text" name="cok_resource_nm[]" id="cok_resource_nm_4"
								class="form-control" style="width: 300px;" placeholder="��) �������"><input
								type="text" name="cok_resource_amt[]" id="cok_resource_amt_4"
								class="form-control" style="width: 300px;" placeholder="��) 300g"><a
								id="btnResourceDel_4" href="javascript:delResource(4)"
								class="btn-del" style="display: none;"></a></li>
							<li id="liResource_5"><a href="#" class="btn-lineup"></a><input
								type="text" name="cok_resource_nm[]" id="cok_resource_nm_5"
								class="form-control" style="width: 300px;" placeholder="��) �����"><input
								type="text" name="cok_resource_amt[]" id="cok_resource_amt_5"
								class="form-control" style="width: 300px;" placeholder="��) 1/2��"><a
								id="btnResourceDel_5" href="javascript:delResource(5)"
								class="btn-del" style="display: none;"></a></li>
						</ul>
						<div class="btn_add"
							style="padding: 0 0 20px 160px; width: 800px;">
							<button type="button" onclick="addResource()"
								class="btn btn-default">
								<span class="glyphicon glyphicon-plus-sign"></span>����߰�
							</button>
						</div>
					</div>
					<div>
						<p class="cont_tit4">���</p>
						<ul id="divSpiceArea" class="ui-sortable">
							<li id="liSpice_1"><a href="#"
								class="btn-lineup ui-sortable-handle" data-original-title=""
								title=""></a><input type="text" name="cok_spice_nm[]"
								id="cok_spice_nm_1" class="form-control" style="width: 300px;"
								placeholder="��) ���⸧"><input type="text"
								name="cok_spice_amt[]" id="cok_spice_amt_1" class="form-control"
								style="width: 300px;" placeholder="��) 1T"><a
								id="btnSpiceDel_1" href="javascript:delSpice(1)" class="btn-del"
								style="display: none;"></a></li>
							<li id="liSpice_2"><a href="#" class="btn-lineup"
								data-original-title="" title=""></a><input type="text"
								name="cok_spice_nm[]" id="cok_spice_nm_2" class="form-control"
								style="width: 300px;" placeholder="��) �ұ�"><input
								type="text" name="cok_spice_amt[]" id="cok_spice_amt_2"
								class="form-control" style="width: 300px;" placeholder="��) 2t"><a
								id="btnSpiceDel_2" href="javascript:delSpice(2)" class="btn-del"
								style="display: none;"></a></li>
							<li id="liSpice_3"><a href="#" class="btn-lineup"
								data-original-title="" title=""></a><input type="text"
								name="cok_spice_nm[]" id="cok_spice_nm_3" class="form-control"
								style="width: 300px;" placeholder="��) ���߰���"><input
								type="text" name="cok_spice_amt[]" id="cok_spice_amt_3"
								class="form-control" style="width: 300px;" placeholder="��) 2T"><a
								id="btnSpiceDel_3" href="javascript:delSpice(3)" class="btn-del"
								style="display: none;"></a></li>
						</ul>
						<div class="btn_add"
							style="padding: 0 0 20px 160px; width: 800px;">
							<button type="button" onclick="addSpice()"
								class="btn btn-default">
								<span class="glyphicon glyphicon-plus-sign"></span>����߰�
							</button>
						</div>
					</div>
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