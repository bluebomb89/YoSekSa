<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>����������</title>
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
<!--/script-->
<script type="text/javascript">
	$(document).ready(function() {
		/* affix the navbar after scroll below header */
		$('#nav').affix({
			offset: {top: $('header').height()-$('#nav').height()}
		});
		
		/* affix-top ���� affix�� �����ɴ� �̺�Ʈ �߻�*/
		$('#nav').on("affix.bs.affix",function(){
			$("#startmain").text("haa!");
		});
		/* affix���� affix-top���� ��ȯ�ɶ� �̺�Ʈ �߻�*/
		$('#nav').on("affix-top.bs.affix",function(){
			$("#startmain").text("Search");
		});
	});
</script>
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
    <!-- ��� -->
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