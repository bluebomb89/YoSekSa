<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Flooring a Interior category Flat Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="yoSeksa/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/component.css" rel="stylesheet" type="text/css"  />
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="yoSeksa/css/font-awesome.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/bootstrapTheme.css" rel="stylesheet">
<link href="yoSeksa/css/style1.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/custom.css" rel="stylesheet">
<link href="yoSeksa/css/owl.carousel.css" rel="stylesheet">
<link href="yoSeksa/css/owl.theme.css" rel="stylesheet">
<link href="yoSeksa/css/index.css" rel="stylesheet">
<!-- script -->

<script src="yoSeksa/js/jquery-2.1.4.min.js"></script>
<script src="yoSeksa/js/jquery.cycle.all.js"></script>

<script src="yoSeksa/js/owl.carousel.js"></script>
<!--/animated-css-->
<script src="yoSeksa/js/bootstrap.js"></script>
<script src="yoSeksa/js/move-top.js"></script>
<script src="yoSeksa/js/easing.js"></script>
<script src="yoSeksa/js/responsiveslides.min.js"></script>
<!--/script-->
<script type="text/javascript">
   jQuery(document).ready(function($) {
      $(".scroll").click(function(event){   
         event.preventDefault();
         $('html,body').animate({scrollTop:$(this.hash).offset().top},950);
      });
       $('.slideshow').cycle({
         fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
      });
   });
   $(window).load(function(){
        $('body').addClass('loaded');
        $('h1').addClass('letter-spacing')
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
  	/* 시작시 ajax시작 */
 idcheck1(); 
   });
</script>
<script>
$(document).ready(function() {
    
     var owl = $("#owl-demo");
    
     owl.owlCarousel({
         items : 5, //10 items above 1000px browser width
         itemsDesktop : [1000,5], //5 items between 1000px and 901px
         itemsDesktopSmall : [900,3], // betweem 900px and 601px
         itemsTablet: [600,2], //2 items between 600 and 0
         itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
     });
    
     // Custom Navigation Events
     $(".next").click(function(){
       owl.trigger('owl.next');
     })
     $(".prev").click(function(){
       owl.trigger('owl.prev');
     })
     $("#owl-demo").mouseover(function(){
       owl.trigger('owl.stop');
     })
     $("#owl-demo").mouseout(function(){
        owl.trigger('owl.play',3500);
     })
     $("#startmain").click(function(){
           owl.trigger('owl.play',3500);
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

<!--script-->
<!-- ajax 코딩 -->
<script type="text/javascript">
var httpRequest=null;
function createHttpRequest(){
	if(window.ActiveXObject){ //IE 6.0 이상
		return new ActiveXObject("Msxml2.XMLHTTP");
		//Microsoft.XMLHTTP 6.0이하일때
	}else if(window.XMLHttpRequest){ // 크롬 , ff
		return new XMLHttpRequest();
	}else{ // 호환이 안될때
		return null; //지원하지 않는 브라우저
	}
}
function sendMessage(method,param,url,callback){
	// 서버 연결 DWR,DOJO
	httpRequest=createHttpRequest();
	httpRequest.open(method,url+param,true);
	// true: 비동기 false:동기
	httpRequest.onreadystatechange=callback;
	httpRequest.send(null);
}
function idcheck_result(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var res=httpRequest.responseText;
			$('#mangae-view').html(res);
			// 보여주면서 div에 값저장
			//alert(res);
		}		
	}
}
function idcheck1(){
	var param=$('#mangae-search').val();
	var mspage=$('#btn1').text();
	param="?mangae-search="+param+"&mspage="+mspage;
	sendMessage('GET', param, "recipe_search.sek", idcheck_result);
}
function idcheck2(){
	var param=$('#mangae-search').val();
	var mspage=$('#btn2').text();
	param="?mangae-search="+param+"&mspage="+mspage;
	sendMessage('GET', param, "recipe_search.sek", idcheck_result);
}
function idcheck3(){
	var param=$('#mangae-search').val();
	var mspage=$('#btn3').text();
	param="?mangae-search="+param+"&mspage="+mspage;
	sendMessage('GET', param, "recipe_search.sek", idcheck_result);
}
function idcheck4(){
	var param=$('#mangae-search').val();
	var mspage=$('#btn4').text();
	param="?mangae-search="+param+"&mspage="+mspage;
	sendMessage('GET', param, "recipe_search.sek", idcheck_result);
}
function idcheck5(){
	var param=$('#mangae-search').val();
	var mspage=$('#btn5').text();
	param="?mangae-search="+param+"&mspage="+mspage;
	sendMessage('GET', param, "recipe_search.sek", idcheck_result);
}
function notice_Insert(){
	$('body').removeClass('modal-open');
	var notice_sub=$('#notice_sub').val();
	var notice_content=$('#notice_content').val();
	var param="?notice_sub="+notice_sub+"&notice_content="+notice_content;
	sendMessage('GET', param, "notice_insert.sek", notice_result);
}
function notice_result(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var res=httpRequest.responseText;
			$('#services').html(res);
			// 보여주면서 div에 값저장
		}		
	}
}
</script>
</head>
<body  class="cbp-spmenu-push">
      <!--bottom-->
<!---->
<!--  style.css안에 이미지 추가해서 div class이름에 넣어라. 이미지는 전체적으로 style.css안에. 
     
.bannersearch{
   background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
   background-size:100% 100%;
   min-height:895px;
}

css안에 이미지 이런식으로 추가하고 div안에 클래스명 넣어주면 된다.
-->
<!-- 메인화면 -->
<header class="masthead">
<div class="theTron animated panel-section dark">
  <div id="kb-bg" class="activated-KB"></div>
  <h1 class="">Well Come <span>To</span> Yoseksa</div>

</header>
<!-- 서비스눌렀을때 검색화면이동 -->
      <div id="section1" class="slider" style="margin-bottom: 14px;">
            <form class="yoseksa-search"role="search">
               <div class="input-group">
                  <span class="twitter-typeahead">
                     <input type="text" class="yoseksa-search-input" id="txtSearch" placeholder="Search 350,000+ Recipes">
                  </span>
                  <span class="input-group-btn">
                     <button class="btn btn-default btnstateless search-input-button" type="button" id="btnGo" data-loading-text="..." style="background-color: white;"></button>
                  </span>
               </div>
            </form>
              <div id="mangae" class="mangae-search">
               <div class="input-group">
                  <span class="twitter-typeahead">
                     <input type="text" name="mangae-search" class="yoseksa-search-input" id="mangae-search" placeholder="만개의 레시피 검색">
                  </span>
                  <div class="input-group-btn">
              		<a class="scroll" href="#mangae-show" id="recipe-search"  onclick="idcheck1()">
              			<button class="btn btn-default btnstateless search-input-button" type="button" id="btnMangae" style="background-color: white;"></button>
              		</a>
                  </div>
               </div>
            </div>
         <div class="callbacks_container" style="padding-left: 15px; padding-right: 15px;">
           <ul class="rslides" id="slider">
            <div class="slid banner1">              
              <div class="caption">
               </div>
            </div>
            <div class="slid banner2">           
               <div class="caption">
               </div>
            </div>
            <div class="slid banner3">              
              <div class="caption">
               </div>
            </div>
            <div class="slid banner4">              
              <div class="caption">
               </div>
            </div>
         </ul>
        </div>
        <div id="owl-demo" class="owl-carousel owl-theme">
         <div class="item col-sm-3 col-md-3">
            <div class="thumbnail">
               <img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
               <div class="caption">
                  <h3>Categori 1</h3>
               </div>
            </div>
         </div>
         <div class="item col-sm-3 col-md-3">
            <div class="thumbnail">
               <img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
               <div class="caption">
                  <h3>Categori 2</h3>
               </div>
            </div>
         </div>
         <div class="item col-sm-3 col-md-3">
            <div class="thumbnail">
               <img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
               <div class="caption">
                  <h3>Categori 3</h3>
               </div>
            </div>
         </div>
         <div class="item col-sm-3 col-md-3">
            <div class="thumbnail">
               <img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
               <div class="caption">
                  <h3>Categori 4</h3>
               </div>
            </div>
         </div>
         <div class="item col-sm-3 col-md-3">
            <div class="thumbnail">
               <img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
               <div class="caption">
                  <h3>Categori 5</h3>
               </div>
            </div>
         </div>
         <div class="item col-sm-3 col-md-3">
            <div class="thumbnail">
               <img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
               <div class="caption">
                  <h3>Categori 6</h3>
               </div>
            </div>
         </div>
         <div class="item col-sm-3 col-md-3">
            <div class="thumbnail">
               <img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
               <div class="caption">
                  <h3>Categori 7</h3>
               </div>
            </div>
         </div>
         <div class="item col-sm-3 col-md-3">
            <div class="thumbnail">
               <img src="http://images.bigoven.com/image/upload/t_recipe-256/crispy-chicken-sandwich-250c6c.jpg" alt="...">
               <div class="caption">
                  <h3>Categori 8</h3>
               </div>
            </div>
            </div>   
         </div>
      </div>
<!-- services -->
 <!-- testimonial -->
<div id="mangae-show" style="padding-top: 2px;">
	<div class="testimonial" id="mangae-view" style="padding-bottom: 0px;">
		<%-- <jsp:include page="${mangae }"></jsp:include> --%>
	</div>
</div>
<!-- 여기에 공지사항 추가 -->
<div id="services"  style="padding-top: 51px">
	<jsp:include page="${ntpage }"></jsp:include>
</div>
<!-- projects -->
<!-- footer -->
<!---->



</body>
</html>