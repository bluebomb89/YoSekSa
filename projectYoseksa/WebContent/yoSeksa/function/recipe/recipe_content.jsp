<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>고구마수프</title>
<link href="yoSeksa/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/component.css" rel="stylesheet" type="text/css"  />
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
<!-- script -->
<script src="yoSeksa/js/saved_resource"></script>
<script src="yoSeksa/js/jquery.min.js"></script>
<script src="yoSeksa/js/bootstrap.min.js"></script>
<script src="yoSeksa/js/modernizr.custom.js"></script>
<script src="yoSeksa/js/jquery-1.11.1.min.js"></script>
<script src="yoSeksa/js/responsiveslides.min.js"></script>
<script src="yoSeksa/js/jquery.cycle.all.js"></script>
<script src="yoSeksa/js/owl.carousel.js"></script>
<script src="yoSeksa/js/owl.carousel.min.js"></script>
<script src="yoSeksa/js/move-top.js"></script>
<script src="yoSeksa/js/easing.js"></script>
<script src="yoSeksa/js/bootstrap.js"></script> 
<script src="yoSeksa/js/ajax.js"></script> 
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
function replyBtn(){
	alert("asdad");
	var reply_content=$('#recipeReply').val();
	var recipe_no=$('#recipe_no').val();
	var param="reply_content="+reply_content+"&recipe_no="+recipe_no;
	alert(param);
	sendMessage("GET", "recipe_reply.sek", param, reply_coment);
}
function reply_coment(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var res=httpRequest.responseText;
			$('#reply').html(res);
			// 보여주면서 div에 값저장
		}		
	}
}

</script>
</head>
<body>
 <div class="blank_bottom2"></div>
<div class="container sub_bg">
    <div class="recipe_view">
    <div class="view_pic"><img src="yoSeksa/contentImg/${dto.recipe_img }"></div>
    <div class="view_info">
      
      <div class="info_title">샐러드/스프 · 일상 · 끓이기 · 채소류      <p>${dto.recipe_sub }</p></div>
      <div class="info_share">
          <p class="info_share_in">등록일 : ${dto.recipe_date }<span>/</span>조회수 : ${dto.hit }
      </div>
      
    </div>
  </div><!--/recipe_view -->
  <div class="blank_bottom2"></div>
    <div id="contents_area" class="col-xs-9">
    <div class="view_cont">
              <div class="cont_ingre">
                <dl>
          <dt>[주재료]</dt>
          <c:forEach var='dto' items="${material}">
          	<dd>${dto.material_content } ${dto.material_gram }</dd>
		  </c:forEach>
          
        </dl>
        <dl>
          <dt>[양념 및 소스재료]</dt>
          <c:forEach var='sdto' items="${source}">
          	<dd>${sdto.source_content } ${sdto.source_gram }</dd>
		  </c:forEach>
        </dl>
              </div>
    </div><!--/view_cont -->
    <div class="blank_bottom"></div>
<div class="view_step">
	<c:forEach var='cdto' items="${content}">
		<div class="view_step_cont step1">${cdto.recipec_cont }<br>
			<img src="yoSeksa/contentImg/${cdto.recipec_photo }">
		</div>
	</c:forEach>
     
    </div><!--/view_step -->
    <div class="blank_bottom"></div>    
    <div class="blank_bottom"></div><!-- ☆important☆ -->
    <!-- 댓글 히든 -->
    <input type="hidden" value=${dto.recipe_no } id="recipe_no">
    <div id="reply">
    
		<jsp:include page="${reply }"></jsp:include>
	</div>

  </div><!-- /contents_area -->

  
    <div class="col-xs-12 sub_bg_btm"></div>
</div><!-- /container -->

</body></html>