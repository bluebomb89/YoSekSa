<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- saved from url=(0053)http://www.melon.com/album/detail.htm?albumId=2646527 -->
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- css -->
<link href="yoSeksa/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/component.css" rel="stylesheet" type="text/css"  />
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="yoSeksa/css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/bootstrapTheme.css" rel="stylesheet">
<link href="yoSeksa/css/style1.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/custom.css" rel="stylesheet">
<link href="yoSeksa/css/owl.carousel.css" rel="stylesheet">
<link href="yoSeksa/css/owl.theme.css" rel="stylesheet">
<link href="yoSeksa/css/index.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="yoSeksa/css/font.css">
<link rel="stylesheet" type="text/css" href="yoSeksa/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="yoSeksa/css/recipe_content.css">
<link rel="stylesheet" href="yoSeksa/css/list/b0zjmc9xwx.css" type="text/css">
<link rel="stylesheet" href="yoSeksa/css/list/kt3ych75bx.css" type="text/css">
<!-- 댓글 css 파일 네임 변경 -->
<link rel="stylesheet" href="yoSeksa/css/list/ktwzk0vhtx.css" type="text/css"> 
<link rel="stylesheet" href="yoSeksa/css/list/melonweb_album.css" type="text/css">
<link rel="stylesheet" href="yoSeksa/css/list/main.min.css?ver=9dbd7d094ab56a14e3b2a984b20ea357">
<link rel="stylesheet" href="yoSeksa/css/list//app.css?ver=4.0.8">
<link href="yoSeksa/css/listwrite.css" rel="stylesheet">
<link rel="stylesheet" href="yoSeksa/css/list/ggong.css" type="text/css">



<link rel="stylesheet" href="yoSeksa/css/list/onepage_201401.css" type="text/css">
<!-- //footer -->

<script src="yoSeksa/js/saved_resource"></script>
<script src="yoSeksa/js/jquery.min.js"></script>
<script src="yoSeksa/js/modernizr.custom.js"></script>
<script src="yoSeksa/js/responsiveslides.min.js"></script>
<script src="yoSeksa/js/jquery.cycle.all.js"></script>
<script src="yoSeksa/js/owl.carousel.js"></script>
<script src="yoSeksa/js/owl.carousel.min.js"></script>
<!--/animated-css-->
<script src="yoSeksa/js/move-top.js"></script>
<script src="yoSeksa/js/easing.js"></script>
<script src="yoSeksa/js/jquery-ui.js"></script>
<!--/script-->
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
<script type="text/javascript"> // 이미지 삽입해주는 스크립트
       function previewImage(targetObj, previewId) {

        var preview = document.getElementById(previewId); //div id   
        var ua = window.navigator.userAgent;

        if (ua.indexOf("MSIE") > -1) {//ie일때

            targetObj.select();

            try {
                var src = document.selection.createRange().text; // get file full path 
                var ie_preview_error = document
                        .getElementById("ie_preview_error_" + previewId);

                if (ie_preview_error) {
                    preview.removeChild(ie_preview_error); //error가 있으면 delete
                }

                var img = document.getElementById(previewId); //이미지가 뿌려질 곳 

                img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
                        + src + "', sizingMethod='scale')"; //이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
            } catch (e) {
                if (!document.getElementById("ie_preview_error_" + previewId)) {
                    var info = document.createElement("<p>");
                    info.id = "ie_preview_error_" + previewId;
                    info.innerHTML = "a";
                    preview.insertBefore(info, null);
                }
            }
        } else { //ie가 아닐때
            var files = targetObj.files;
            for ( var i = 0; i < files.length; i++) {

                var file = files[i];

                var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
                if (!file.type.match(imageType))
                    continue;

                var prevImg = document.getElementById("prev_" + previewId); //이전에 미리보기가 있다면 삭제
                if (prevImg) {
                    preview.removeChild(prevImg);
                }

                var img = document.createElement("img"); //크롬은 div에 이미지가 뿌려지지 않는다. 그래서 자식Element를 만든다.
                img.id = "prev_" + previewId;
                img.classList.add("obj");
                img.file = file;
                img.style.width = '80px'; //기본설정된 div의 안에 뿌려지는 효과를 주기 위해서 div크기와 같은 크기를 지정해준다.
                img.style.height = '80px';
                
                preview.appendChild(img);

                if (window.FileReader) { // FireFox, Chrome, Opera 확인.
                    var reader = new FileReader();
                    reader.onloadend = (function(aImg) {
                        return function(e) {
                            aImg.src = e.target.result;
                        };
                    })(img);
                    reader.readAsDataURL(file);
                } else { // safari is not supported FileReader
                    //alert('not supported FileReader');
                    if (!document.getElementById("sfr_preview_error_"
                            + previewId)) {
                        var info = document.createElement("p");
                        info.id = "sfr_preview_error_" + previewId;
                        info.innerHTML = "not supported FileReader";
                        preview.insertBefore(info, null);
                    }
                }
            }
        }
    }
</script>
</head>

<body  class="cbp-spmenu-push">
      <!-- 민영이는 주석 전까지만 작업 하세요 -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: block; margin: 0 auto;" >
                 <h4 align="center" style="margin-top: 60px; font-size: 17px; color:#000000">글 작성</h4>
                 <div class="modal-body" style="padding-bottom:0px;">
                       <textarea name="board_tx" class="form-control" placeholder="내용" style="height: 210px; width: 446px;margin-left: 80px; border:1px solid #CACACA;
                           background-color: rgb(255, 255, 255);"></textarea>
                     <div class="write_pic2" style="width: 400px; margin-top: 5px;">
                        <input type="file" name="file" id="file_1"
                           style="display: none;" />
                        <div class="complete_pic" id="previewId" style="width: 80px; height: 80px; 
                        color: black; font-size: 9pt; margin-left: 80px;
                         margin-bottom: 10px; border: 1px solid #635555;">
                           <!-- <img src="yoSeksa/images/photo-image.jpg" alt="파일첨부" width="70" height="70"
                              onclick="document.getElementById('file_1').click();"
                              style="cursor: pointer; margin-left:80px;"/> -->
                        </div>
                         <input type="file" onchange="previewImage(this,'previewId')" style="margin-left: 80px;"> 
    <!-- <div id="previewId"
        style="width: 70px; height: 70px; color: black; font-size: 9pt; border: 2px solid black; position: absolute; left: 300px; top: 300px;">
    </div> -->
                     </div>
                     </div>
                     <div class="modal-footer" style="margin-bottom:20px; margin-right: 70px; padding-top:0px;" >
                       <button type="button" class="btn btn-primary" >등록</button>
                       <button type="button" class="btn btn-default" data-dismiss="modal" style="background-color:rgba(255, 255, 255, 0);">취소</button>
                     </div>
               </div>   

      <!-- 우식이형님 작업 이밑에서만 하세요 -->
      <div class="WrapMain">
         <div class="mainArea02">
            <div class="tabReview">
               <div id="tab3"></div>
                  <div class="reviewWrap">
                     <div class="goodReview">
                        <div class="top">
                           <dl class="topSub">
                           <dt class="warning">상대방에 대한 심한 비방, 욕설을 포함한 글, 광고홍보성 글, 실명이 확인되지 않는 글들은 의 판단하에 임의로 삭제 가능합니다.</dt>
                           </dl>
                        </div>
                           <ul class="boardNotice">
                              <li>
                                 <dl>
                                    <dt></dt>
                                       <dd><a href="javascript:;" onclick="window.open('/common/board/noticeboardview_pop.asp?id=489', 'noticeboardview_pop', 'width=636, height=500, scrollbars=yes');return false;"><span class="subject"></span>[NEW]게시판 운영방안 및 게시물 삭제 기준 안내</a></dd>
                                 </dl>
                              </li>
                              <li>
                                 <dl>
                                    <dt></dt>
                                       <dd><a href="javascript:;" onclick="window.open('/common/board/noticeboardview_pop.asp?id=335', 'noticeboardview_pop', 'width=636, height=500, scrollbars=yes');return false;"><span class="subject">[필독]</span>저작권법 관련 내용입니다. 필독해주세요!</a></dd>
                                 </dl>
                              </li>
                           </ul>
                              <p class="count">전체글<span class="number">2</span>건</p>
                                 <div id="ajax_review">
                                    <ul class="boardList" totcnt="0" od="">
                                          <img src="yoSeksa/images/reply_ico.png" align="absbottom" ;=""
                                          style="margin-top: 13px; margin-left: 395px;">
                                         <button type="button" class="btn btn-primary btn-lg" 
                                         style="margin-top: 15px; padding-left: 0px;"
                                         data-toggle="modal" data-target="#myModal">게시물을 등록해주세요
                                  </button>
                                       </ul>
                                    </div>
                     </div>
                  </div>
               </div>
            </div>
               <div class="hSpace70"><!-- 여백 70 --></div>
                  <div class="hSpace30"><!-- 여백 30 --></div>
         </div>
      <!-- 게시판 -->
   <div id="cont_wrap" class="clfix">
      <div id="conts_section" class="my_fold">
         <!-- contents -->
            <div id="conts" class="clfix ban"> 
               <div id="section_rvew" class="section_rvew">
         <div class="d_cmtpgn " id="d_cmtpgn" data-sqwidget="templateType:pc-summary-type;textareaType:large-size;pageType:generic-page" data-sqwidget-settings="cmtPocType:pc.web;pocId:WP10;menuId:28010101;chnlSeq:102;contsRefValue:2646527;listPageUrl:http://www.melon.com//album/detail.htm?albumId=2646527">
            <div class="clfix mb8" id="d_cmtpgn_cmt_count_wrapper" style="">
                  <div class="fl_left">
                  </div>   
                  <ul class="list_sort fl_right d_cmtpgn_sort_option_wrapper" style="">
            </div>   
   <div class="list_cmt" id="d_cmtpgn_cmt_list_wrapper" style="">
      <ul style="">
         <li data-cmt-id="49025346" data-cmt-owner="off" class="first_child">
            <div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">
               <div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">
                  <span class="none">작성자</span>
                  <span class="thumb_wrap">
                  <a class="thumb d_cmtpgn_user" data-member-key="24703597" style="cursor:pointer;text-decoration:none;">
                  <img onerror="this.src=&#39;http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg&#39;" src="./asdasdasd_files/noArtist03_54.
" width="54" height="54" alt="">
                  <span class="thumb_frame"></span>
                  </a></span>
                  <a class="thumb d_cmtpgn_user" data-member-key="24703597" style="cursor:pointer;text-decoration:none;">
                  <img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://image.melon.co.kr/resource/image/cmt/web/common/noArtist03_54.jpg" width="54" height="54" alt="" />
                  <span class="thumb_frame"></span>   
                  </a></span></span><div class="ellipsis" style="max-width: 102px;">
                  <a class="thumb d_cmtpgn_user" data-member-key="24703597" style="cursor:pointer;text-decoration:none;"><span class="d_cmtpgn_member_nickname" title="dnqls0617">dnqls0617</span></a></div>         </div>         <div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">            <div class="cntt">                              <div class="cmt_text d_cmtpgn_cmt_full_contents" style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap:break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display:block">      <div class="cmt_cont">      <span class="none">내용</span>      </div>                  <span title="새 글" class="icon_new d_cmtpgn_icon"><span class="none">NEW</span></span>               </div>            </div>            <div>               <span class="none">작성일자</span>               <span class="date">                  <span>방금</span>                  <span class="time"></span>               </span>            </div>                  <div class="wrap_btn d_cmtpgn_cmt_info_wrapper">         <button type="button" title="답글 더보기" class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn" data-expand-target="#cmt_adcmt_49025346" data-control="expand" role="button"><span class="odd_span">      <span class="text">답글 <strong class="d_cmtpgn_adcmt_cnt">0</strong>개</span>      <span class="icon"></span>   </span></button>         <div class="wrap_btn_right">                        <span class="wrap_btn_recm d_cmtpgn_recm_box">         <button type="button" title="글 추천" class="btn_recm positive d_cmtpgn_cmt_recm_btn"><span class="odd_span">            <span class="icon">추천</span>            <span class="none">총건수</span>0         </span></button>         <button type="button" title="글 비추천" class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"><span class="odd_span">            <span class="icon">비추천</span>            <span class="none">총건수</span>0         </span></button>      </span>                  <span class="wrap_btn_report d_cmtpgn_cmt_btn_wrapper">      <button type="button" title="글 신고하기" class="btn_reprt d_cmtpgn_cmt_reprt_btn"><span class="odd_span">신고</span></button>   </span>                                 </div>            </div>         </div>      </div>      <ul class="lower_cmt d_cmtpgn_adcmt_list" id="cmt_adcmt_49025346" style=""></ul>   </li><li data-cmt-id="49024997" data-cmt-owner="off" class="">      <div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">         <div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">            <span class="none">작성자</span>      <span class="thumb_wrap">         <a class="thumb d_cmtpgn_user" data-member-key="2282071" style="cursor:pointer;text-decoration:none;">            <img onerror="this.src=&#39;http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg&#39;" src="./asdasdasd_files/noArtist01_54.jpg" width="54" height="54" alt="">            <span class="thumb_frame"></span>         </a>      </span>               <!--<span class="none">작성자</span>               <span class="thumb_wrap">                  <a class="thumb d_cmtpgn_user" data-member-key="2282071" style="cursor:pointer;text-decoration:none;">                     <img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://image.melon.co.kr/resource/image/cmt/web/common/noArtist01_54.jpg" width="54" height="54" alt="" />                     <span class="thumb_frame"></span>                  </a>               </span>            </span>-->            <div class="ellipsis" style="max-width: 102px;">
                  <a class="thumb d_cmtpgn_user" data-member-key="2282071" style="cursor:pointer;text-decoration:none;">      </div>               </div></div></li></ul></div></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   	  <!-- 푸터 -->
   	  <!-- <html class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" lang="en" prefix="og: http://ogp.me/ns#"><body class="home page page-template page-template-template-home-php">&#65279; -->  
 
  <div class="footer-color-wrap">
	<footer class="content-info container" role="contentinfo">
  		<div class="row">
    		<div class="col-lg-12">
				<div class="howmuch"> 
					<li id="text-4" class="widget widget_text">
					<h3>About Us</h3>			
					<div class="textwidget">Yosek<em>Yosek</em>Yosek<br>Yosek</div>
					</li>
				</div>
	<div class="gotaquestion"><a class="anchorfix" id="questions"></a>
		<li id="text-5" class="widget widget_text">
		<h3>Get in Touch</h3>			
			<div class="textwidget">
				<div class="question-phone">Seoul: +00 (010) 0000 0000 
											sinchon: +00 (010) 0000 0000
				</div>
					<div class="question-mail"><a href="mailto:yo@sek.sa">yo@sek.sa</a> 
					</div>
			</div>
		</li>
	</div>
 		<div class="social-links">
			<!--<a target="_blank" href="http://www.facebook.com/InfinVision"><img width="29" height="60" alt="facebook" src=" http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/f-social-facebook.png" ></a>
			<a target="_blank" href="http://twitter.com/infinvision"><img width="29" height="60" alt="twitter" src="http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/f-social-twitter.png"></a>
			<a target="_blank" href="http://www.linkedin.com/company/infinvision"><img width="29" height="60" alt="linkedin" src="http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/f-social-linkedin.png"></a>
			<a target="_blank" href="https://plus.google.com/+Infinvision"><img width="29" height="60" alt="googleplus" src="http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/f-social-google.png"></a>-->
		</div> 
			</div>
  		</div>
  </footer>
  </div>
		<div class="blacky-back" style="padding-bottom: 350px;">
				<div class="f-menu">
				<ul id="menu-primary-navigation-1" class="menu"><li class="active menu-home"><a href="/">Home</a></li><li class="menu-divider">/</li>
				<li class="menu-projects"><a href="/projects/">Projects</a></li><li class="menu-divider">/</li>
				<li class="menu-workshops-briefings"><a href="#">Workshops &amp; Briefings</a></li><li class="menu-divider">/</li>
				<li class="menu-about"><a href="/about/">About</a></li><li class="menu-divider">/</li>
				<li class="menu-ideas"><a href="/blog/">Ideas</a></li><li class="menu-divider">/</li>
				
		</ul></div>
			<div class="f-copy">© Copyright 2014 InfinVision Ltd. All rights reserved.</div>
		</div>
	</body>
</html>