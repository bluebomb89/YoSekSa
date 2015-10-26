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

		
	
	
	
	
	

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>앨범 정보&gt;멜론</title>
	<meta name="keywords" content="음악서비스, 멜론차트, 멜론TOP100, 최신음악, 인기가요, 뮤직비디오, 앨범, 플레이어, 스트리밍, 다운로드, 아티스트플러스, 아티스트채널">
	<meta name="description" content="국내 최대 620만곡 보유 No.1 음악사이트, 멜론! 최신음악과 실시간 차트는 기본, 내 취향을 아는 똑똑한 추천 라디오, 내가 좋아하는 아티스트의 새로운 소식까지 함께 즐겨보세요.">
	<meta property="og:title" content="">
	<meta property="og:image" content="">
	<meta property="og:description" content="음악이 필요한 순간, 멜론">
	<meta name="viewport" content="width=device-width">
	<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?1">
	
		
		
		<link rel="alternate" href="android-app://com.iloen.melon/melonapp/details/album/2646429">
		
		
	
	<script type="text/javascript">
		checkWin8Metro();
		function checkWin8Metro(){
			var userAgent = navigator.userAgent.toLowerCase();
			var canRunActiveX = false;
			try
			{
				canRunActiveX = !!new ActiveXObject("htmlfile");
			}
			catch (e)
			{
				canRunActiveX = false;
			}
			if ((userAgent.indexOf("windows nt 6.2") >= 0 || userAgent.indexOf("windows nt 6.3") >= 0 ) && userAgent.indexOf("msie") >= 0)
			{
				// windows 8
				if (canRunActiveX == false)
				{
					document.location.href = "http://t.melon.com";
				}
			}
		}
	</script>
	
	
	<link rel="stylesheet" href="http://static.melon.co.kr/static/web/resource/style/w1/x8/v/b0zjmc9xwx.css" type="text/css">
	<link rel="stylesheet" href="http://static.melon.co.kr/static/web/resource/style/w1/xy/f/kt3ych75bx.css" type="text/css">
	<!-- 댓글 css 파일 네임 변경 -->
    <link rel="stylesheet" href="http://static.melon.co.kr/static/web/resource/style/w1/e9/3/ktwzk0vhtx.css" type="text/css"> 
  	
  		
  		
			<link rel="stylesheet" href="/resource/style/web/album/melonweb_album.css" type="text/css">
  		
  	
	
	
	<!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->
	<script>window.jQuery || document.write('<script type="text/javascript" src="/resource/script/web/common/jquery-1.9.1.min.js"><\/script>')</script>
	<script type="text/javascript" src="http://member.melon.com/resource/script/web/member/melonweb_member_external.js?tm=20150722"></script>
	<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/qo/z/uoipb1qotx.js"></script> 
	<script type="text/javascript">
	MelonPersonal.init();

	(function() {
		WEBPOCIMG = {
			defaultImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 38){
					thumbType = "_38";
				} else if(width > 38 && width <= 52){
					thumbType = "_52";
				} else if(width > 52 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200){
					thumbType = "_500";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultAlbumImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 38){
					thumbType = "_38";
				} else if(width > 38 && width <= 52){
					thumbType = "_52";
				} else if(width > 52 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200){
					thumbType = "_500";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultArtistImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_300";
				if(width > 0 && width <= 34){
					thumbType = "_34";
				} else if(width > 34 && width <= 40){
					thumbType = "_40";
				} else if(width > 40 && width <= 54){
					thumbType = "_54";
				} else if(width > 54 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 100){
					thumbType = "_100";
				} else if(width > 100 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 160){
					thumbType = "_160";
				} else if(width > 160 && width <= 200){
					thumbType = "_200";
				} else if(width > 200 && width <= 300){
					thumbType = "_300";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noArtist" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultDjImg : function(obj){
			},
			defaultMvImg : function(obj, width, height){
				if(width == null || width == '') width = $(obj).width();
				if(height == null || height == '') height = $(obj).height();

				var ratio43 = Math.floor((4/3)*10)/10;
				var ratio169 = Math.floor((16/9)*10)/10;
				var ratioObj = Math.floor((width/height)*10)/10;

				var ratio = "4x3";
				if(ratioObj == ratio43){
					ratio = "4x3"; //contentsType = "mv43";
				} else if(ratioObj == ratio169){
					ratio = "16x9"; //contentsType = "mv169";
				} else {
					if(ratioObj > 1.5) ratio = "16x9";
					else ratio = "4x3";
				}

				var thumbType = "_" + ratio + "_640";
				if(width > 0 && width <= 60){
					thumbType = "_" + ratio + "_60";
				} else if(width > 60 && width <= 120){
					thumbType = "_" + ratio + "_120";
				} else if(width > 120 && width <= 144){
					thumbType = "_" + ratio + "_144";
				} else if(width > 144 && width <= 240){
					thumbType = "_" + ratio + "_240";
				} else if(width > 240 && width <= 480){
					thumbType = "_" + ratio + "_480";
				} else if(width > 480){
					thumbType = "_" + ratio + "_640";
				}

				var altSrc = "http://image.melon.co.kr/resource/image/web/default/noMovie" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultPlaylistImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 38){
					thumbType = "_38";
				} else if(width > 38 && width <= 52){
					thumbType = "_52";
				} else if(width > 52 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 114){
					thumbType = "_114";
				} else if(width > 114 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200){
					thumbType = "_500";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultMemberImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_130";
				if(width > 0 && width <= 40){
					thumbType = "_40";
				} else if(width > 40 && width <= 54){
					thumbType = "_54";
				} else if(width > 54 && width <= 72){
					thumbType = "_72";
				} else if(width > 72 && width <= 96){
					thumbType = "_96";
				} else if(width > 96 && width <= 112){
					thumbType = "_112";
				} else if(width > 112){
					thumbType = "_130";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noUser" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultPhotoImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 200){
					thumbType = "_200";
				} else if(width > 200) {
					thumbType = "_500";
				}
/* 				if(width > 0 && width <= 60){
					thumbType = "_60";
				} else if(width > 60 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200 && width <= 300){
					thumbType = "_300";
				} else if(width > 300 && width <= 500){
					thumbType = "_500";
				} else if(width > 500){
					thumbType = "_700";
				} */

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultShopImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_240";
				if(width > 0 && width <= 240){
					thumbType = "_240";
				} else if(width > 240 && width <= 300){
					thumbType = "_256";
				} else {
					thumbType = "_305";//추후 조절값
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noProduct" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultShowwingImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_256";
				if(width > 0 && width <= 300){
					thumbType = "_256";
				} else {
					thumbType = "_313";//추후 조절값
				}
				altSrc = "http://image.melon.co.kr/resource/image/web/default/noShowing" + thumbType + ".jpg";

				obj.src = altSrc;
			}
		}
		,WEBELLIPSIS = {
			ellipsis : function(ellipsisName,moreClassName,eWidth){
		        //아티스트 더보기
		        var arObj = $('.' + ellipsisName);
		        for(var i = 0; i < arObj.length; i++){
		            if (arObj.eq(i).width() > eWidth ){
		                arObj.eq(i).parent().parent().parent().find('.' + moreClassName).show();
		            }
		        }
			}
		}
	})();
	</script>
</head>

<body>
<div id="wrap">
	<div id="skip_nav">skip navigation
		<ul>
			<li><a href="#gnb_menu">메뉴</a></li>
			<li><a href="#id_box">마이영역</a></li>
			<li><a href="#conts_section">본문</a></li>
			<li><a href="#footer">하단 정보</a></li>
		</ul>
	</div>

	<!--  header -->
	
	
	<!-- //header -->

	<div id="cont_wrap" class="clfix">
		<div id="conts_section" class="my_fold">
			<!-- contents -->
			
				<div id="conts" class="clfix ban"> 
					
					
					
					
					<!-- 앨범 기본 정보 -->
					
<div class="wrap_dtl_album">
	
	
	<!-- 구매 안내 문구 -->
	
	<!-- //구매 안내 문구 -->
</div>



<script type="application/ld+json">
{
	"@context": "http://schema.org",
	"@type": "MusicAlbum",
	"url": [
			"http://www.melon.com/album/detail.htm?albumId=2646429",
			"android-app://com.iloen.melon/melonapp/details/album/2646429"
	],
	"image": "http://image.melon.co.kr/cm/album/images/026/46/429/2646429.jpg",
	"name": "솔라감성 Part.1",
	"sameAs": "http://www.melon.com/album/detail.htm?albumId=2646429",
	"description": "&lt;div&gt;	&lt;strong&gt;지금 이순간, 솔라감성&lt;/strong&gt;&lt;/div&gt;&lt;div&gt;	&lt;strong&gt;- 솔라만의 정서를 담아낸 [솔라감성]이 주는 여운&lt;/strong&gt;&lt;/div&gt;&lt;div&gt;	&lt;strong&gt;- &amp;#39;보컬리스트&amp;#39; 솔라가 풀어낸 소박하고 담담한 힐링 음원&lt;/strong&gt;&lt;br /&gt;	&lt;br /&gt;	마마무 솔라가 23일 자정, [솔라감성 Part.1] &amp;quot;바보처럼 살았군요&amp;quot;의 음원을 공개했다. &amp;#39;유쾌하고 친구 같은, 그러나 무대 위에선 개성있는 모습으로 노련하게 무대를 즐길 줄 아는 실력파 걸그룹&amp;#39; 이라는 수식어가 붙으며 지난 여름 걸그룹 대전에서 단숨에 대세로 떠오른 마마무의 메인보컬 솔라가 이번에는 감성적인 음원으로 화려하게 무대를 오르는 &amp;#39;아이돌&amp;#39;의 모습이 아닌, 지치고 힘든 스케줄 속에서도 음악을 통해 치유를 받는 &amp;#39;솔라&amp;#39;의 진짜 모습을 담아냈다.&lt;br /&gt;	&lt;br /&gt;	[솔라감성 Part.1] &amp;quot;바보처럼 살았군요&amp;quot;는 잔잔한 피아노 반주에 담담하게 불러낸 솔라의 목소리가 더해져 깊은 울림을 선사한다. 자신이 태어난 해보다 훨씬 이전에 발표된 원곡을 자신만의 정서로 재해석하며 기존 마마무의 음원과는 또 다른 소박하고 차분한 매력으로 다가온 것. &amp;quot;바보처럼 살았군요&amp;quot;는 실제로 솔라에게 &amp;#39;힐링&amp;#39;이 되어준 음악이다. 솔라는 팬카페를 통해 &amp;#39;후회스러웠던 일들, 초침 흘러가듯 똑같이 흘러가는 일상들, 그 일상에서 놓친 많은 것들에 대해 생각하며 불렀기에 이 노래로 위로도 받고 힐링이 되었다&amp;#39;라고 밝히며 &amp;#39;늘 받기만 하는 팬들에게 주는 작은 선물이었으면 좋겠다&amp;#39;는 진심을 전했다.&lt;br /&gt;	&lt;br /&gt;	[솔라감성]은 &amp;quot;바보처럼 살았군요&amp;quot;를 시작으로, 솔라에게 &amp;#39;힐링&amp;#39;이 되어준, 그리고 팬들에게 &amp;#39;힐링&amp;#39;이 되어줄 음원을 시리즈로 선보일 예정이다. 자신의 감성을 탄탄히 쌓아갈수록 더욱더 진한 감동으로 다가올 앞으로의 음악들이 더 기대가 되는 이유는 아티스트가 가지는 음악 앞에서의 &amp;#39;진지함&amp;#39;이 만들어 낼 여운 때문일 것이다. 앞으로의 시리즈를 통해 보여줄 솔라의 감성은 세대가 바뀌어도 두고두고 감상하는 명곡처럼, 지치고 힘들 때마다 꺼내 듣는 빛바랜 사진첩 같은 선물이 될 것이다.&lt;/div&gt;",
	"potentialAction": {
		"@type": "ListenAction",
		"target": [
					"http://www.melon.com/album/detail.htm?albumId=2646429",
					"android-app://com.iloen.melon/melonapp/details/album/2646429"
		],
		"expectsAcceptanceOf": {
			"@type": "Offer",
			"eligibleRegion": {
				"@type": "Country",
				"name": "KR"
			}
		}
	}

}
</script>

					<!-- //앨범 기본 정보 -->
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					<div id="section_rvew" class="section_rvew">
				<li class="on first_child"><strong title="최신순으로 보기">게시판</strong></li>
						
						<div class="d_cmtpgn " id="d_cmtpgn" data-sqwidget="templateType:pc-summary-type;textareaType:large-size;pageType:generic-page" data-sqwidget-settings="cmtPocType:pc.web;pocId:WP10;menuId:28010101;chnlSeq:102;contsRefValue:2646429;listPageUrl:http://www.melon.com//album/detail.htm?albumId=2646429">				<div id="d_cmtpgn_cmt_write_box" class="re_notice  d_cmtpgn_cmt_edit_box" data-cmt-id="-1">		<div class="thumb_wrap">		<a class="thumb d_cmtpgn_user" data-member-key="null" id="commentWriteBoxImage">			<img onerror="this.src='http://image.melon.co.kr//resource/image/cmt/web/common/noArtist02_54.jpg'" src="http://image.melon.co.kr/resource/image/cmt/web/common/noArtist03_54.jpg" width="54" height="54" alt="">			<span class="thumb_frame"></span>		</a>	</div>		<div class="re_textarea_wrap">			<div title="리뷰 입력 창 (1000자 이내 입력 가능)" class="textarea" style="min-height: 60px; overflow: hidden;">				<div class="ancm d_cmtpgn_cmt_guide" style="min-height: 54px;"><p>* 게시물의 저작권 등 분쟁, 개인정보 노출로 인한 책임은 작성자 또는 게시자에게 있음을 유의해 주세요.</p></div>				<div class="scroll d_cmtpgn_cmt_edit_area" style="display: none; max-height: 144px;"></div>				<span class="num_board d_cmtpgn_char_count">					<span class="none">현재 입력 글자수</span>					<strong class="d_cmtpgn_char_cnt">0</strong>					/					<span class="none">총 입력 가능 글자수</span>					1000자				</span>			</div>			<div class="wrap_btn">		<div class="wrap_btn_atach_cmt d_cmtpgn_atach_btn_wrapper">			<div class="wrap_btn_attach first_child">		<button type="button" title="음악 첨부" class="btn_atach_cmt sound" aria-haspopup="true" data-control="dropdown"><span class="odd_span">음원</span></button>		<div style="position:absolute; left:0; bottom:-8px; *bottom:-5px; display:none;" class="mt8 d_dropdown d_notpos d_cmtpgn_atach_music_layer"><div class="l_popup_cmt" style="width:456px;">		<div class="cntt">			<h1>음악 첨부</h1>			<div class="wrap_search d_cmtpgn_atach_srch_box">				<input type="text" class="d_cmtpgn_atach_music_srch_hidden" style="display: none;">				<input type="text" title="검색 입력 창 (검색어를 입력해 주세요)" placeholder="검색어를 입력해 주세요" class="text31 d_cmtpgn_atach_music_srch_input" style="width:344px;">				<button type="button" title="검색" class="btn_b31 d_cmtpgn_atach_music_srch_btn"><span class="odd_span"><span class="even_span">검색</span></span></button>			</div>			<div class="search_loading d_cmtpgn_loading" style="display: none;">				<img src="http://image.melon.co.kr/resource/image/cmt/web/common/img_loading.gif" width="40" height="40" alt="">				<p>잠시 기다려 주세요.</p>			</div>			<p class="search_wrong d_cmtpgn_noresult" style="display: none;">검색 된 내용이 없습니다.</p>			<p class="search_wrong d_cmtpgn_fallback" style="display: none;">접속이 지연되고 있습니다.<br>잠시 후 다시 이용해 주시기 바랍니다.<br>이용에 불편을 드려 대단히 죄송합니다.</p>		</div>		<button type="button" title="음악 첨부 닫기" class="btn_close d_cmtpgn_layer_close_btn"><span class="odd_span">닫기</span></button>		<span class="shadow"></span>		<span class="bullet" style="left:9px;"></span>	</div></div>	</div>			<div class="wrap_btn_attach">		<button type="button" title="사진 첨부" class="btn_atach_cmt photo" aria-haspopup="true" data-control="dropdown"><span class="odd_span">사진</span></button>		<div style="position:absolute; left:-29px; bottom:-8px; *bottom:-5px; display:none;" class="mt8 d_dropdown d_notpos d_cmtpgn_atach_image_layer"><div class="l_popup_cmt" style="width:456px;">	<form name="imageUploadForm" method="post" enctype="multipart/form-data" encoding="multipart/form-data" action="http://cmtimgup.melon.com/hs_upload_jsonp_html.php?callback=parent._imageAtachUploadHandler" target="d_cmtpgn_atach_image_frame">		<div class="cntt">			<h1>사진 첨부</h1>			<div class="wrap_search">				<input type="file" title="첨부 이미지 찾아보기" placeholder="파일을 선택해 주세요" class="text31 d_cmtpgn_atach_image_input" style="width:408px;padding:0">			</div>			<div class="wrap_btn_c">				<button type="button" title="사진 첨부 등록 완료" class="btn_emphs_small d_cmtpgn_atach_image_btn"><span class="odd_span"><span class="even_span">등록</span></span></button>				<button type="button" title="사진 첨부 취소" class="btn_emphs02_small d_close"><span class="odd_span"><span class="even_span">취소</span></span></button>			</div>		</div>		<button type="button" title="사진 첨부 닫기" class="btn_close d_cmtpgn_layer_close_btn"><span class="odd_span">닫기</span></button>		<span class="shadow"></span>		<span class="bullet" style="left:38px;"></span>	</form>	</div></div>	</div>			<div class="wrap_btn_attach">		<button type="button" title="영상 첨부" class="btn_atach_cmt video" aria-haspopup="true" data-control="dropdown"><span class="odd_span">영상</span></button>		<div style="position:absolute; left:-59px; bottom:-8px; *bottom:-5px; display:none;" class="mt8 d_dropdown d_notpos d_cmtpgn_atach_video_layer"><div class="l_popup_cmt" style="width:456px;">		<div class="cntt">			<h1>영상 첨부</h1>			<div class="wrap_search d_cmtpgn_atach_srch_box">				<input type="text" class="d_cmtpgn_atach_video_srch_hidden" style="display: none;">				<input type="text" title="검색 입력 창 (검색어를 입력해 주세요)" placeholder="검색어를 입력해 주세요" class="text31 d_cmtpgn_atach_video_srch_input" style="width:344px;">				<button type="button" title="검색" class="btn_b31 d_cmtpgn_atach_video_srch_btn"><span class="odd_span"><span class="even_span">검색</span></span></button>			</div>			<div class="search_loading d_cmtpgn_loading" style="display: none;">				<img src="http://image.melon.co.kr/resource/image/cmt/web/common/img_loading.gif" width="40" height="40" alt="">				<p>잠시 기다려 주세요.</p>			</div>			<p class="search_wrong d_cmtpgn_noresult" style="display: none;">검색 된 내용이 없습니다.</p>			<p class="search_wrong d_cmtpgn_fallback" style="display: none;">접속이 지연되고 있습니다.<br>잠시 후 다시 이용해 주시기 바랍니다.<br>이용에 불편을 드려 대단히 죄송합니다.</p>		</div>		<button type="button" title="영상 첨부 닫기" class="btn_close d_cmtpgn_layer_close_btn"><span class="odd_span">닫기</span></button>		<span class="shadow"></span>		<span class="bullet" style="left:68px;"></span>	</div></div>	</div>			<div class="wrap_btn_attach">		<button type="button" title="링크 첨부" class="btn_atach_cmt link" aria-haspopup="true" data-control="dropdown"><span class="odd_span">링크</span></button>		<div style="position:absolute; left:-89px; bottom:-8px; *bottom:-5px; display:none;" class="mt8 d_dropdown d_notpos d_cmtpgn_atach_link_layer"><div class="l_popup_cmt" style="width:456px;">		<div class="cntt">			<h1>링크 첨부</h1>			<div class="wrap_search type02">				<div class="select_wrap d_cmtpgn_atach_link_option_wrapper" style="display: none;">					<select title="링크 종류 선택" class="d_selectbox" style="width: 60px; display: none;">						<option value="link_video">영상링크</option>											</select><div class="select_type01"><span class="select_box" tabindex="0" title="링크 종류 선택"><span class="sel_r" style="width: 60px;">영상링크</span></span><div class="select_open" style="position: absolute; display: none;" tabindex="0"><ul><li class="on"><a href="#" data-value="link_video" data-text="영상링크">영상링크</a></li></ul></div></div>				</div>				<input type="text" title="링크 첨부 입력 창 (첨부 URL을 입력해 주세요)" placeholder="http://" class="text31 d_cmtpgn_atach_link_input" style="width:408px;">			</div>			<p class="bul_info02 d_atach_video_link_guide">영상링크 첨부는 유튜브 영상 링크만 가능합니다.</p>			<div class="wrap_btn_c">				<button type="button" title="링크 첨부 등록 완료" class="btn_emphs_small d_cmtpgn_atach_link_btn"><span class="odd_span"><span class="even_span">등록</span></span></button>				<button type="button" title="링크 첨부 취소" class="btn_emphs02_small d_close"><span class="odd_span"><span class="even_span">취소</span></span></button>			</div>		</div>		<button type="button" title="링크 첨부 닫기" class="btn_close d_cmtpgn_layer_close_btn"><span class="odd_span">닫기</span></button>		<span class="shadow"></span>		<span class="bullet" style="left:97px;"></span>	</div></div>	</div>		</div>		<span class="wrap_btn_sns d_cmtpgn_sns_btn_wrapper">			<button type="button" title="페이스북에 리뷰 함께 등록" class="btn_cmt_sns facebook d_cmtpgn_syncpost_btn"><span class="odd_span">페이스북</span></button>			<button type="button" title="트위터에 리뷰 함께 등록" class="btn_cmt_sns twitter d_cmtpgn_syncpost_btn"><span class="odd_span">트위터</span></button>											</span>	</div>			<div class="wrap_btn02">		<button type="button" title="글 등록" class="btn_reg d_cmtpgn_cmt_reg_btn"><span class="odd_span"><span class="even_span">등록</span></span></button>	</div>		</div>	</div><div class="clfix mb8" id="d_cmtpgn_cmt_count_wrapper" style=""><div class="fl_left">		<strong class="fc_strong">총 <span class="fc_point d_cmtpgn_srch_cnt">707</span>개</strong>	</div>	<ul class="list_sort fl_right d_cmtpgn_sort_option_wrapper" style="">		<li class="on first_child"><strong title="최신순으로 보기">최신순</strong></li>		<li><a href="#cmtpgn=&amp;pageNo=1&amp;sortType=1&amp;srchType=2&amp;srchWord=" title="추천순으로 보기">추천순</a></li>		<li><a href="#cmtpgn=&amp;pageNo=1&amp;sortType=2&amp;srchType=2&amp;srchWord=" title="답글순으로 보기">답글순</a></li>	</ul></div>		<div class="list_cmt" id="d_cmtpgn_cmt_list_wrapper" style="">			<div class="search_loading d_cmtpgn_loading" style="display: none;">				<img src="http://image.melon.co.kr/resource/image/cmt/web/common/img_loading.gif" width="40" height="40" alt="">				<p>잠시 기다려 주세요.</p>			</div>			<p class="search_wrong d_cmtpgn_nodata" style="display: none;">등록된 글이 없습니다.</p><div class="wrap_check_sys d_cmtpgn_fallback" style="display: none; margin-top: 40px; margin-bottom: 40px;">		<div>			<div class="img_check_sys" style="width:320px"></div>			<div class="msge">				<h3>접속이 지연되고 있습니다.</h3>				<p>잠시 후 다시 이용해 주시기 바랍니다.<br>이용에 불편을 드려 대단히 죄송합니다.</p>			</div>		</div>	</div>		</div>			<div class="paginate" id="d_cmtpgn_paginate_wrapper" style=""><a class="btn_first disabled d_cmtpgn_navigator" title="맨 처음"><span>맨 처음</span></a>	<a class="btn_pre disabled d_cmtpgn_navigator" title="이전"><span>이전</span></a>	<span class="page_num"><strong><span class="none">현재페이지</span>1</strong><a href="#cmtpgn=&amp;pageNo=2&amp;sortType=0&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">2</a><a href="#cmtpgn=&amp;pageNo=3&amp;sortType=0&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">3</a><a href="#cmtpgn=&amp;pageNo=4&amp;sortType=0&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">4</a><a href="#cmtpgn=&amp;pageNo=5&amp;sortType=0&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">5</a><a href="#cmtpgn=&amp;pageNo=6&amp;sortType=0&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">6</a><a href="#cmtpgn=&amp;pageNo=7&amp;sortType=0&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">7</a><a href="#cmtpgn=&amp;pageNo=8&amp;sortType=0&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">8</a><a href="#cmtpgn=&amp;pageNo=9&amp;sortType=0&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">9</a><a href="#cmtpgn=&amp;pageNo=10&amp;sortType=0&amp;srchType=2&amp;srchWord=" class="d_cmtpgn_navigator">10</a></span>	<a href="#cmtpgn=&amp;pageNo=11&amp;sortType=0&amp;srchType=2&amp;srchWord=" class="btn_next d_cmtpgn_navigator" title="다음"><span>다음</span></a>	<a href="#cmtpgn=&amp;pageNo=71&amp;sortType=0&amp;srchType=2&amp;srchWord=" class="btn_last d_cmtpgn_navigator" title="맨 끝"><span>맨 끝</span></a></div>		<div class="wrap_search" id="d_cmtpgn_srch_wrapper" style=""><div class="select_wrap d_cmtpgn_srch_option_wrapper">		<select title="검색 방법 선택" class="d_selectbox" style="width: 55px; display: none;" data-class="select_type02">			<option value="2" selected="selected">내용</option>			<option value="1">작성자</option>		</select><div class="select_type02"><span class="select_box" tabindex="0" title="검색 방법 선택"><span class="sel_r" style="width: 55px;">내용</span></span><div class="select_open" style="position: absolute; display: none;" tabindex="0"><ul><li class="on"><a href="#" data-value="2" data-text="내용">내용</a></li><li><a href="#" data-value="1" data-text="작성자">작성자</a></li></ul></div></div>	</div>	<input type="text" title="검색 입력 창 (검색어를 입력해 주세요)" placeholder="검색어를 입력해 주세요" class="input_text d_cmtpgn_srch_input" style="width:184px;">	<button type="button" title="검색" class="btn_base02 d_cmtpgn_cmt_srch_btn" style="
    padding-bottom: 10px;
"><span class="odd_span"><span class="even_span">검색</span></span></button></div><textarea id="d_cmtpgn_dummy_textarea" cols="30" rows="20" style="width:652px; height:0px; margin:0; padding:0; border:0;"></textarea><form id="d_cmtpgn_dummy_form" name="d_cmtpgn_dummy_form"></form></div>
					</div>
					<!-- //리뷰  -->
					<!-- 연관 앨범  -->
					
					<!-- //연관 앨범  -->
					<!-- 수록 곡이 포함된 DJ 플레이리스트  -->
					
					<div class="section_playlist">
						
						
					</div>
					
					<!-- //수록 곡이 포함된 DJ 플레이리스트  -->
					<!-- 좋아요 한 사람  -->
					
					
					
					<!-- //좋아요 한 사람  -->
				</div>
<!-- C. 전체 공통 스크립트 -->

	<script type="text/javascript">
		var httpWww = "http://www.melon.com";
		var httpsWww = "https://www.melon.com";
		var POC_ID = "WP10";
	</script>

	<script type="text/javascript" src="/resource/script/web/common/melonweb_openlib.js"></script>
	<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/2g/e/1y2hqs1ftr1.js"></script> 
	<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/6e/p/up2qiygqvd.js"></script> 
	<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/nw/n/1edc7lk2xux.js"></script> 
	<script type="text/javascript" src="/resource/script/web/cm/common/melonweb_cm.js"></script>
	<script type="text/javascript" src="/resource/script/web/chart/json2.js"></script>
	<script type="text/javascript" src="http://log.melon.com/mlog.js"></script>

	<script type="text/javascript">
		var melon = MELON.WEBSVC.POC;

		document.domain="melon.com";
		
		//pocId 쿠키설정 실행
		try {
			melon.setPocId();
		} catch (e){}
	</script>
	
	<script type="text/javascript" src="/resource/script/web/common/socket.io.js"></script>
<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/fl/7/uot4m6bho9.js"></script>
<!-- D. 해당 메뉴 관련 공통 스크립트 -->
<script type="text/javascript" src="http://static.melon.co.kr/static/web/resource/script/w1/ry/z/13686ujiqt.js"></script>

<!-- D. 화면 내부 전용 스크립트 -->
<script type="text/javascript">
$(function() {
	"use strict";
	var $doc = $(document),
		WEBSVC = MELON.WEBSVC,
		PBPGN = MELON.PBPGN,
		addComma = WEBSVC.number.addComma;

	/* ********************************************************************************
	 * 앨범이미지 확대
	 ******************************************************************************** */
	$("a.photoDetailThumb").click(function(e) {
		e.preventDefault();

		var $img = $(this).children('img');
		//window.open('http://image.melon.co.kr' + $img.attr('org_src'), "이미지크게보기", "height=" + screen.height + ", width=" + screen.width + ", toolbar=no, menubar=no, scrollbars=no, resizable=yes, fullscreen=no");
		MELON.WEBSVC.openPopup('http://image.melon.co.kr' + $img.attr('org_src'), screen.width, screen.height, {
			'scrollbars':'no',
			'toolbar' : 'no',
			'menubar' : 'no',
			'resizable' : 'yes',
			'fullscreen' : 'no'
		}, 'center', '');
	});
	// 평점 팝업  Show /hide SEt
	var checkPopup = true;
	if( "" == 'Y') {
		checkPopup = false;
	}
	$('div.stPointLayer').on('beforeshow', function(e) {
		if( !checkPopup ) { // 만약 드롭다운이 띄워지면 안되는 조건일 때,
			alert("이미 참여하셨습니다.");
			e.preventDefault(); // 이 부분을 넣어주면 된다.
			return false;
		}
	});
	 // 댓글 카운트 URL SET
	 // 리뷰 영역을 확인하여 영역보다 길경우 더보기 노출 및 영역 줄임
	 melon.show.moreButton('d_video_summary', 203);

	/* ********************************************************************************
	 * 앨범평점
	 ******************************************************************************** */
	$("#d_starRate").starRating().on('changedrate', function(e, val) {
		setTimeout(function(){  // IE 렌더링 버그 fixed
			$('#d_rate').html(val.rate.toFixed(1));
		}, 0);
	}).on('click', '[data-role=ok]', function(){
		if(!MELON.WEBSVC.POC.login.isMelonLogin()) {
			MELON.WEBSVC.POC.login.loginPopupLayerd('');
			return;
		}
		if( "" == 'Y') {
			alert("이미 참여하셨습니다.");
			return;
		}
		// 서버 로직
		$.ajax({
			type:"post",
			url: '/album/insertAlbumGrade.json',
			dataType:"json",
			async:true,
			data : {
				albumId: '2646429',
				evalScore	: $('#d_rate').html()
			},
			success:function(obj){
				if(obj.result.RESULT == '1') {
					alert("평점을 등록 했습니다.");
					var vTempCount = MELON.WEBSVC.number.addComma(obj.result.PTCPNMPRCO);
					$("#gradCountLayer").html(vTempCount+"명");
					var totalAvgScore = obj.result.TOTAVRGSCORE;
					var roundScore = parseFloat(totalAvgScore).toFixed(1);
					$("#gradPointLayer").html(roundScore);
					var viewValue =(obj.result.TOTAVRGSCORE)*20;
					$("#contt_evalscore01_view").attr("style", "width:"+viewValue+"%");
					checkPopup = false;
				} else if(obj.result.RESULT == '2'){
					alert("이미 참여하셨습니다.");
				} else {
					alert("평정 등록중 오류가  발생했습니다");
				}
			},
			error: function(request,error) {
				alert("평점 등록중 오류가  발생했습니다");
			}
		});
		$("#d_starRate").hideLayer();
	});

	// 뮤직비디오 탭
	$('.section_mv').toggleSlider({
		type:'count-on',
		selectors: {
			tabs: '>div.wrap_page>div.page>span.wrap_btn>a',
			contents: '>div.wrap_list_mv>ul',
			nowpages: '>div.wrap_page>div.page>span.page_num>strong',
			totalpages: '>div.wrap_page>div.page>span.page_num>span'
		}
	});

	// 시리즈앨범 탭
	$('div.section_seris').ajaxToggle({
		type:'count-on',
		selectors: {
			// 버튼 영역 [d_btn]은 공통이기 때문에 특정 클래스를 준다.
			tabs: 'a.relationBtnTmp',
			// 현재 페이지 DP 영역
			nowpages: 'strong.d_now_page',
			// 토탈 페이지 DP 영역
			totalpages: 'span.d_total_page',
			// AJAX 호출후 InnerHtml 해줘야할 영역
			contents: 'div.wrap_list_seris'
		}
	});

	// 좋아요한 사람
	$('div.section_intst').ajaxToggle({
		type:'count-on',
		selectors: {
			// 버튼 영역 [d_btn]은 공통이기 때문에 특정 클래스를 준다.
			tabs: 'a.withLikeBtnTmp',
			// 현재 페이지 DP 영역
			nowpages: 'strong.d_now_page',
			// 토탈 페이지 DP 영역
			totalpages: 'span.d_total_page',
			// AJAX 호출후 InnerHtml 해줘야할 영역
			contents: 'div.wrap_list_intst',
			orderlayer : 'a.orderClass' // 정렬 Layer
		}
	});
	// 좋아요한 사람 정렬 클릭
	$('a.orderClass').on('click', function(e){
		$('.list_sort').find(">li").each(function() {
			$(this).removeClass("on");
		})
		$(this).parent().addClass("on");
		var inputId = this.id;
		$("a.withLikeBtnTmp").each(function() {
			$(this).attr("data-orderby-type",inputId);
		});
	});
	/******************SNS *****************/
	 //페이스북
    $("#albumFacebook").click(function(){
    	$.albumName = "솔라감성 Part.1";
		$.artistName = "솔라 (마마무)";
		$.imgUrl = $("#albumImgArea img").attr("src");
		$.menuId = $(this).attr("data-menuId");
		melon.sns.facebook({
			type 		: "alb",
			contsId 	: "2646429",
			albumName	: $.albumName,
			artistName  : $.artistName,
			imgUrl      : $.imgUrl,
			menuId		: $.menuId
		});
    });
    $("#albumTwitter").click(function(){
		$.albumName = "솔라감성 Part.1";
		$.artistName = "솔라 (마마무)";
		$.menuId = $(this).attr("data-menuId");
		melon.sns.twitter({
			type 		: "alb",
			contsId 	: "2646429",
			albumName	: $.albumName,
			artistName  : $.artistName,
			menuId		: $.menuId
		});
	});


 	// Banner Info
	var serverTime = "2015:10:23 11:23:24"; 	// 시간은 서버에서 찍어주세요.(yyyy:MM:dd hh:mm:ss)
	$(document).on('limitpopup', function( e, cookieId ) {
		if ( cookieId === 'linebanner01' ) {
			$('div.line_ban').show();
			$('div.line_ban').timeLimitSet({cookieType:'array',timeLocation:'local',timeType:'dayafter',selectors:{closebtn:'>button.d_fadeout', checkbox:''}});
		}
	});
 	// 바인드 후에 호출 해야함
	PBPGN.TimeLimitPopup.init({ cookieType:'array', cookieId:'linebanner01', limitType:'day', serverTime:serverTime });

	$('.btn_ver').on('click', function(){
		if('0' == "1"){
			melon.link.goAlbumDetail('');
		} else {
			WEBSVC.openPopup('/album/popup/otherAlbumPopup.htm?albumId=2646429', 834, 640);
		}
	});

	// 북클릿 소개 배너
	var bookletBnr = WEBSVC.Cookie.get('commerceBanner2');
	if (!bookletBnr) {
		$('.booklet_bnr').show();
	};
	$('.booklet_bnr .d_limit_btn').click(function() {
		var expiresDay = new Date();
		expiresDay.setDate(expiresDay.getDate() + 100000);
		$('.booklet_bnr').hide();
		WEBSVC.Cookie.set('commerceBanner2', true, {expires : expiresDay});
	});

	// 상단의 좋아요..
	$('div.like_area button.btn_like_b').on('click', function(){
		// 131114_수정
		var $btn = $(this),
			albumNo = $btn.attr('data-album-no'),
			menuId = $btn.attr('data-album-menuId'),
			title = $btn.attr('title').split(' 좋아요'),
			isLike = $btn.hasClass('on'), doLike = !isLike,
			addComma = WEBSVC.number.addComma,
			$target = (function(){
				var targetId = $btn.attr('data-target-id');
				if(!targetId) { return $btn; }
				targetId = targetId.substr(0, 1) === '#' ? targetId : '#' + targetId;
				return $(targetId);
			})(),
			defer, event;

		$btn.trigger((event = $.Event('likebefore')), [albumNo, doLike]);
		if(event.isDefaultPrevented()){ return; }

		if(isLike) {
			WEBSVC.alert2('좋아요 취소되었습니다.',{opener :$btn, removeOnClose:true});
			defer = WEBSVC.AlbumList.dislike(albumNo,menuId)
		} else {
			defer = WEBSVC.AlbumList.like(albumNo,menuId);
		}

		defer.done(function(json) {

			if(json.result === true) {
				$btn.trigger((event = $.Event('likechanged')), [albumNo, title[0], doLike, json.data.SUMMCNT.toString().replace(/(\d)(?=(?:\d{3})+$)/g, "$1,")]);
				if(event.isDefaultPrevented()){ return; }

				$btn[doLike ? 'addClass' : 'removeClass']('on').attr('title', title[0] + (doLike ? ' 좋아요 취소' : ' 좋아요'));

				$target.html(json.data.SUMMCNT.toString().replace(/(\d)(?=(?:\d{3})+$)/g, "$1,"));
				doLike && WEBSVC.alert2('좋아요 반영되었습니다.',{opener :$btn, removeOnClose:true});
				loadTopLike();
				loadBottomLike();
				loadLikeUserTotCount();
			} else {
				alert(json.errorMessage);
			}
		}).fail(function(msg){
			alert(msg);
		});
	});

	function loadTopLike() {
		$.ajax({
			url: '/album/albumTopLikeUser.htm',
			data: {
				contsId : '2646429',
				viewPage : '1'
			},
			async : false
		}).done(function(html) {
			$('#albumTopLikeUserLayer').html(html);
		});
	}

	function loadBottomLike() {
		$.ajax({
			url: '/album/withLikeUser.htm',
			data: {
				contsId : '2646429',
				viewPage : '1'
			},
			async : false
		}).done(function(html) {
			$('.wrap_list_intst').html(html);
		});
	}
	function loadLikeUserTotCount() {
		$.ajax({
			url: '/album/withLikeUser.json',
			dataType:"json",
			data: {
				contsId : '2646429',
				viewPage : '1'
			},
			async : false
		}).done(function(json) {

			if(json.withLikeListTotCountPg == 0)
				$("#bottomListUserLayer").hide();
			else
				$("#bottomListUserLayer").show();

			$("#withLikeBtnTmp1").attr("data-limit-count",json.withLikeListTotCountPg);
			$("#withLikeBtnTmp2").attr("data-limit-count",json.withLikeListTotCountPg);
			$('div.section_intst').ajaxToggle({
				type:'count-on',
				selectors: {
					// 버튼 영역 [d_btn]은 공통이기 때문에 특정 클래스를 준다.
					tabs: 'a.withLikeBtnTmp',
					// 현재 페이지 DP 영역
					nowpages: 'strong.d_now_page',
					// 토탈 페이지 DP 영역
					totalpages: 'span.d_total_page',
					// AJAX 호출후 InnerHtml 해줘야할 영역
					contents: 'div.wrap_list_intst',
					orderlayer : 'a.orderClass' // 정렬 Layer
				}
			});
		});
	}

});
function goArtist(obj){
	location.href="/artist/detail.htm?artistId="+obj;
}
function goReview(){
	var position = $("#section_rvew").offset();
	$("html, body").animate({scrollTop : position.top}, 0);
}
</script>
<script type="text/javascript">document.domain='melon.com';</script>
<!-- 플러그인 스크립트 -->
<script type="text/javascript" src=" http://cmt.melon.com/cmt/plugin/release/melonweb_cmtpgn_pc_sumry_type.js"></script>
			<!-- //contents -->
		</div>
	</div>
	<!-- footer -->
	<div id="footer" class="my_fold">
		<div class="btn_top_wrap" style="position: fixed; display: none;">
			<a href="#skip_nav" class="btn_top" title="맨 위로 가기" style=""><span>맨 위로 가기</span></a>
		</div>

		
		
		
		
		<!-- 두 줄일때 add 클래스 추가 -->
		<!-- <div class="ban add">
			<a href="http://www.melon.com/cds/event/web/event_first.htm?SUB=FB" title="2012 대한민국 퍼스트브랜드 대상
"><img height="32" width="110" src="http://cdnimg.melon.co.kr/resource/image/web/common/ban_footer01.png" alt="2012 대한민국 퍼스트브랜드 대상"/></a><a href="http://www.melon.com/cds/event/web/event_kbpi.htm?SUB=FB" title="한국능률협회컨설팅 2012 브랜드 파워 1위
"><img height="32" width="122" src="http://cdnimg.melon.co.kr/resource/image/web/common/ban_footer02.png" alt="한국능률협회컨설팅 2012 브랜드 파워 1위"/></a>
		</div> -->
		<a href="#" class="btn_top" title="맨 위로 가기" style="display: none;">맨 위로 가기</a>
		<!--140602 추가 lyr-->
		<div id="btnMobileWeb" class="mobile_btn_wrap" style="display:none;">
			<p>접속하신 단말/브라우저에서는 멜론 서비스의 사용이 일부 제한될 수 있습니다. 양해부탁드립니다.</p>
			<a href="javascript:;" onclick="goMelonTPage();" class="btn btn_big" title="모바일 웹 버전">
				<span class="odd_span">
					<span class="even_span">모바일 웹 버전</span>
				</span>
			</a>
		</div>
		<script type="text/javascript">

			$(function() {
				// 모바일(t.com)에서 넘어온 경우 - 모바일(t.com) 서비스 종료로 삭제
/*
				var fromMobileWeb = getCookie("D");

				if(fromMobileWeb != null && fromMobileWeb.indexOf('T') > -1){
					$("#btnMobileWeb").css("display", "block");
				}
*/
				// 엣지 브라우저이고 해당 팝업이 뜬 적이 없는 경우 체크하여 팝업을 띄운다.
				var isEdge = (navigator.userAgent.indexOf("Edge") > 0);
				var edgeCheckYN = getCookie("EDGE_CHECK") != 'Y';
				
				if(isEdge && edgeCheckYN){
					window.open('http://www.melon.com/error_page/error_edgeTypeA.html','edgeCheck','scrollbars=no, resizable=no, location=no, width=560, height=498');
				}
				
				// 타블렛이고 해당 팝업이 뜬 적이 없는 경우 체크하여 팝업을 띄운다.
				var tabletCheckYN = getCookie("TABLET_CHECK") != 'Y';

				if(melon.isTablet() && tabletCheckYN){
					window.open('http://www.melon.com/error_page/error_tabletTypeA.html','tabletPopTypeA','scrollbars=no, resizable=no, location=no, width=560, height=483');
				}
				
				// 해당 쿠키가 존재하면 쿠키 삭제
				if(getCookie("CHECK_POP") != ''){
					// 체크 후 해당 쿠키는 제거
					var expireDate = new Date();
					expireDate.setDate(expireDate.getDate()-1);
					document.cookie = "CHECK_POP=;path=/;expires="+expireDate.toGMTString()+";domain=.melon.com";
				}
			});

			function goMelonTPage(){
				// 쿠키 삭제 후 t.com으로 페이지 이동
				var expireDate = new Date();
				expireDate.setDate(expireDate.getDate()-1);
				document.cookie = "D=;path=/;expires="+expireDate.toGMTString()+";domain=.melon.com";

				location.href= 'http://t.melon.com';
			}
		</script>
		<!--//140602 추가 lyr-->
	</div>
	<!-- //footer -->
</div>

	
	<!--  요기까징 -->
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