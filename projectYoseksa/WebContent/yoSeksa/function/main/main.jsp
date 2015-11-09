<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link href="yoSeksa/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/component.css" rel="stylesheet" type="text/css"  />
<link rel="stylesheet" href="yoSeksa/css/list/onepage_201401.css" type="text/css">
<link rel="stylesheet" href="yoSeksa/css/list/app.css?ver=4.0.8">
<link href="yoSeksa/css/list/loginform.css" type="text/css" rel="stylesheet" media="all">


<!-- script -->
<script type="text/javascript">
$(function(){
   $('#login_Btn').click(function(){
      var member_id=$('#member_id').val();
      if(member_id=="")
      {
         $('#member_id').focus();
         return;
      }
      var member_pw=$('#member_pw').val();
      if(member_pw=="")
      {
         $('#member_pw').focus();
         return;
      }
      $('#login_frm').submit();
   });
   
    $('#logout_Btn').click(function(){
      $('#logout_frm').submit();
   });
});
</script>
<!-- script -->

<!-- 비회원 사용불가 팝업 -->
<script>
function button_event(){
if (confirm("회원만 사용 가능한 기능입니다")== true)
			{
    			return "yoSeksa/member/login.jsp";
			}

else		
			{   
    		
				return "yoSeksa/main/main.jsp";
			}
}
//-->
</script>
 <!-- 팝업 끝 -->
 
 <!-- 회원가입창 모달 -->
 <script type="text/javascript">
$(function(){
	$("#popbutton").click(function(){
		$('div.modal').modal({remote : 'layer.html'});
	})
})
</script>
<!-- 가입모달 끝 -->

</head>

<body  class="cbp-spmenu-push">
      <!--bottom-->
        <section class="button">
               <button id="showLeftPush"><img src="yoSeksa/images/menu-icon.png" alt=""></button>
         </section>
         
   
         
         
         <!-- 꽁 -->
         
        

         <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
       	   <h3>menu</h3>
       	  <nav id="side-nav" style=" margin-top: 240px;">
			<div class="search-wrap">
			</div>
				<ul class="nav">
				

				
					
								<!-- <img src="yoSeksa/images/Login.gif" style=" width: 30px;"> -->
							<!-- http://localhost:8080/projectYoseksa/yoSeksa/function/member/login.jsp -->
						<li class="login">
							<a href="yoSeksa/function/member/login.jsp" title="로그인"><img src="yoSeksa/images/Login.gif" onmouseover="this.src='yoSeksa/images/Login2.gif';" onmouseout="this.src='yoSeksa/images/Login.gif';" style="width: 30px;"></a>
						</li>
		
						 						
												<li class="fun">
						<a href="/mypage/heart/product.asp" title="즐겨찾는 음식"><img src="yoSeksa/images/fun.gif" onmouseover="this.src='yoSeksa/images/fun2.gif';" onmouseout="this.src='yoSeksa/images/fun.gif';" style=" width: 30px;" value="삭제하기" onclick="button_event();"></a>
						</li>
								
						<li class="cart">
						<a href="http://localhost:8080/projectYoseksa/diary.sek" title="일정 관리"><img src="yoSeksa/images/calen.gif" onmouseover="this.src='yoSeksa/images/calen2.gif';" onmouseout="this.src='yoSeksa/images/calen.gif';" style=" width: 30px;"></a>
						</li>
						
						<li class="cart">
						<a href="http://localhost:8080/projectYoseksa/recipe.sek" title="레시피"><img src="yoSeksa/images/recipe.gif" onmouseover="this.src='yoSeksa/images/recipe2.gif';" onmouseout="this.src='yoSeksa/images/recipe.gif';" style="width: 30px;"></a>
						</li>
				</ul>
		</nav>
         <!-- <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left cbp-spmenu-open" id="cbp-spmenu-s1" style=" width: 200px;"> -->
         <!-- 꽁 -->
         
         
         <!-- �쇱そ���⑥�� ���� 踰��쇱�� �대┃������ ���ㅻ�� 留���or���깃��� 吏�������怨� -->
         <p>

           </nav>
      <!-- 왼쪽상단에 있는 버튼을 클릭했을때 나오는 링크or속성값을 지정하는곳 -->
      <!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
       <script src="yoSeksa/js/classie.js"></script>
<!-- 타이틀 메뉴바 -->
<div class="navbar navbar-inverse navbar-static-top affix-top" id="nav">
      <div class="container">
         <nav class="navbar navbar-default">
            <div class="container-fluid">
               <!-- Collect the nav links, forms, and other content for toggling -->
               <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right">
                     <li class="active"><a href="yoseksa.sek">Home</a></li>
                     <li><a class="scroll" id=startmain href="#section1">검색메인</a></li>
                     <li><a class="scroll" href="#services">공지</a></li>
                     <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">자유게시판<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                           <li><a href="freeboard.sek">about1</a></li>
                           <li><a href="freeboard_list.sek">about2</a></li>
                           <li><a href="recipe_content.sek">레시피 내용보기</a></li>           
                        </ul>
                     </li>
                     <li><a href="diary.sek">캘린더</a></li>
                     <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                           <li><a href="recipe.sek">gallery1</a></li>
                           <li><a href="qna.sek">Q&A</a></li>
                           <li><a href="join.sek">회원가입</a></li>           
                        </ul>
                     </li>
                  </ul>         
               </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
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
<jsp:include page="${jsp }"></jsp:include>
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
      $().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<script>
         var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
            showLeftPush = document.getElementById( 'showLeftPush' ),
            showRightPush = document.getElementById( 'showRightPush' ),
            body = document.body;

         showLeftPush.onclick = function() {
            classie.toggle( this, 'active' );
            classie.toggle( body, 'cbp-spmenu-push-toright' );
            classie.toggle( menuLeft, 'cbp-spmenu-open' );
            disableOther( 'showLeftPush' );
         };

         function disableOther( button ) {
            if( button !== 'showLeftPush' ) {
               classie.toggle( showLeftPush, 'disabled' );
            }
            if( button !== 'showRightPush' ) {
               classie.toggle( showRightPush, 'disabled' );
            }
         }
</script>
<a href="#to-top" id="toTop" style="display: block;right: 10px;"><span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- 자바 스크립트 호출-->
<!----> 
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <div class="footer-color-wrap">
		<footer class="content-info container" role="contentinfo"
			style="left: 115px;">
			<div class="row">
				<div class="col-lg-12">
					<div class="howmuch">
						<li id="text-4" class="widget widget_text">
							<h3>About Us</h3> <img
							src="http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/separator.png"
							align="bottom"
							style="margin-bottom: 20px; margin-left: 140px;">
							<div class="textwidget">
								YosekYosekYosekYosekYosekYosekYosekYosek<em>
								YosekYosekYosekYosekYosekYosekYosekYosek</em>
								YosekYosekYosekYosekYosekYosekYosekYosek<br>
								YosekYosekYosekYosekYosekYosekYosekYosek
							</div>
						</li>
					</div>
					<div class="gotaquestion">
						<a class="anchorfix" id="questions"></a>
						<li id="text-5" class="widget widget_text">
							<h3>Get in Touch</h3> 
							<img src="http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/separator.png" align="bottom" style="margin-bottom: 20px; margin-left: 120px;">
							<div class="textwidget">
								
								<div>
									<img src="http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/phone.png">
									
									
											&nbsp;Seoul: +00 (010) 0000 0000

											<div style="margin-left: 45.7px;">Sinchon: +00 (010) 0000 0000</div>
								</div>	
								
								<div style="margin-top: 10px;">
								<img src="http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/bigemail.png"> 
									<a href="mailto:yo@sek.sa" style="margin-left: 5px;">Yo@sek.sa</a>
								</div>
							</div>
						</li>
					</div>					
				</div>
				<div class="social-links">
					<!--<a target="_blank" href="http://www.facebook.com/InfinVision"><img width="29" height="60" alt="facebook" src=" http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/f-social-facebook.png" ></a>
			<a target="_blank" href="http://twitter.com/infinvision"><img width="29" height="60" alt="twitter" src="http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/f-social-twitter.png"></a>
			<a target="_blank" href="http://www.linkedin.com/company/infinvision"><img width="29" height="60" alt="linkedin" src="http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/f-social-linkedin.png"></a>
			<a target="_blank" href="https://plus.google.com/+Infinvision"><img width="29" height="60" alt="googleplus" src="http://infinvision.com/wp-content/themes/infinvisionv2/assets/img/f-social-google.png"></a>-->
				</div>
			</div>
	</footer>
	</div>
	<div class="blacky-back" style="padding-bottom: 130px;">
		<div class="f-menu">
			<ul id="menu-primary-navigation-1" class="menu">
				<li class="active menu-home"><a href="/">Home</a></li>
				<li class="menu-divider">/</li>
				<li class="menu-projects"><a href="/projects/">Projects</a></li>
				<li class="menu-divider">/</li>
				<li class="menu-workshops-briefings"><a href="#">Workshops
						&amp; Briefings</a></li>
				<li class="menu-divider">/</li>
				<li class="menu-about"><a href="/about/">About</a></li>
				<li class="menu-divider">/</li>
				<li class="menu-ideas"><a href="/blog/">Ideas</a></li>
				<li class="menu-divider">/</li>

			</ul>
		</div>
		<div class="f-copy">© Copyright 2014 InfinVision Ltd. All rights reserved.</div>
	</div>

</body>
</html>