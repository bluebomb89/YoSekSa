<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- saved from url=(0053)http://www.melon.com/album/detail.htm?albumId=2646527 -->
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- css -->
<link href="../../css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/component.css" rel="stylesheet" type="text/css"  />
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="../../css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/bootstrapTheme.css" rel="stylesheet">
<link href="../../css/style1.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/custom.css" rel="stylesheet">
<link href="../../css/owl.carousel.css" rel="stylesheet">
<link href="../../css/owl.theme.css" rel="stylesheet">
<link href="../../css/index.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../../css/font.css">
<link rel="stylesheet" type="text/css" href="../../css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../../css/recipe_content.css">
<link rel="stylesheet" href="../../css/list/b0zjmc9xwx.css" type="text/css">
<link rel="stylesheet" href="../../css/list/kt3ych75bx.css" type="text/css">
<!-- 댓글 css 파일 네임 변경 -->
<link rel="stylesheet" href="../../css/list/ktwzk0vhtx.css" type="text/css"> 
<link rel="stylesheet" href="../../css/list/melonweb_album.css" type="text/css">
<link href="../../css/listwrite.css" rel="stylesheet">
<link rel="stylesheet" href="../../css/list/ggong.css" type="text/css">
<!-- //footer -->

<script src="../../js/saved_resource"></script>
<script src="../../js/jquery.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/modernizr.custom.js"></script>
<script src="../../js/jquery-1.11.1.min.js"></script>
<script src="../../js/responsiveslides.min.js"></script>
<script src="../../js/jquery.cycle.all.js"></script>
<script src="../../js/owl.carousel.js"></script>
<script src="../../js/owl.carousel.min.js"></script>
<!--/animated-css-->
<script src="../../js/move-top.js"></script>
<script src="../../js/easing.js"></script>
<script src="../../js/bootstrap.js"></script> 
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
<script type="text/javascript">
			jQuery(document).ready(function($) {
			    $('.slideshow').cycle({
					fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
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

<!--bottom-->
		    <button type="button" class="btn btn-primary btn-lg" style="margin-top: 70px;
		       margin-left: 50px;"data-toggle="modal" data-target="#myModal">등록
            </button>
            	
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                 <h4 align="center" style="margin-top: 60px; font-size: 17px; color:#544D4D">글 작성</h4>
                 <div class="modal-body" style="padding-bottom:0px;">
                       <textarea name="board_tx" class="form-control" placeholder="내용" style="height: 210px; width: 446px;margin-left: 80px; border:1px solid #CACACA;
                           background-color: rgb(255, 255, 255);"></textarea>
							<div class="write_pic2" style="width: 400px; margin-top: 5px;">
								<input type="file" name="file" id="file_1"
									style="display: none;" />
								<div class="complete_pic" id="previewId" style="width: 70px; height: 70px; 
								color: black; font-size: 9pt; margin-left: 80px;
								 margin-bottom: 10px; border: 1px solid #635555;">
									<!-- <img src="../../images/photo-image.jpg" alt="파일첨부" width="70" height="70"
										onclick="document.getElementById('file_1').click();"
										style="cursor: pointer; margin-left:80px;"/> -->
								</div>
								 <input type="file" onchange="previewImage(this,'previewId')" style="margin-left: 80px; margin"> 
    <!-- <div id="previewId"
        style="width: 70px; height: 70px; color: black; font-size: 9pt; border: 2px solid black; position: absolute; left: 300px; top: 300px;">
    </div> -->
							</div>
                     </div>
                     <div class="modal-footer" style="margin-bottom:20px; margin-right: 70px; padding-top:0px;" >
                       <button type="button" class="btn btn-primary" >등록</button>
                       <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                     </div>
               </div>   
		<!-- 여기는 작업하지 마요 -->
		
		
		
		
		
		
		
		<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
		<script src="js/classie.js"></script>
<div id="wrap">
   <!-- //header -->
   <div id="cont_wrap" class="clfix">
      <div id="conts_section" class="my_fold">
         <!-- contents -->
            <div id="conts" class="clfix ban"> 
               <div id="section_rvew" class="section_rvew">
                  <div class="d_cmtpgn " id="d_cmtpgn" data-sqwidget="templateType:pc-summary-type;textareaType:large-size;pageType:generic-page" data-sqwidget-settings="cmtPocType:pc.web;pocId:WP10;menuId:28010101;chnlSeq:102;contsRefValue:2646527;listPageUrl:http://www.melon.com//album/detail.htm?albumId=2646527">
                  <div class="clfix mb8" id="d_cmtpgn_cmt_count_wrapper" style="">
                  <div class="fl_left">
                  <strong class="fc_strong">총 <span class="fc_point d_cmtpgn_srch_cnt">660</span>개</strong>
                  </div>   
                  <ul class="list_sort fl_right d_cmtpgn_sort_option_wrapper" style="">
                  <li class="on first_child"><strong title="최신순으로 보기">최신순</strong></li>
                  <li><a href="http://www.melon.com/album/detail.htm?albumId=2646527#cmtpgn=&pageNo=1&sortType=1&srchType=2&srchWord=" title="추천순으로 보기">추천순</a></li>
<li><a href="http://www.melon.com/album/detail.htm?albumId=2646527#cmtpgn=&pageNo=1&sortType=2&srchType=2&srchWord=" title="답글순으로 보기">답글순</a></li>   </ul></div>   
<div class="list_cmt" id="d_cmtpgn_cmt_list_wrapper" style="">
<ul style="">
<li data-cmt-id="49025346" data-cmt-owner="off" class="first_child">
<div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">
<div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">
<span class="none">작성자</span>
<span class="thumb_wrap">
<a class="thumb d_cmtpgn_user" data-member-key="24703597" style="cursor:pointer;text-decoration:none;">
<img onerror="this.src=&#39;http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg&#39;" src="./asdasdasd_files/noArtist03_54.jpg" width="54" height="54" alt="">
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
</body></html>