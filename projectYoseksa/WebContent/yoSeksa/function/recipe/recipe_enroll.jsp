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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
	<form name="insFrm" id="insFrm" method="post" style="height: 1996px;margin-left: 30px;margin-top: 100px;">
		<div class="container recipe_regi"
			style="margin-top: 60px; margin-left: 11px; margin-right: 11px; width: 1140px; padding-left: 0px; padding-right: 0px;">
			<div class="regi_center" style="height: 1870px;">
				<div id="regi_title">
					Wirte Recipe</b>
				</div>
				<div class="cont_box pad_l_60" style="height: 422px;">
					<div id="divMainPhotoUpload" class="cont_pic2" style="
    margin-right: 10px;">
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
						<p class="cont_tit4">레시피 제목</p>
						<input type="text" name="cok_title" id="cok_title" value=""
							class="form-control" placeholder="예) 소고기 미역국 끓이기"
							style="width: 610px;">
					</div>
					<div class="cont_line pad_b_25">
						<p class="cont_tit4">요리소개</p>
						<textarea name="cok_intro" id="cok_intro"
							class="form-control step_cont"
							placeholder="이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 미역국 레시피를 남편의 입맛에 맞게 고안했습니다."
							style="height: 100px; width: 610px; resize: none;"></textarea>
					</div>
					<div class="cont_line">
						<p class="cont_tit4">카테고리</p>
						<select name="cok_sq_category_4" id="cok_sq_category_4" text="종류별">
							<option value="">종류별</option>
							<option value="63">밑반찬</option>
							<option value="56">메인반찬</option>
							<option value="54">국/탕</option>
							<option value="55">찌개</option>
							<option value="60">간식/디저트</option>
							<option value="53">면/만두</option>
							<option value="52">밥/죽/떡</option>
							<option value="61">퓨전</option>
							<option value="57">김치/젓갈/장류</option>
							<option value="58">양념/소스/잼</option>
							<option value="65">양식</option>
							<option value="64">샐러드/스프</option>
							<option value="66">베이킹</option>
							<option value="59">차/음료/술</option>
							<option value="62">기타</option>
						</select> <select name="cok_sq_category_2" id="cok_sq_category_2"
							text="상황별">
							<option value="">상황별</option>
							<option value="12">일상</option>
							<option value="18">초스피드</option>
							<option value="13">손님접대</option>
							<option value="19">술안주</option>
							<option value="21">다이어트쿡</option>
							<option value="15">나들이</option>
							<option value="43">영양식</option>
							<option value="17">간식</option>
							<option value="45">야식</option>
							<option value="20">푸드스타일링</option>
							<option value="46">해장</option>
							<option value="44">명절</option>
							<option value="14">이유식</option>
							<option value="22">기타</option>
						</select> <select name="cok_sq_category_1" id="cok_sq_category_1"
							text="방법별">
							<option value="">방법별</option>
							<option value="6">볶음</option>
							<option value="1">끓이기</option>
							<option value="7">부침</option>
							<option value="36">조림</option>
							<option value="41">무침</option>
							<option value="42">비빔</option>
							<option value="8">찜</option>
							<option value="35">구이</option>
							<option value="10">절이기</option>
							<option value="9">튀김</option>
							<option value="38">삶기</option>
							<option value="67">굽기</option>
							<option value="39">데치기</option>
							<option value="37">회</option>
							<option value="11">기타</option>
						</select> <select name="cok_sq_category_3" id="cok_sq_category_3"
							text="재료별">
							<option value="">재료별</option>
							<option value="23">육류</option>
							<option value="28">채소류</option>
							<option value="24">해물류</option>
							<option value="50">달걀/유제품</option>
							<option value="33">가공식품류</option>
							<option value="47">면류/떡류</option>
							<option value="32">빵류</option>
							<option value="25">건어물류</option>
							<option value="31">버섯류</option>
							<option value="48">과일류</option>
							<option value="27">콩/견과류</option>
							<option value="26">곡류</option>
							<option value="34">기타</option>
						</select> <select name="cok_sq_category_5" id="cok_sq_category_5"
							text="양념별">
							<option value="">양념별</option>
							<option value="23">육류</option>
							<option value="28">채소류</option>
							<option value="24">해물류</option>
							<option value="50">달걀/유제품</option>
							<option value="33">가공식품류</option>
							<option value="47">면류/떡류</option>
							<option value="32">빵류</option>
							<option value="25">건어물류</option>
							<option value="31">버섯류</option>
							<option value="48">과일류</option>
							<option value="27">콩/견과류</option>
							<option value="26">곡류</option>
							<option value="34">기타</option>
						</select>
					</div>
					<div class="cont_line">
						<p class="cont_tit4">요리정보</p>
						인원 <select name="cok_portion" id="cok_portion" text="인원">
							<option value="">인원</option>
							<option value="1">1인분</option>
							<option value="2">2인분</option>
							<option value="3">3인분</option>
							<option value="4">4인분</option>
							<option value="5">5인분</option>
							<option value="6">6인분이상</option>
						</select> <span class="pad_l_30">시간 </span> <select name="cok_time"
							id="cok_time" text="요리시간">
							<option value="">시간</option>
							<option value="5">5분이내</option>
							<option value="10">10분이내</option>
							<option value="15">15분이내</option>
							<option value="30">30분이내</option>
							<option value="60">60분이내</option>
							<option value="90">90분이내</option>
							<option value="120">2시간이내</option>
							<option value="999">2시간이상</option>
						</select> <span class="pad_l_30">난이도 </span> <select name="cok_degree"
							id="cok_degree" text="난이도">
							<option value="">난이도</option>
							<option value="1">아무나</option>
							<option value="2">초급</option>
							<option value="3">중급</option>
							<option value="4">고급</option>
							<option value="5">신의경지</option>
						</select>
					</div>

				</div>
				<div class="cont_box pad_l_60">
					<div class="mag_b_25">
						<p class="cont_tit4">재료</p>
						<ul id="divResourceArea" class="ui-sortable">
							<li id="liResource_1"><a href="#"
								class="btn-lineup ui-sortable-handle" data-original-title=""
								title=""></a><input type="text" name="cok_resource_nm[]"
								id="cok_resource_nm_1" class="form-control"
								style="width: 300px;" placeholder="예) 돼지고기"><input
								type="text" name="cok_resource_amt[]" id="cok_resource_amt_1"
								class="form-control" style="width: 300px;" placeholder="예) 300g"><a
								id="btnResourceDel_1" href="javascript:delResource(1)"
								class="btn-del" style="display: none;"></a></li>
							<li id="liResource_2"><a href="#" class="btn-lineup"
								data-original-title="" title=""></a><input type="text"
								name="cok_resource_nm[]" id="cok_resource_nm_2"
								class="form-control" style="width: 300px;" placeholder="예) 양배추"><input
								type="text" name="cok_resource_amt[]" id="cok_resource_amt_2"
								class="form-control" style="width: 300px;" placeholder="예) 1/2개"><a
								id="btnResourceDel_2" href="javascript:delResource(2)"
								class="btn-del" style="display: none;"></a></li>
							<li id="liResource_3"><a href="#" class="btn-lineup"
								data-original-title="" title=""></a><input type="text"
								name="cok_resource_nm[]" id="cok_resource_nm_3"
								class="form-control" style="width: 300px;" placeholder="예) 찹쌀"><input
								type="text" name="cok_resource_amt[]" id="cok_resource_amt_3"
								class="form-control" style="width: 300px;" placeholder="예) 2컵"><a
								id="btnResourceDel_3" href="javascript:delResource(3)"
								class="btn-del" style="display: none;"></a></li>
						</ul>
						<div class="btn_add"
							style="padding: 0 0 20px 160px; width: 800px;">
							<button type="button" onclick="addResource()"
								class="btn btn-default">
								<span class="glyphicon glyphicon-plus-sign"></span>재료추가
							</button>
						</div>
					</div>
					<div>
						<p class="cont_tit4">양념</p>
						<ul id="divSpiceArea" class="ui-sortable">
							<li id="liSpice_1"><a href="#"
								class="btn-lineup ui-sortable-handle" data-original-title=""
								title=""></a><input type="text" name="cok_spice_nm[]"
								id="cok_spice_nm_1" class="form-control" style="width: 300px;"
								placeholder="예) 참기름"><input type="text"
								name="cok_spice_amt[]" id="cok_spice_amt_1" class="form-control"
								style="width: 300px;" placeholder="예) 1T"><a
								id="btnSpiceDel_1" href="javascript:delSpice(1)" class="btn-del"
								style="display: none;"></a></li>
							<li id="liSpice_2"><a href="#" class="btn-lineup"
								data-original-title="" title=""></a><input type="text"
								name="cok_spice_nm[]" id="cok_spice_nm_2" class="form-control"
								style="width: 300px;" placeholder="예) 소금"><input
								type="text" name="cok_spice_amt[]" id="cok_spice_amt_2"
								class="form-control" style="width: 300px;" placeholder="예) 2t"><a
								id="btnSpiceDel_2" href="javascript:delSpice(2)" class="btn-del"
								style="display: none;"></a></li>
							<li id="liSpice_3"><a href="#" class="btn-lineup"
								data-original-title="" title=""></a><input type="text"
								name="cok_spice_nm[]" id="cok_spice_nm_3" class="form-control"
								style="width: 300px;" placeholder="예) 고추가루"><input
								type="text" name="cok_spice_amt[]" id="cok_spice_amt_3"
								class="form-control" style="width: 300px;" placeholder="예) 2T"><a
								id="btnSpiceDel_3" href="javascript:delSpice(3)" class="btn-del"
								style="display: none;"></a></li>
						</ul>
						<div class="btn_add"
							style="padding: 0 0 20px 160px; width: 800px;">
							<button type="button" onclick="addSpice()"
								class="btn btn-default">
								<span class="glyphicon glyphicon-plus-sign"></span>양념추가
							</button>
						</div>
					</div>
				</div>
				<div class="cont_box pad_l_60">
      <p class="cont_tit3">요리순서</p>
      <div id="divStepArea" class="ui-sortable"><div id="divStepItem_1" class="step">
            <p id="divStepNum_1" class="cont_tit2_1 ui-sortable-handle" style="cursor:pointer" data-original-title="" title="">Step1</p>
            <div id="divStepUpload_1" style="display:inline-block">
                <input type="hidden" name="step_no[]" id="step_no_1" value="">
                <input type="hidden" name="step_photo[]" id="step_photo_1" value="">
                <input type="hidden" name="new_step_photo[]" id="new_step_photo_1" value="">
                <input type="hidden" name="del_step_photo[]" id="del_step_photo_1" value="">
                <div style="position:absolute;left:-3000px"><input type="file" name="q_step_file_1" id="q_step_file_1" file_gubun="step" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
                <div id="divStepPhotoBox_1" is_over="0">
                    <img id="stepPhotoHolder_1" onclick="browseStepFile(1)" src="http://recipe1.ezmember.co.kr/img/pic_none2.gif" width="160" height="160" style="cursor:pointer">
                </div>
            </div>
            <div id="divStepText_1" style="display:inline-block">
                <textarea name="step_text[]" id="step_text_1" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:160px; width:430px; resize:none;"></textarea>
            </div>
            <div id="divStepBtn_1" class="step_btn" style="display: none;">
                <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-up moveUp"></span></a>
                <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-down moveDown"></span></a>
                <a href="javascript:adjustStep(1)"><b>맞춤</b></a>
                <a href="javascript:addStep(1)"><span class="glyphicon glyphicon-plus"></span></a>
                <a href="javascript:delStep(1)"><span class="glyphicon glyphicon-remove"></span></a>

            </div>
          </div></div>
      <!-- step template -->
      <div id="divStepTemplate" style="display:none">
          <div id="divStepItem_STEP" class="step">
            <p id="divStepNum_STEP" class="cont_tit2_1" style="cursor:pointer">Step 1</p>
            <div id="divStepUpload_STEP" style="display:inline-block">
                <input type="hidden" name="step_no[]" id="step_no_STEP" value="">
                <input type="hidden" name="step_photo[]" id="step_photo_STEP" value="">
                <input type="hidden" name="new_step_photo[]" id="new_step_photo_STEP" value="">
                <input type="hidden" name="del_step_photo[]" id="del_step_photo_STEP" value="">
                <div style="position:absolute;left:-3000px"><input type="file" name="q_step_file_STEP" id="q_step_file_STEP" file_gubun="step" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
                <div id="divStepPhotoBox_STEP" is_over="0">
                    <img id="stepPhotoHolder_STEP" onclick="browseStepFile(__STEP)" src="http://recipe1.ezmember.co.kr/img/pic_none2.gif" width="160" height="160" style="cursor:pointer">
                </div>
            </div>
            <div id="divStepText_STEP" style="display:inline-block">
                <textarea name="step_text[]" id="step_text_STEP" class="form-control step_cont" placeholder="" style="height:160px; width:430px; resize:none;"></textarea>
            </div>
            <div id="divStepBtn_STEP" class="step_btn" style="display:none">
                <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-up moveUp"></span></a>
                <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-down moveDown"></span></a>
                <a href="javascript:adjustStep(__STEP)"><b>맞춤</b></a>
                <a href="javascript:addStep(__STEP)"><span class="glyphicon glyphicon-plus"></span></a>
                <a href="javascript:delStep(__STEP)"><span class="glyphicon glyphicon-remove"></span></a>

            </div>
          </div>
      </div><!--/step template-->

      <div class="btn_add mag_b_25" style="padding:0 0 20px 180px; width:820px;"><button type="button" onclick="addStep()" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span>순서추가</button></div>


      <p class="cont_tit4">요리완성사진</p>
      <div id="divWorkArea" style="display:inline-block">
                <div id="divWorkUpload_1" class="complete_pic">
            <input type="hidden" name="work_photo[]" id="work_photo_1" value="">
            <input type="hidden" name="new_work_photo[]" id="new_work_photo_1" value="">
            <input type="hidden" name="del_work_photo[]" id="del_work_photo_1" value="">
            <div style="position:absolute;left:-3000px"><input type="file" name="q_work_file_1" id="q_work_file_1" file_gubun="work" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
            <div id="divWorkPhotoBox_1" is_over="0">
                <a href="#" class="pic_del" style="display:none"></a>
                <img id="workPhotoHolder_1" onclick="browseWorkFile(1)" src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px; cursor:pointer">
            </div>
        </div>
                <div id="divWorkUpload_2" class="complete_pic">
            <input type="hidden" name="work_photo[]" id="work_photo_2" value="">
            <input type="hidden" name="new_work_photo[]" id="new_work_photo_2" value="">
            <input type="hidden" name="del_work_photo[]" id="del_work_photo_2" value="">
            <div style="position:absolute;left:-3000px"><input type="file" name="q_work_file_2" id="q_work_file_2" file_gubun="work" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
            <div id="divWorkPhotoBox_2" is_over="0">
                <a href="#" class="pic_del" style="display:none"></a>
                <img id="workPhotoHolder_2" onclick="browseWorkFile(2)" src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px; cursor:pointer">
            </div>
        </div>
                <div id="divWorkUpload_3" class="complete_pic">
            <input type="hidden" name="work_photo[]" id="work_photo_3" value="">
            <input type="hidden" name="new_work_photo[]" id="new_work_photo_3" value="">
            <input type="hidden" name="del_work_photo[]" id="del_work_photo_3" value="">
            <div style="position:absolute;left:-3000px"><input type="file" name="q_work_file_3" id="q_work_file_3" file_gubun="work" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
            <div id="divWorkPhotoBox_3" is_over="0">
                <a href="#" class="pic_del" style="display:none"></a>
                <img id="workPhotoHolder_3" onclick="browseWorkFile(3)" src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px; cursor:pointer">
            </div>
        </div>
                <div id="divWorkUpload_4" class="complete_pic">
            <input type="hidden" name="work_photo[]" id="work_photo_4" value="">
            <input type="hidden" name="new_work_photo[]" id="new_work_photo_4" value="">
            <input type="hidden" name="del_work_photo[]" id="del_work_photo_4" value="">
            <div style="position:absolute;left:-3000px"><input type="file" name="q_work_file_4" id="q_work_file_4" file_gubun="work" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
            <div id="divWorkPhotoBox_4" is_over="0">
                <a href="#" class="pic_del" style="display:none"></a>
                <img id="workPhotoHolder_4" onclick="browseWorkFile(4)" src="http://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px; cursor:pointer">
            </div>
        </div>
              </div>
              
    </div>
<div class="cont_box pad_l_60">
    <p class="cont_tit4">요리팁</p>
    <textarea name="cok_tip" id="cok_tip" class="form-control step_cont" placeholder="예) 고기요리에는 소금보다 설탕을 먼저 넣어야 단맛이 겉돌지 않고 육질이 부드러워요." style="height:120px; width:620px; resize:none;"></textarea>
    </div>
    <div class="regi_btm">
    <button type="button" onclick="doSubmit('save')" class="btn-lg btn-primary">저장</button>
		<button type="button" onclick="doSubmit('save_public')" class="btn-lg btn-warning">공개하기</button>
	    <button type="button" onclick="history.back();" class="btn-lg btn-default">취소</button>
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