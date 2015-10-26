<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
<link href="../../css/listwrite.css" rel="stylesheet">
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
		   $('#myModal').on('shown.bs.modal', function () {
		        $('#myInput').focus()
		      })
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

<script type="text/javascript">
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





<!--script-->

</head>
<body  class="cbp-spmenu-push">
		<!--bottom-->
		                   <button type="button" class="btn btn-primary btn-lg" style="margin-top: 70px;margin-left: 50px;"data-toggle="modal" data-target="#myModal">
               등록
            </button>
            	
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                 <h4 align="center" style="margin-top: 60px;">자유게시판</h4>
                 <div class="modal-body">
                       <textarea name="board_tx" class="form-control" placeholder="내용" style="height: 210px; width: 446px;margin-left: 80px;
                           background-color: rgba(255, 255, 255, 0);"></textarea>
							<div class="write_pic2" style="width: 400px; margin-top: 5px;">
								<input type="file" name="file" id="file_1"
									style="display: none;" />
								<div class="complete_pic" id="previewId" style="width: 70px; height: 70px; color: black; font-size: 9pt; margin-left: 80px; border: 1px solid #F43C60; margin-bottom: 10px;">
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
                     <div class="modal-footer" style="margin-top:10px; margin-right: 70px;" >
                       <button type="button" class="btn btn-primary">등록</button>
                       <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                     </div>
               </div>   
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