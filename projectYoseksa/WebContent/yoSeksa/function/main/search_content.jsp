<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<style type="text/css">
#nav.affix-top {
	padding-top:6px;
}

</style>
<script type="text/javascript">
	$('#nav').removeClass('affix-top').addClass('affix');
</script>

<!-- script -->
<!--/script-->

</head>
<body>
 <div class="blank_bottom2"></div>
<div class="container sub_bg">
    <div class="recipe_view">
    <div class="view_pic"><img src="${img }"></div>
    <div class="view_info">
      
      <div class="info_title"> <p>${title }</p></div>
     
    </div>
  </div><!--/recipe_view -->
  <div class="blank_bottom2"></div>
    <div id="contents_area" class="col-xs-9">
    <!-- 재료 -->
    <div class="view_cont">         
         ${jaeryo }      
    </div><!--/view_cont -->
    <div class="blank_bottom"></div>
    <c:forEach var="view" items="${searchview }"> 
    	${view }
    </c:forEach>
    
    <!--/view_step -->
    <div class="blank_bottom"></div>

  </div><!-- /contents_area -->

  
    <div class="col-xs-12 sub_bg_btm"></div>
</div><!-- /container -->

</body></html>