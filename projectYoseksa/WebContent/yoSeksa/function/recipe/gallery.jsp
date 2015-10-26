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
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="Flooring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design">

<!--/script-->
<script>
	var curListType = '';
	var curAllSel = false;

	$(document).ready(function() {
		doChangeListType('thumb')
	});

	function doChangeListType(types) {
		if (curListType == types)
			return;

		$("#listTypeSel_" + curListType).removeClass('active');
		$("#listTypeSel_" + types).addClass('active');
		$("#list_" + curListType).hide();
		$("#list_" + types).show();
		$("[id^=selRecipe_" + curListType + "]").each(function() {
			var target = $(this).attr('id').replace(curListType, types);
			$("#" + target).prop("checked", $(this).prop('checked'));
		});
		curListType = types;
	}

	function doAllSelect() {
		if (curAllSel) {
			txts = '전체선택';
			colors = '#666666';
			curAllSel = false;
		} else {
			txts = '전체해제';
			colors = '#FFFFFF';
			curAllSel = true;
		}
		$("#allSelectToggle").html(txts);
		$("#allSelectToggle").css("color", colors)
		$("#allSelectToggle").toggleClass("active");
		$("[id^=selRecipe]").each(function() {
			$(this).prop("checked", curAllSel);
		});
	}

	function checkSelectedRecipe() {
		var sel = '';
		$("[id^=selRecipe_" + curListType + "]").each(function() {
			if ($(this).prop('checked'))
				sel += $(this).val() + '|';
		});
		$("#selectedRecipes").val(sel.substring(0, sel.length - 1));
		if (!sel) {
			alert('레시피를 선택해 주세요.');
			return false;
		}
		return true;
	}

	function selectScrapFolder(folderSeq) {
		if (!checkSelectedRecipe())
			return;
		var selRecipe = $("#selectedRecipes").val();

		if (folderSeq == 243294) {
			alert('같은 폴더로 이동할 수 없습니다.');
			return;
		}

		$.ajax({
			type : "POST",
			url : "/scrap/ajax.html",
			data : "q_mode=moveScrap&oriFolderSeq=243294&seq=" + selRecipe
					+ "&folderSeq=" + folderSeq,
			success : function(result) {
				if (result == 'SUCCESS') {
					alert('이동되었습니다.');
					$("#selectScrapFolderModal").modal('hide');
					self.location.reload();
				} else if (result == 'NOT_FOUND') {
					alert('폴더가 없습니다. 다시 확인해 주세요.');
				} else {
					alert('등록 실패. 잠시후 다시 시도해 주세요.');
				}
			}
		});
	}

	function doScrap() {
		if (checkSelectedRecipe())
			selectScrapFolderOpen();
	}

	function doDelete() {
		if (!checkSelectedRecipe())
			return;
		var selRecipe = $("#selectedRecipes").val();

		if (confirm('선택된 레시피를 삭제하시겠습니까?')) {
			$.ajax({
				type : "POST",
				url : "/scrap/ajax.html",
				data : "q_mode=deleteScrap&seq=" + selRecipe,
				success : function(result) {
					if (result == 'SUCCESS') {
						self.location.reload();
					} else if (result == 'NOT_FOUND') {
						alert('레시피가 없습니다. 다시 확인해 주세요.');
					} else {
						alert('삭제실패. 잠시후 다시 시도해 주세요.');
					}
				}
			});
		}
	}
</script>

<!--script-->

<style type="text/css"></style>
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
	<!-- 타이틀 메뉴바 -->
	<div class="navbar navbar-inverse navbar-static-top affix-top" id="nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="main.jsp?no=0">Home</a></li>
							<li><a class="scroll" id="startmain" href="#section1">검색메인</a></li>
							<li><a class="scroll" href="#services">공지</a></li>
							<li><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">자유게시판<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="main.jsp?no=2">about1</a></li>
									<li><a href="main.jsp?no=2">about2</a></li>
									<li><a href="main.jsp?no=2">about3</a></li>
								</ul></li>
							<li><a href="main.jsp?no=1">캘린더</a></li>
							<li><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Gallery<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="main.jsp?no=4">gallery1</a></li>
									<li><a href="main.jsp?no=7">Q&amp;A</a></li>
									<li><a href="main.jsp?no=3">회원가입</a></li>
								</ul></li>
							<li><a href="main.jsp?no=5">자게글쓰기</a></li>
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

	<!-- 여기에 include 작성-->

	<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->



	<title>Flooring a Interior category Flat Bootstarp Responsive
		Website Template | Home :: w3layouts</title>
	<link href="../../css/bootstrap.css" type="text/css" rel="stylesheet"
		media="all">
	<link href="../../css/component.css" rel="stylesheet" type="text/css">
	<!-- jQuery (necessary JavaScript plugins) -->
	<script type="text/javascript"
		src="http://recipe.ezmember.co.kr/static/js/jquery-1.11.2.min.js"
		charset="utf-8"></script>
	<!-- Custom Theme files -->
	<!-- <link href="../../css/style.css" type="text/css" rel="stylesheet" media="all"> -->
	<link href="../../css/style3.css" type="text/css" rel="stylesheet"
		media="all">
	<link href="../../css/bootstrapTheme.css" rel="stylesheet">
	<link href="../../css/custom.css" rel="stylesheet">
	<link href="../../css/owl.carousel.css" rel="stylesheet">
	<link href="../../cssl/owl.theme.css" rel="stylesheet">
	<!-- Custom Theme files -->
	<!--//theme-style-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="keywords"
		content="Flooring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design">
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



	<!--bottom-->
	<!-- header -->

	<!---->
	<!--  style.css���� �대�몄� 異�媛��댁�� div class�대��� �ｌ�대��. �대�몄��� ��泥댁���쇰� style.css����. 
	  
.bannersearch{
	background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
	background-size:100% 100%;
	min-height:895px;
}

css���� �대�몄� �대�곗���쇰� 異�媛���怨� div���� �대���ㅻ� �ｌ�댁＜硫� ����.
-->
	<div class="container"
		style="margin-top: 60px; margin-left: 30px; padding-top: 40px;">
		<div class="top_title"
			style="padding-bottom: 11px; padding-top: 10px; border-top-width: 1px; width: 1120px;">
			<h3 style="margin-bottom: 0px; margin-top: 0px; width: 200px;">My
				Recipe</h3>
			<div class="top_title_r" style="padding-top: 0px;">
				<div class="btn-group" role="group" aria-label="Basic example">
					<button type="button" id="listTypeSel_thumb"
						class="btn btn-default btn-lg active"
						onclick="doChangeListType('thumb')">
						<span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
					</button>
					<button type="button" id="listTypeSel_list"
						class="btn btn-default btn-lg" onclick="doChangeListType('list')">
						<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
					</button>
				</div>
				<div class="btn-group" role="group">
					<button id="allSelectToggle" type="button" class="btn btn-default"
						onclick="doAllSelect()"
						style="color: rgb(102, 102, 102); margin-right: 6px;">전체선택</button>
					<button type="button" class="btn btn-default" onclick="doDelete()"
						style="margin-right: 6px;">
						<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
					</button>

					<a href="../recipe/recipe_enroll.jsp"><button type="button"
							class="btn btn-default" onclick="" style="margin-right: 6px;">
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
						</button></a>
				</div>
			</div>
		</div>

		<div class="row" style="margin-bottom: 0px; margin-left: 0px;">

		</div>
		<div class="col-md-12" style="padding-top: 15px;">
			<!-- <div class="row">
				<div class="col-lg-4">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search for..." style="height: 30px;"> <span class="input-group-btn">
							<button class="btn btn-default" type="button">Go!</button>
						</span>
					</div>
					/input-group
				</div> -->
			<!-- /.col-lg-6 -->





		</div>
		<!-- /.row -->


		<div class="col-md-12" style="margin-top: 20px;">
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="../../images/g1.jpg" alt="">
					<div class="caption">
						<h3>Thumbnail label</h3>
						aaaaaaaaaaaaaaaaaaaaaaaa<br> bbbbbbbbbbbbbbbbbbbbbbbb<br>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
		</div>
		<nav align="center">
			<ul class="pagination" style="margin-top: 80px;">
				<li><a href="#" aria-label="Previous"> <span
						aria-hidden="true">«</span>
				</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">»</span>
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
		<script src="js/bootstrap.js"></script>


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
				$().UItoTop({
					easingType : 'easeOutQuart'
				});
			});
		</script>
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
		<a href="#to-top" id="toTop" style="display: block;"><span
			id="toTopHover" style="opacity: 1;"> </span></a>
		<!-- 자바 스크립트 호출-->
		<!---->
		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->


	</div>
	</div>
</body>
</html>