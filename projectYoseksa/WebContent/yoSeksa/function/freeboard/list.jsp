<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- css -->
<link href="yoSeksa/css/bootstrap.css" type="text/css" rel="stylesheet"
   media="all">
<link href="yoSeksa/css/component.css" rel="stylesheet" type="text/css" />
<!-- jQuery (necessary JavaScript plugins) -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<!-- Custom Theme files -->
<link href="yoSeksa/css/style.css" type="text/css" rel="stylesheet"
   media="all">
<link href="yoSeksa/css/bootstrapTheme.css" rel="stylesheet">
<link href="yoSeksa/css/style1.css" type="text/css" rel="stylesheet"
   media="all">
<link href="yoSeksa/css/custom.css" rel="stylesheet">
<link href="yoSeksa/css/owl.carousel.css" rel="stylesheet">
<link href="yoSeksa/css/owl.theme.css" rel="stylesheet">
<link href="yoSeksa/css/index.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="yoSeksa/css/font.css">
<!-- <link rel="stylesheet" type="text/css"
   href="yoSeksa/css/font-awesome.min.css"> -->
<link rel="stylesheet" type="text/css"
   href="yoSeksa/css/recipe_content.css">
<link rel="stylesheet" href="yoSeksa/css/list/b0zjmc9xwx.css"
   type="text/css">
<!-- <link rel="stylesheet" href="yoSeksa/css/list/kt3ych75bx.css"
   type="text/css"> -->

<!-- 댓글 css 파일 네임 변경 -->
<link rel="stylesheet" href="yoSeksa/css/list/ktwzk0vhtx.css"
   type="text/css">
<link rel="stylesheet" href="yoSeksa/css/list/melonweb_album.css"
   type="text/css">


<link href="yoSeksa/css/listwrite.css" rel="stylesheet">
<link rel="stylesheet" href="yoSeksa/css/list/ggong.css" type="text/css">


<link rel="stylesheet"
   href="yoSeksa/css/list/main.min.css?ver=9dbd7d094ab56a14e3b2a984b20ea357">

<!-- //footer -->
<script src="yoSeksa/js/saved_resource"></script>
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
<style type="text/css">
body.modal-open {
   overflow: inherit;
   padding-right: 0 !important;
}

html, body {
   height: auto;
}
</style>
<script type="text/javascript">
   $(document).ready(function() {
      /* affix the navbar after scroll below header */
      $('#nav').affix({
         offset : {
            top : $('header').height() - $('#nav').height()
         }
      });

      /* affix-top 에서 affix로 수정될대 이벤트 발생*/
      $('#nav').on("affix.bs.affix", function() {
         $("#startmain").text("haa!");
      });
      /* affix에서 affix-top으로 전환될때 이벤트 발생*/
      $('#nav').on("affix-top.bs.affix", function() {
         $("#startmain").text("Search");
      });
   });
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
   $(function() {

      $('#btnSub').click(function() {

         var free_content = $('#free_content').val();
         if (free_content == "") {
            $('#contSpan').text("내용은 반드시 입력해야 합니다!!");
            $('#free_content').focus();
            return;
         }
         $('#contSpan').text("");

         var free_pw = $('#free_pw').val();
         if (free_pw == "") {
            $('#pwdSpan').text("비밀번호는 반드시 입력해야 합니다!!");
            $('#free_pw').focus();
            return;
         }
         $('#pwdSpan').text("");

         $('#freewriteForm').submit();
      });

      /*       $('#btnCancel').click(function() {
       history.back();
       }); */
   });
</script>

<script type="text/javascript">
   // 이미지 삽입해주는 스크립트
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
         for (var i = 0; i < files.length; i++) {

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

<!-- script end -->
</head>

<body class="cbp-spmenu-push">
   <!-- 민영이는 주석 전까지만 작업 하세요 -->
   <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true"
      style="display: block; margin: 0 auto;">
      <h4 align="center"
         style="margin-top: 60px; font-size: 17px; color: #000000">글 작성</h4>
      <div class="modal-body" style="padding-bottom: 0px;">
         <form name="freewriteForm" id="freewriteForm" method=post
            action="freeboard_insert_ok.sek">
            <textarea name="free_content" id="free_content" class="form-control"
               placeholder="내용"
               style="height: 210px; width: 446px; margin-left: 80px; border: 1px solid #CACACA; background-color: rgb(255, 255, 255);"></textarea>
            <br> <span id="nameSpan" style="color: red; text-align: center"></span>
            <div class="write_pic2"
               style="width: 400px; margin-top: 5px; margin-left: 80px;">

               <!-- 게시글 비밀번호 시작 -->
               <p>
                  <label for="userpwd">비밀번호</label> <input type=password
                     id="free_pw" name="free_pw"> <br> <span id="pwdSpan"
                     style="color: red; textalign: center"></span>
               </p>
               <!-- 게시글 비밀번호끝 -->
            </div>
         </form>
      </div>
      <div class="modal-footer"
         style="margin-bottom: 20px; margin-right: 70px; padding-top: 0px;">
         <button type="button" class="btn btn-primary" id="btnSub">등록</button>
         <button type="button" class="btn btn-primary" id="btnCancel"
            data-dismiss="modal">취소</button>
      </div>
   </div>

   <!-- 우식이형님 작업 이밑에서만 하세요 -->
   <div class="WrapMain">
      <div class="mainArea02">
         <div class="tabReview">
            <div class="reviewWrap">
               <div class="goodReview">


                  <div id="board_title" align="center">
                     <h3
                        style="border-bottom-width: 0px; margin-bottom: 0px; margin-top: 15px; font-size: 34px;">Freeboard</h3>
                  </div>
                  <div>
                     <p>
                        <button type="button" class="btn btn-primary btn-lg"
                           style="float: right; font-weight: bold; margin-top: 5px; padding-top: 5px; padding-bottom: 5px;"
                           data-toggle="modal" data-target="#myModal">등록</button>
                     <p class="count" style="font-size: 15;">
                        전체글 <span class="number" style="font-size: 20px;">${max_no }</span>건
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </div>


      <div class="hSpace70">
         <!-- 여백 70 -->
      </div>
      <div class="hSpace10">
         <!-- 여백 30 -->
      </div>

   </div>

   <hr style="margin-left: 120px; width: 1000px;">
   <!-- 게시판 -->
   <c:forEach var="dto" items="${list }">
      <div id="section_rvew" class="section_rvew"
         style="margin-left: 130px; margin-right: 130px; background: #f1f1f2;">
         <div class="d_cmtpgn " id="d_cmtpgn">
            <div class="list_cmt" id="d_cmtpgn_cmt_list_wrapper" style="">

               <li class="first_child">
                  <div class="wrap_cmt_cntt d_cmtpgn_cmt_wrapper">
                     <div class="wrap_nicnmname d_cmtpgn_cmt_member_wrapper">
                        <span class="thumb_wrap"> <a class="thumb d_cmtpgn_user"
                           style="cursor: pointer; text-decoration: none;"> <img
                              src="http://image.melon.co.kr/resource/image/cmt/web/common/noArtist03_54.jpg"
                              width="54" height="54">
                        </a>
                        </span>
                        <div class="ellipsis" style="max-width: 102px;">
                           <a class="thumb d_cmtpgn_user"
                              style="cursor: pointer; text-decoration: none;"> <span
                              class="d_cmtpgn_member_nickname" title="닉네임">${dto.nickname }</span>
                           </a>
                           <c:if test="${today==dto.dbday }">
                              <span title="새 글" class="icon_new d_cmtpgn_icon"></span>
                           </c:if>
                        </div>
                     </div>
                     <div class="wrap_cntt d_cmtpgn_cmt_cont_wrapper">
                        <div class="cntt">
                           <div class="cmt_text d_cmtpgn_cmt_full_contents"
                              style="-ms-word-break: break-all; word-break: break-all; word-break: break-word; word-wrap: break-word; -webkit-hyphens: auto; -ms-hyphens: auto; hyphens: auto; display: block">
                              <div>



                                 <span class="date" style="float: right">${dto.dbday }</span>
                                 <span class="date"> <span class="time"></span>
                                 </span>
                              </div>
                              <div class="cmt_cont">
                                 <pre>
                                 <p>${dto.free_content }</p>
                              </pre>
                              </div>

                           </div>
                        </div>

                        <div class="wrap_btn d_cmtpgn_cmt_info_wrapper">


                           <!-- 수정하기 -->
                           <div class="wrap_btn_right">
                              <button type="button" title="댓글 보기"
                                 class="btn_text arrow_d02 d_cmtpgn_adcmt_expand_btn"
                                 role="button">
                                 <span class="odd_span"> <span class="text">댓글 <strong
                                       class="d_cmtpgn_adcmt_cnt">0</strong>개
                                 </span>
                                 </span>
                              </button>
                              <span class="wrap_btn_recm d_cmtpgn_recm_box">
                                 <button type="button" title="글 수정"
                                    class="btn_recm positive d_cmtpgn_cmt_recm_btn">
                                    <span class="odd_span"> <a href=""><img
                                          src="yoSeksa/images/board1.gif" align="absbottom"
                                          style="width: 27px;"></a>
                                    </span>
                                 </button> <!-- 삭제하기 -->
                                 <button type="button" title="글 삭제하기"
                                    class="btn_recm negative d_cmtpgn_cmt_non_recm_btn"
                                    data-toggle="modal" data-target="#remove"">
                                    <span class="odd_span"> <a href=""><img
                                          style="width: 25px; margin-top: 3px;" align="absbottom"
                                          src="yoSeksa/images/board2.gif"> </a>
                                    </span>
                                 </button>
                              </span>
                           </div>
                        </div>
                     </div>
                  </div>
               </li>
            </div>
         </div>
      </div>
      <div class="blank" style="height: 15px;"></div>
   </c:forEach>

   <!-- 페이지 나누는 부분 -->
   <div class="paginate" id="d_cmtpgn_paginate_wrapper" style="">

      <a href="freeboard_list.sek?page=1"
         class="btn_first disabled d_cmtpgn_navigator" title="맨 처음"> <span>첫
            페이지</span>
      </a> <a href="freeboard_list.sek?page=${curpage>1?curpage-1:curpage }"
         class="btn_pre disabled d_cmtpgn_navigator" title="이전"> <span>이전</span>
      </a> <span class="page_num"> <strong> <span class="none">현재페이지</span>${curpage }
      </strong>
      </span>&nbsp;&nbsp;/&nbsp; <span class="page_num"> <strong> <span
            class="none">마지막페이지</span>${totalpage }
      </strong>
      </span> <a
         href="freeboard_list.sek?page=${curpage<totalpage?curpage+1:curpage }"
         class="btn_next disabled d_cmtpgn_navigator" title="다음"> <span>다음</span>
      </a> <a href="freeboard_list.sek?page=${totalpage }"
         class="btn_last disabled d_cmtpgn_navigator" title="맨 끝"> <span>끝
            페이지</span>
      </a>
   </div>

</body>
</html>