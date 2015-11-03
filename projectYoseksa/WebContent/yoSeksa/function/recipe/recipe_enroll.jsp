<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml" class=""><!--[endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<meta name="description" content="레시피">
<meta name="keywords" content="">
<title>만개의 레시피</title>

<link rel="stylesheet" type="text/css" href="yoSeksa/css/recipe_enroll/bootstrap_20150918.css">
<link rel="stylesheet" type="text/css" href="yoSeksa/css/recipe_enroll/font.css">
<link rel="stylesheet" type="text/css" href="yoSeksa/css/recipe_enroll/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="yoSeksa/css/recipe_enroll/ez_recipe_20151022.css">
<link href="yoSeksa/css/bootstrap.css" type="text/css" rel="stylesheet"
	media="all">
<link href="yoSeksa/css/component.css" rel="stylesheet" type="text/css" />
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<!-- <link href="yoSeksa/css/style.css" type="text/css" rel="stylesheet" media="all"> -->
<link href="yoSeksa/css/style3.css" type="text/css" rel="stylesheet"
	media="all">
<link href="yoSeksa/css/bootstrapTheme.css" rel="stylesheet">
<link href="yoSeksa/css/custom.css" rel="stylesheet">
<link href="yoSeksa/css/owl.carousel.css" rel="stylesheet">
<link href="yoSeksa/css/owl.theme.css" rel="stylesheet">
<link href="yoSeksa/css/recipe_regi.css" rel="stylesheet">
<script async="" src="yoSeksa/css/recipe_enroll/analytics.js"></script><script id="facebook-jssdk" src="yoSeksa/css/recipe_enroll/sdk.js"></script><script type="text/javascript" src="yoSeksa/css/recipe_enroll/jquery-1.11.2.min.js" charset="utf-8"></script>
<style type="text/css">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow-x:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}.fb_link img{border:none}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_reset .fb_dialog_legacy{overflow:visible}.fb_dialog_advanced{padding:10px;-moz-border-radius:8px;-webkit-border-radius:8px;border-radius:8px}.fb_dialog_content{background:#fff;color:#333}.fb_dialog_close_icon{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif);cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{top:5px;left:5px;right:auto}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_close_icon:active{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_loader{background-color:#f6f7f8;border:1px solid #606060;font-size:24px;padding:20px}.fb_dialog_top_left,.fb_dialog_top_right,.fb_dialog_bottom_left,.fb_dialog_bottom_right{height:10px;width:10px;overflow:hidden;position:absolute}.fb_dialog_top_left{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;left:-10px;top:-10px}.fb_dialog_top_right{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;right:-10px;top:-10px}.fb_dialog_bottom_left{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;bottom:-10px;left:-10px}.fb_dialog_bottom_right{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;right:-10px;bottom:-10px}.fb_dialog_vert_left,.fb_dialog_vert_right,.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{position:absolute;background:#525252;filter:alpha(opacity=70);opacity:.7}.fb_dialog_vert_left,.fb_dialog_vert_right{width:10px;height:100%}.fb_dialog_vert_left{margin-left:-10px}.fb_dialog_vert_right{right:0;margin-right:-10px}.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{width:100%;height:10px}.fb_dialog_horiz_top{margin-top:-10px}.fb_dialog_horiz_bottom{bottom:0;margin-bottom:-10px}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #3a5795;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{-webkit-transform:none;height:100%;margin:0;overflow:visible;position:absolute;top:-10000px;left:0;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{width:auto;height:auto;min-height:initial;min-width:initial;background:none}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{color:#fff;display:block;padding-top:20px;clear:both;font-size:18px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .45);position:absolute;left:0;top:0;width:100%;min-height:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_content .dialog_header{-webkit-box-shadow:white 0 1px 1px -1px inset;background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));border-bottom:1px solid;border-color:#1d4088;color:#fff;font:14px Helvetica, sans-serif;font-weight:bold;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{-webkit-font-smoothing:subpixel-antialiased;height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));border:1px solid #2f477a;-webkit-background-clip:padding-box;-webkit-border-radius:3px;-webkit-box-shadow:rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;display:inline-block;margin-top:3px;max-width:85px;line-height:18px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{border:none;background:none;color:#fff;font:12px Helvetica, sans-serif;font-weight:bold;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #555;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f6f7f8;border:1px solid #555;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yD/r/t-wz8gw1xG1.png);background-repeat:no-repeat;background-position:50% 50%;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_hide_iframes iframe{position:relative;left:-10000px}.fb_iframe_widget_loader{position:relative;display:inline-block}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}.fb_iframe_widget_loader iframe{min-height:32px;z-index:2;zoom:1}.fb_iframe_widget_loader .FB_Loader{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat;height:32px;width:32px;margin-left:-16px;position:absolute;left:50%;z-index:4}</style></head>
<body>
<script type="text/javascript">
	$('#recipebtn').click(function(){
		
	});
</script>
<script>
$(document).ready(function() {
    doRTKeyword();
});

$("#srhRecipeText").keypress(function(event) {
    if (event.which == 13) {
        event.preventDefault();
        $("#frmTopRecipeSearch").submit();
    }
});

var curRtword = 2;
function doRTKeyword()
{
    var backRtword = (curRtword == 1) ? 2 : 1;
    $("#RtwordDiv_"+curRtword).hide();
    $("#RtwordDiv_"+backRtword).show();
    curRtword = backRtword;
}
</script>

<script>
$(document).ready(function() {
    $(".ellipsis_title").ellipsis({row: 1});
    $(".ellipsis_title2").ellipsis({row: 2});

    $(window).scroll(function() {
        if ($(window).scrollTop() > $(window).height()*1.5) {
            $("#btnGogoTop").slideDown(300);
        } else {
            $("#btnGogoTop").slideUp(300);
        }
    });
    $('[data-toggle="tooltip"]').tooltip();
});

$(function() {
    $('#memLayerBtn').click(function (e) {
        // Used to stop the event bubbling..
        e.stopPropagation();
        $(".document_common_layer:not('.mem_layer')").hide();
        if ($('.mem_layer').is(':visible')) {
            $('.mem_layer').hide();
        } else {
            $('.mem_layer').show();
        }
    });

    $('#btnTopWrite').click(function (e) {
        // Used to stop the event bubbling..
        $(".document_common_layer:not('.write_layer')").hide();
        e.stopPropagation();
        if ($('html').is('.old_ie')) {
            //$('#divBrowserGuideModal').modal({backdrop:'static'});
            $('#divBrowserGuideModal').modal('show');
        } else {
            if ($('.write_layer').is(':visible')) {
                $('.write_layer').hide();
            } else {
                $('.write_layer').show();
            }
        }
    });
    $(document).click(function () {
        $('.document_common_layer').hide();
    });

    $("#btnBlogContentsList").click(function() {
        $("#btnBlogContentsList").html('<span class="fa fa-spinner fa-spin" style="width:'+$("#btnBlogContentsList").width()+'px"></span>');
        el = $(this);
        var params = 'q_mode=get_blog_contents_list&q_portal='+$("[name=q_portal]:checked").val()+'&q_blogid='+$("#q_blogid").val();
        $.get("/common/ajx_common.html?"+params, function(html) {
            $("#btnBlogContentsList").html('조회');
            $("#divBlogContentsList").html(html);
        });
    });
    $('#divModalBlogForm').on('show.bs.modal',function() {
        $.ajax({
            type: "POST",
            url: "/common/ajx_common.html",
            data: "q_mode=get_blog_info",
            dataType: "json",
            success: function(json) {
                if (json['portal']) {
                    $("[id^=q_portal_]").filter('[value='+json['portal']+']').trigger('click');
                }
                if (json['blog_id']) {
                    $("#q_blogid").val(json['blog_id']);
                    $("#q_blog_select_type_id").trigger('click');
                }
            },
            error: function () {

            }
        });
    });
});
</script>
<!-- ------------------------ 이미지 셋 자바스크립트---시작------------------- -->
<script type="text/javascript">

 window.onload = function(){
	document.getElementById("q_main_file").onchange = function(){
		readImg('q_main_file', 'mainPhotoHolder');
	}	
	
	////////////////////////////////////////////////////////////////
	
	
	document.getElementById("q_step_file_1").onchange = function(){
		readImg('q_step_file_1', 'stepPhotoHolder_1');
	}	
	////////////////////////////////////////////////////////////////
	
	document.getElementById("q_work_file_1").onchange = function(){
		readImg('q_work_file_1', 'workPhotoHolder_1');
	}
	document.getElementById("q_work_file_2").onchange = function(){
		readImg('q_work_file_2', 'workPhotoHolder_2');
	}
	document.getElementById("q_work_file_3").onchange = function(){
		readImg('q_work_file_3', 'workPhotoHolder_3');
	}
	document.getElementById("q_work_file_4").onchange = function(){
		readImg('q_work_file_4', 'workPhotoHolder_4');
	}
} 

function setStepImage(step)
{
	
	document.getElementById("q_step_file_"+step).onchange = function(){
	readImg('q_step_file_'+step, 'stepPhotoHolder_'+step);
	}
}

function readImg(inputId, outputId){
	var file = document.getElementById(inputId).files[0];
	
	var reader = new FileReader();
	reader.readAsDataURL(file);
	
	reader.onload = function(){
		var output = document.getElementById(outputId);
		output.src = reader.result;
	} 
	
	reader.onerror = function(e){
		alert("읽기 오류:" + e.target.error.code);
		return;
	}
}
</script>
<!-- ------------------------ 이미지 셋 자바스크립트-----끝------------------- -->
<link rel="stylesheet" type="text/css" href="yoSeksa/css/recipe_enroll/jquery-ui-1.11.4_201507011.css">
<style>
.tagit {
    margin: 0 0 0 0 !important;
    padding: 5px 8px!important;
    border-radius: 0!important;
}
</style>

<script>
var _RESOURCE_SAMPLE = [{"nm":"\ub3fc\uc9c0\uace0\uae30","amt":"300g"},{"nm":"\uc591\ubc30\ucd94","amt":"1\/2\uac1c"},{"nm":"\ucc39\uc300","amt":"2\ucef5"}];
var _SPICE_SAMPLE = [{"nm":"\ucc38\uae30\ub984","amt":"1T"},{"nm":"\uc18c\uae08","amt":"2t"},{"nm":"\uace0\ucd94\uac00\ub8e8","amt":"2T"}];
var _STEP_SAMPLE = ["\uc18c\uace0\uae30\ub294 \uae30\ub984\uae30\ub97c \ub5bc\uc5b4\ub0b4\uace0 \uc801\ub2f9\ud55c \ud06c\uae30\ub85c \uc370\uc5b4\uc8fc\uc138\uc694.","\uc900\ube44\ub41c \uc591\ub150\uc73c\ub85c \uba3c\uc800 \uace0\uae30\ub97c \uc870\ubb3c\uc870\ubb3c \uc7ac\uc6cc \ub461\ub2c8\ub2e4.","\uadf8 \uc0ac\uc774 \uc591\ud30c\uc640 \ubc84\uc12f, \ub300\ud30c\ub3c4 \uc370\uc5b4\uc11c \uc900\ube44\ud558\uc138\uc694.","\uace0\uae30\uac00 \ubc18\ucbe4 \uc775\uc5b4\uac08 \ub54c \uc591\ud30c\ub97c \ud568\uaed8 \ubcf6\uc544\uc694."];
var _MAIN_PHOTO_SIZE = {"input":{"width":250,"height":250},"import":{"width":250,"height":250},"edit":{"width":170,"height":170}};





function setCategory(){
    var json_category = [];
    for (var i = 1; i <= 4; i++) {
        var id = $("[id^=spanCategory_" + i + "_]").filter('.label-success').prop('id');
        var cate_code = id.replace('spanCategory_' + i + '_', '');
        $("#cok_sq_category_" + i).val(cate_code);
    }
    closeCategory();
}

function closeCategory(){
    $("#btnAllCategory").popover('hide');
}

function toggleCategory(cate1, cate2){
    $("[id^=spanCategory_" + cate1 + "_]").each(function(){
        if ($(this).prop('id') == "spanCategory_" + cate1 + "_" + cate2) {
            if (!$(this).hasClass('label')) {
                $(this).addClass('label label-success');
            }
        }
        else {
            $(this).removeClass('label label-success');
        }
    });
}

function chkStar(val){
    var var_width = ((val * 20) - val) + 'px';
    $('#div_star').animate({
        width: var_width
    });
    $('#mac_tg_star').val(val);
}

function addResource(prev_step, init_json){
    var step = 0;
    
    $("#divResourceArea [id^=liResource_]").each(function(){
        var tmp = $(this).prop('id').replace('liResource_', '');
        var tmp_step = parseInt(tmp, 10);
        step = Math.max(step, tmp_step);
    });
    step++;
    //alert(step);
	var w = ($("#cok_reg_type").val() == 'edit') ? 190 : 300; 
	var str = '<li id="liResource_'+step+'"><a href="#" class="btn-lineup"></a>';
	str += '<input type="text" name="cok_resource_nm[]" id="cok_resource_nm_'+step+'" class="form-control" style="width:'+w+'px;">';
	str += '<input type="text" name="cok_resource_amt[]" id="cok_resource_amt_'+step+'" class="form-control" style="width:'+w+'px;">';
	str += '<a id="btnResourceDel_'+step+'" href="javascript:delResource('+step+')" class="btn-del" style="display:none"></a></li>';
    
    if (typeof prev_step == 'undefined' || prev_step === null || prev_step == 0) {
        $(str).appendTo('#divResourceArea');
    }
    else {
        $(str).insertAfter("#liResource_" + prev_step);
    }
    
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['nm']) {
        $("#divResourceArea [id=cok_resource_nm_" + step + "]").val(init_json['nm']);
    } else {
		$("#divResourceArea [id=cok_resource_nm_" + step + "]").attr('placeholder','예) '+_RESOURCE_SAMPLE[(step-1)%_RESOURCE_SAMPLE.length]['nm']);
	}
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['amt']) {
        $("#divResourceArea [id=cok_resource_amt_" + step + "]").val(init_json['amt']);
    } else {
		$("#divResourceArea [id=cok_resource_amt_" + step + "]").attr('placeholder','예) '+_RESOURCE_SAMPLE[(step-1)%_RESOURCE_SAMPLE.length]['amt']);
	}
    
    $("#divResourceArea [id=liResource_" + step + "]").mouseover(function(){
        $(this).find('.btn-del').show();
    }).mouseout(function(){
        $(this).find('.btn-del').hide();
    });
	
	$("#divResourceArea").sortable({
        handle: $('.btn-lineup')
    });
	//$( "ul, li" ).disableSelection();
}
function delResource(step) {
	$("#divResourceArea [id=liResource_"+step+"]").fadeOut(200,function() {
		$(this).remove();
	});
}

function addSpice(prev_step, init_json){
    var step = 0;
    
    $("#divSpiceArea [id^=liSpice_]").each(function(){
        var tmp = $(this).prop('id').replace('liSpice_', '');
        var tmp_step = parseInt(tmp, 10);
        step = Math.max(step, tmp_step);
    });
    step++;
    //alert(step);
	var w = ($("#cok_reg_type").val() == 'edit') ? 190 : 300; 
    var str = '<li id="liSpice_'+step+'"><a href="#" class="btn-lineup"></a>';
    str += '<input type="text" name="cok_spice_nm[]" id="cok_spice_nm_'+step+'" class="form-control" style="width:'+w+'px;">';
    str += '<input type="text" name="cok_spice_amt[]" id="cok_spice_amt_'+step+'" class="form-control" style="width:'+w+'px;">';
    str += '<a id="btnSpiceDel_'+step+'" href="javascript:delSpice('+step+')" class="btn-del" style="display:none"></a></li>';
    
    if (typeof prev_step == 'undefined' || prev_step === null || prev_step == 0) {
        $(str).appendTo('#divSpiceArea');
    }
    else {
        $(str).insertAfter("#liSpice_" + prev_step);
    }
    
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['nm']) {
        $("#divSpiceArea [id=cok_spice_nm_" + step + "]").val(init_json['nm']);
    } else {
        $("#divSpiceArea [id=cok_spice_nm_" + step + "]").attr('placeholder','예) '+_SPICE_SAMPLE[(step-1)%_SPICE_SAMPLE.length]['nm']);
    }
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['amt']) {
        $("#divSpiceArea [id=cok_spice_amt_" + step + "]").val(init_json['amt']);
    } else {
        $("#divSpiceArea [id=cok_spice_amt_" + step + "]").attr('placeholder','예) '+_SPICE_SAMPLE[(step-1)%_SPICE_SAMPLE.length]['amt']);
    }
    
    $("#divSpiceArea [id=liSpice_" + step + "]").mouseover(function(){
        $(this).find('.btn-del').show();
    }).mouseout(function(){
        $(this).find('.btn-del').hide();
    });
	
	$("#divSpiceArea").sortable({
        handle: $('.btn-lineup')
    });
	//$( "ul, li" ).disableSelection();
}
function delSpice(step) {
    $("#divSpiceArea [id=liSpice_"+step+"]").fadeOut(200,function() {
        $(this).remove();
    });
}

function addStep(prev_step, init_json){
    var step = 0;
    //var obj_step = $(obj).parent().prop('id').replace('divStepBtn_','');
    $("#divStepArea [id^=divStepItem_]").each(function(){
        var tmp = $(this).prop('id').replace('divStepItem_', '');
        var tmp_step = parseInt(tmp, 10);
        step = Math.max(step, tmp_step);
    });
    step++;
    //alert(step);
    var str = $("#divStepTemplate").html().replace(/__STEP/g, step);
    var str = str.replace(/_STEP/g, '_' + step);
    
	
    if (typeof prev_step == 'undefined' || prev_step === null || prev_step == 0) {
        $(str).appendTo('#divStepArea');
    }
    else {
        $(str).insertAfter("#divStepItem_" + prev_step);
    }
    
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['text']) {
        $("#divStepArea [id=step_text_" + step + "]").val(init_json['text']);
    } else {
		$("#divStepArea [id=step_text_" + step + "]").attr('placeholder','예) '+_STEP_SAMPLE[(step-1)%_STEP_SAMPLE.length]);
	}
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['step_no']) {
        $("#divStepArea [id=step_no_" + step + "]").val(init_json['step_no']);
    }
    if (typeof init_json !== 'undefined' && init_json !== null && init_json['photo']) {
        setStepPhoto('', init_json['photo'][0], init_json['photo'][0], step);
    }
    
    $("#divStepArea [id=divStepItem_" + step + "]").mouseover(function(){
        $(this).find('.step_btn').show();
    }).mouseout(function(){
        $(this).find('.step_btn').hide();
    });
    
    $("#divStepArea [id=divStepItem_" + step + "] .moveUp").click(function(){
		if ($(this).parents('.step').prevAll('.step').length !== 0) {
			$(this).parents('.step').insertBefore($(this).parents('.step').prev());
			remakeStepNumber();
		}
    });
    $("#divStepArea [id=divStepItem_" + step + "] .moveDown").click(function(){
		if ($(this).parents('.step').nextAll('.step').length !== 0) {
			$(this).parents('.step').insertAfter($(this).parents('.step').next());
			remakeStepNumber();
		}
    });        
	$("#divStepArea").sortable({
        handle: ($("#cok_reg_type").val() == 'input') ? $(".cont_tit2_1") : $(".cont_tit2"),
        stop: function(event,ui) {
            remakeStepNumber();
        }
    });
	
	$("#divStepArea [id=divStepNum_" + step + "]").tooltip({
        'placement': 'top',
        'container': $('.recipe_regi'),
        'title': '드래그하면 순서를 변경할 수 있습니다.'
    });
	
	if ($("#cok_reg_type").val() == 'edit') {
		$("#divStepItem_"+step).droppable({
            accept: "#divLeftContent img, #divLeftContent span",
			drop: function( event, ui ) {
				//var src = ui.draggable.attr('src');
				var src = ($(ui.draggable).prop('tagName') == 'IMG') ? ui.draggable.attr('src') : ui.draggable.attr('img_src');
                var target_step = $(this).prop('id').replace('divStepItem_','');
				setStepPhoto('1',src,src,target_step);
            }
        });
	}
	
    bindEvent(document.getElementById("q_step_file_" + step), 'change');
    
    remakeStepNumber();
}

function bindEvent(el, eventName){
	
    if (el.addEventListener) {
        el.addEventListener(eventName, false);
    }
    else 
        if (el.attachEvent) {
            el.attachEvent(eventName);
        }
      
}

function remakeStepNumber(){
    $("#divStepArea [id^=divStepItem_]").each(function(idx, obj){
        var step = $(this).prop('id').replace('divStepItem_', '');
        $("#divStepArea [id=divStepNum_" + step + "]").html('Step' + (idx + 1));
    });
}

function browseContentsFile() {
	var editor=oEditors.getById["boa_tx_content"];
    if (editor) {
        $("#q_contents_file").click();
    } else {
        alert('글쓰기 폼이 준비되지 않았습니다. 다시 시도해 주세요.');
    }
}

function browseMainFile(){
    $("#q_main_file").click();
}

function browseStepFile(step){
    $("#divStepArea [id=q_step_file_" + step + "]").click();
}

function browseWorkFile(num){
    $("#divWorkArea [id=q_work_file_" + num + "]").click();
}

function delStep(step){
	$("#divStepArea [id=divStepItem_" + step + "]").fadeOut(200,function() {
		$("#divStepArea [id=divStepItem_" + step + "]").remove();
		remakeStepNumber();
	});
}
function adjustStep(step) {
    adjustText('step_text_'+step);
}
function adjustText(id) {
    var contents = $('#'+id).val();
    var temp = contents.split('\n');
    var arr_str = [];
    for (var i=0; i<temp.length; i++) {
        if ($.trim(temp[i]) != '') {
            arr_str.push($.trim(temp[i]));
        }
    }
    $('#'+id).val(arr_str.join(' '));
}
</script>
<form name="insFrm" id="insFrm" method="post" action="recipe_insert.sek">
<link rel="stylesheet" type="text/css" href="yoSeksa/css/recipe_enroll/jquery.tagit.css"><style>
.note-editor .note-dropzone { opacity: 0 !important; }
ul.tagit {
    width : 620px;
    vertical-align : middle;
    
}
ul.tagit input[type="text"] {
    width: 100%;
    height: 30px;
}
</style>


<script>
$(document).ready(function() {
    bindEvent(document.getElementById("q_main_file"), 'change');
    for (var i=1; i<=4; i++) {
        bindEvent(document.getElementById("q_work_file_"+i), 'change');
    }

    addResource();
addResource();
addResource();
addSpice();
addSpice();
addSpice();
addStep();
    
    $(".btn-lineup").tooltip({
        'placement': 'top',
        'container': $('.recipe_regi'),
        'title': '드래그하면 순서를 변경할 수 있습니다.'
    });
});
var isSubmit = false;
function doSubmit(q_mode)
{
	//재료 루프돌면서 숫자 파악
 	var i=1;
	var c=true;
	while(c){
		var a=$('#cok_resource_nm_'+i).val();
		if(a==null){
			c=false;
			break;
		}
		$('#cok_resource_nm_'+i).attr("name","cok_resource_nm_"+i);
		$('#cok_resource_amt_'+i).attr("name","cok_resource_amt_"+i);
		i++;
	}; 
	// 양념 루프돌면서 숫자 파악
 	var k=1;
	var d=true;
	while(d){
		var b=$('#cok_spice_nm_'+k).val();
		if(b==null){
			d=false;
			break;
		}
		$('#cok_spice_nm_'+k).attr("name","cok_spice_nm_"+k);
		$('#cok_spice_amt_'+k).attr("name","cok_spice_amt_"+k);
		k++;
	};
	var v=$('#q_step_file_1').val();
	alert(v);
	/*
    if (isSubmit) {
        alert("처리중 입니다. 잠시만 기다리세요.");
        return;
    }
    */
    $("#q_mode").val(q_mode);

    chkResult = validateRecipeForm(q_mode);
    if (!chkResult) {
        return isSubmit = false;
    }
    if (q_mode == 'save') {
        if (confirm("저장하시겠습니까?")) {
            isSubmit = true;
            $("#insFrm").submit();
        }
        else {
            isSubmit = false;
        }
    } else if (q_mode == 'save_preview') {
        if (confirm("미리보기를 하려면 저장하셔야 합니다. 저장하시겠습니까?")) {
            isSubmit = true;
            $("#insFrm").submit();
        }
        else {
            isSubmit = false;
        }
    } else if (q_mode == 'save_public') {
				var msg = '레시피 공개 후, 리스트 및 검색에 노출되는 데는 하루 정도의 시간이 소요됩니다.\n\n레시피를 공개하시겠습니까?';
		 
        if (confirm(msg)) {
            isSubmit = true;
            $("#insFrm").submit();
        }
        else {
            isSubmit = false;
        }
    } else if (q_mode == 'save_work' || q_mode == 'save_confirm') {
        isSubmit = true;
        $("#insFrm").submit();
    } else {
        isSubmit = false;
    }
}
function validateRecipeForm(q_mode) {
    if ($.trim($("#cok_title").val()) == '') {
        alert('레시피 제목을 입력해 주세요.');
        $("#cok_title").focus();
        return isSubmit = false;
    }

    if (q_mode != 'save') {
        if ($("#main_photo").val() == '') {
            alert('대표사진을 선택해 주세요.');
            return isSubmit = false;
        }
        if ($.trim($("#cok_intro").val()) == '') {
            alert('요리소개 내용을 입력해 주세요.');
            $("#cok_intro").focus();
            return isSubmit = false;
        }
        if ($("#cok_sq_category_1").val() == '') {
            alert('방법별 카테고리를 선택해 주세요.');
            $("#cok_sq_category_1").focus();
            return isSubmit = false;
        }
        if ($("#cok_sq_category_2").val() == '') {
            alert('상황별 카테고리를 선택해 주세요.');
            $("#cok_sq_category_2").focus();
            return isSubmit = false;
        }
        if ($("#cok_sq_category_3").val() == '') {
            alert('재료별 카테고리를 선택해 주세요.');
            $("#cok_sq_category_3").focus();
            return isSubmit = false;
        }
        if ($("#cok_sq_category_4").val() == '') {
            alert('종류별 카테고리를 선택해 주세요.');
            $("#cok_sq_category_4").focus();
            $("#btnAllCategory").trigger('click');

            return isSubmit = false;
        }
        if ($("#cok_portion").val() == '') {
            alert('요리인원 선택해 주세요.');
            $("#cok_portion").focus();
            return isSubmit = false;
        }
        if ($("#cok_time").val() == '') {
            alert('요리시간을 선택해 주세요.');
            $("#cok_time").focus();
            return isSubmit = false;
        }
        if ($("#cok_degree").val() == '') {
            alert('난이도를 선택해 주세요.');
            $("#cok_degree").focus();
            return isSubmit = false;
        }
        var resource_cnt = 0;
        $("#divResourceArea [id^=liResource_]").each(function(i) {
            var step = $(this).prop('id').replace('liResource_','');
            if ($.trim($("#cok_resource_nm_" + step).val()) != '') {
                resource_cnt++;
            }
        });
        if (resource_cnt < 1) {
            alert('요리재료는 최소 1개 이상이어야 합니다.');
            $("#divResourceArea > li:last-child").find('input')[0].focus();
            return isSubmit = false;
        }

        var step_cnt = 0;
        var invalid_step = 0;
        $("#divStepArea [id^=divStepItem_]").each(function(i) {
            var step = $(this).prop('id').replace('divStepItem_','');
            if ($("#step_photo_"+step).val() != '' && $.trim($("#step_text_" + step).val()) == '') {
                alert("내용을 입력하세요.");
                $("#step_text_" + step).focus();
                invalid_step = step;
                return false;
            } else if ($("#step_photo_"+step).val() == '' && $.trim($("#step_text_" + step).val()) != '') {
                alert("사진을 선택하세요.");
                $("#step_text_" + step).focus();
                invalid_step = step;
                return false;
            } else if ($.trim($("#step_text_" + step).val()) != '') {
                step_cnt++;
            }
        });
        if (invalid_step > 0) {
            return isSubmit = false;
        }
        if (step_cnt < 3) {
            alert('요리순서는 최소 3개 이상이어야 합니다.');
            $("#divStepArea textarea").last().focus();
            return isSubmit = false;
        }

    }
    return true;
}
function doDelete() {
    if (confirm("레시피를 삭제하시겠습니까?")) {
        isSubmit = true;
        $("#insFrm [name=q_mode]").val('delete');
        $("#insFrm").submit();
    }
    else {
        isSubmit = false;
    }
}

$(function() {
    
    var cache = {};
    $("#mySingleFieldTags").tagit({
        singleField: true,
        singleFieldNode: $('#mySingleFieldTags'),
        singleFieldDelimiter: ',',
        allowSpaces: true,
        preprocessTag : function(val) {
            return val.replace(",","").replace("#","");
        },
        autocomplete : {
            //minLength : 2,
            source: function( request, response ) {
                var term = request.term;
                if ( term in cache ) {
                    response( cache[ term ] );
                    return;
                }
                $.getJSON( "/util/autocomplete.html?q_mode=tag", request, function( data, status, xhr ) {
                    cache[ term ] = data;
                    response( data );
                });
            }
        }
    });
});

</script>

<div class="container recipe_regi" style="margin-top: 100px">
    <div class="regi_center">
    <div class="cont_box pad_l_60">
      <div id="divMainPhotoUpload" class="cont_pic2">
        <div style="position:absolute;left:-3000px"><input type="file" name="q_main_file" id="q_main_file" file_gubun="main" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
        <div id="divMainPhotoBox" is_over="0">
            <img id="mainPhotoHolder" onclick="browseMainFile()" src="yoSeksa/css/recipe_enroll/pic_none4.gif" style="width: 250px; height: 160px; cursor:pointer">
        </div>
      </div>
      <div class="cont_line"><p class="cont_tit4">레시피 제목</p><input type="text" name="cok_title" id="cok_title" value="" class="form-control" placeholder="예) 소고기 미역국 끓이기" style="width:610px; "></div>
      <div class="cont_line"><p class="cont_tit4">카테고리</p>
        <select name="cok_sq_category_4" id="cok_sq_category_4" text="종류별">
<option value="">종류별</option>
<option value="1">밑반찬</option>
<option value="2">메인반찬</option>
<option value="3">국/탕</option>
<option value="4">찌개</option>
<option value="5">간식/디저트</option>
<option value="6">면/만두</option>
<option value="7">밥/죽/떡</option>
<option value="8">퓨전</option>
<option value="9">김치/젓갈/장류</option>
<option value="10">양념/소스/잼</option>
<option value="11">양식</option>
<option value="12">샐러드/스프</option>
<option value="13">베이킹</option>
<option value="14">차/음료/술</option>
<option value="15">기타</option>
</select>
        <select name="cok_sq_category_2" id="cok_sq_category_2" text="상황별">
<option value="">상황별</option>
<option value="1">일상</option>
<option value="2">초스피드</option>
<option value="3">안주</option>
<option value="4">손님접대</option>
<option value="5">간식</option>
<option value="6">야식</option>
<option value="7">나들이</option>
<option value="8">영양식</option>
<option value="9">기타</option>
</select>
<select name="cok_sq_category_1" id="cok_sq_category_1" text="방법별">
<option value="">방법별</option>
<option value="1">볶음</option>
<option value="2">부침</option>
<option value="3">조림</option>
<option value="4">무침</option>
<option value="5">찜</option>
<option value="6">굽기</option>
<option value="7">튀김</option>
<option value="8">삶기</option>
<option value="11">기타</option>
</select>
<select name="cok_sq_category_3" id="cok_sq_category_3" text="재료별">
<option value="">재료별</option>
<option value="1">육류</option>
<option value="2">채소류</option>
<option value="3">해물류</option>
<option value="4">가공식품류</option>
<option value="5">면/빵류</option>
<option value="7">과일류</option>
<option value="8">기타</option>
</select>
      </div>
      </div>
    </div><!--/cont_box-->
    <div class="cont_box pad_l_60">
      <div class="mag_b_25">
        <p class="cont_tit4">재료</p>
        <ul id="divResourceArea" class="ui-sortable">
        	<li id="liResource_1">
        		<a href="#" class="btn-lineup ui-sortable-handle" data-original-title="" title=""></a>
        		<input type="text" name="cok_resource_nm[]" id="cok_resource_nm_1" class="form-control" style="width:300px;" placeholder="예) 돼지고기">
        		<input type="text" name="cok_resource_amt[]" id="cok_resource_amt_1" class="form-control" style="width:300px;" placeholder="예) 300g">
        		<a id="btnResourceDel_1" href="javascript:delResource(1)" class="btn-del" style=""></a>
        		</li><li id="liResource_2"><a href="#" class="btn-lineup" data-original-title="" title=""></a><input type="text" name="cok_resource_nm[]" id="cok_resource_nm_2" class="form-control" style="width:300px;" placeholder="예) 양배추"><input type="text" name="cok_resource_amt[]" id="cok_resource_amt_2" class="form-control" style="width:300px;" placeholder="예) 1/2개"><a id="btnResourceDel_2" href="javascript:delResource(2)" class="btn-del" style="display: none;"></a></li><li id="liResource_3"><a href="#" class="btn-lineup" data-original-title="" title=""></a><input type="text" name="cok_resource_nm[]" id="cok_resource_nm_3" class="form-control" style="width:300px;" placeholder="예) 찹쌀"><input type="text" name="cok_resource_amt[]" id="cok_resource_amt_3" class="form-control" style="width:300px;" placeholder="예) 2컵">
        		<a id="btnResourceDel_3" href="javascript:delResource(3)" class="btn-del" style="display:none"></a></li></ul>
        <div class="btn_add" style="padding:0 0 20px 160px; width:800px;"><button type="button" onclick="addResource()" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span>재료추가</button></div>
      </div>
      <div>
        <p class="cont_tit4">양념</p>
        <ul id="divSpiceArea" class="ui-sortable"><li id="liSpice_1"><a href="#" class="btn-lineup ui-sortable-handle" data-original-title="" title=""></a><input type="text" name="cok_spice_nm[]" id="cok_spice_nm_1" class="form-control" style="width:300px;" placeholder="예) 참기름"><input type="text" name="cok_spice_amt[]" id="cok_spice_amt_1" class="form-control" style="width:300px;" placeholder="예) 1T"><a id="btnSpiceDel_1" href="javascript:delSpice(1)" class="btn-del" style="display: none;"></a></li><li id="liSpice_2"><a href="#" class="btn-lineup" data-original-title="" title=""></a><input type="text" name="cok_spice_nm[]" id="cok_spice_nm_2" class="form-control" style="width:300px;" placeholder="예) 소금"><input type="text" name="cok_spice_amt[]" id="cok_spice_amt_2" class="form-control" style="width:300px;" placeholder="예) 2t"><a id="btnSpiceDel_2" href="javascript:delSpice(2)" class="btn-del" style="display:none"></a></li><li id="liSpice_3"><a href="#" class="btn-lineup" data-original-title="" title=""></a><input type="text" name="cok_spice_nm[]" id="cok_spice_nm_3" class="form-control" style="width:300px;" placeholder="예) 고추가루"><input type="text" name="cok_spice_amt[]" id="cok_spice_amt_3" class="form-control" style="width:300px;" placeholder="예) 2T"><a id="btnSpiceDel_3" href="javascript:delSpice(3)" class="btn-del" style="display: none;"></a></li></ul>
        <div class="btn_add" style="padding:0 0 20px 160px; width:800px;"><button type="button" onclick="addSpice()" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span>양념추가</button></div>
      </div>
    </div><!--/cont_box-->
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
                    <img id="stepPhotoHolder_1" onclick="browseStepFile(1)" src="yoSeksa/css/recipe_enroll/pic_none2.gif" width="160" height="160" style="cursor:pointer">
                </div>
            </div>
            <div id="divStepText_1" style="display:inline-block">
                <textarea name="step_text[]" id="step_text_1" class="form-control step_cont" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 썰어주세요." style="height:160px; width:430px; resize:none;"></textarea>
            </div>
            <div id="divStepBtn_1" class="step_btn" style="display:none">
                <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-up moveUp"></span></a>
                <a href="javascript:void(0)"><span class="glyphicon glyphicon-chevron-down moveDown"></span></a>
                <a href="javascript:adjustStep(1)"><b>맞춤</b></a>
                <a href="javascript:addStep(1)"><span class="glyphicon glyphicon-plus"></span></a>
                <a href="javascript:delStep(1)"><span class="glyphicon glyphicon-remove"></span></a>

            </div>
          </div></div>
          
      <!-- 요리순서 -->
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
                    <img id="stepPhotoHolder_STEP" onclick="browseStepFile(__STEP);setStepImage(__STEP)" src="yoSeksa/css/recipe_enroll/pic_none2.gif" width="160" height="160" style="cursor:pointer">
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
    </div><!--/cont_box-->

  </div><!--/regi_center-->
  <div class="regi_btm">
    <button type="button" id="recipebtn" onclick="doSubmit(&#39;save&#39;)" class="btn-lg btn-primary">저장</button>
	    <button type="button" onclick="history.back();" class="btn-lg btn-default">취소</button>
      </div>
</div><!-- /container -->
</form>



<script type="text/javascript" src="yoSeksa/css/recipe_enroll/jquery-ui-1.11.4.js" charset="utf-8"></script>
<script type="text/javascript" src="yoSeksa/css/recipe_enroll/tag-it.min.js" charset="utf-8"></script>
<script type="text/javascript" src="yoSeksa/css/recipe_enroll/coreutil.min_20150609.js" charset="utf-8"></script>
<script type="text/javascript" src="yoSeksa/css/recipe_enroll/ui.min_20150609.js" charset="utf-8"></script>

</body>
</html>