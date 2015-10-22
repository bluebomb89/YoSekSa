<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

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
		
		/* affix-top ���� affix濡� �������� �대깽�� 諛���*/
		$('#nav').on("affix.bs.affix",function(){
			$("#startmain").text("haa!");
		});
		/* affix���� affix-top�쇰� �������� �대깽�� 諛���*/
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

<!--script-->

</head>
<body  class="cbp-spmenu-push">
		<!--bottom-->
		                   <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
               등록
            </button>
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                 <div class="modal-dialog" style="width: 635px;">
                   <div class="modal-content" style="margin-right: 50px">
                     <div class="modal-header">
                       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                       <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                     </div>
                     <div class="modal-body">
                       <textarea name="board_tx" class="form-control" placeholder="내용"
								style="height: 210px; width: 525px; margin-top: 5px;"></textarea>
							<div class="write_pic2" style="width: 400px; margin-top: 5px;">
								<input type="file" name="file" id="file_1"
									style="display: none;" />
								<div class="complete_pic">
									<img src="http://recipe1.ezmember.co.kr/img/pic_none3.gif"
										alt="파일첨부" width="140" height="80"
										onclick="document.getElementById('file_1').click();"
										style="cursor: pointer;" />
								</div>
							</div>
                     </div>
                     <div class="modal-footer">
                       <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                       <button type="button" class="btn btn-primary">Save changes</button>
                     </div>
                   </div>
                 </div>
               </div>   
		<!-- �ш린�� ������吏� 留��� -->
		<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
		<script src="js/classie.js"></script>
	<!-- ���댁� 媛��대�� -->
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
				            <td align=left colspan="2">踰���1</td>
				            <td align="right">
					              <input type="button" value="��湲�">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=center height=10% rowspan="3">
				              <img src ="https://d30y9cdsu7xlg0.cloudfront.net/png/78590-200.png" width="60px" height="60px">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">���ㅼ��1</td>
				
				            <td width=70% align=center bgcolor="#d2d2d2" height=70 rowspan="2">
					           ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁��
					           ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁��
					           </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">���깆��</td>
			          </tr>
						</table>
			</div>
			<div class="headdings">
						<table class="table">
						    <tr>
				            <td align=left colspan="2">踰���2</td>
				            <td align="right" >
					              <input type="button" value="��湲�">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=center height=10% rowspan="3">
				              <img src ="https://d30y9cdsu7xlg0.cloudfront.net/png/78590-200.png" width="60px" height="60px">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">���ㅼ��2</td>
				
				            <td width=70% align=center bgcolor="#d2d2d2" height=70 rowspan="2">
					           ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁��
					           ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁��
					           </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">���깆��</td>
			          </tr>
						</table>
			</div>
			<div class="headdings">
						<table class="table">
						    <tr>
				            <td align=left colspan="2">踰���3</td>
				            <td align="right" >
					              <input type="button" value="��湲�">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=center height=10% rowspan="3">
				              <img src ="https://d30y9cdsu7xlg0.cloudfront.net/png/78590-200.png" width="60px" height="60px">
				            </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">���ㅼ��3</td>
				
				            <td width=70% align=center bgcolor="#d2d2d2" height=70 rowspan="2">
					           ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁��
					           ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁�� ����寃����� �댁��
					           </td>
			          </tr>
			          <tr>
				            <td width=10% align=left bgcolor="#e2e2e2">���깆��</td>
			          </tr>
						</table>
			</div>
<!---->
<!--  style.css���� �대�몄� 異�媛��댁�� div class�대��� �ｌ�대��. �대�몄��� ��泥댁���쇰� style.css����. 
	  
.bannersearch{
	background:url(../images/bannersearch.jpg) no-repeat 0px 0px;
	background-size:100% 100%;
	min-height:895px;
}

css���� �대�몄� �대�곗���쇰� 異�媛���怨� div���� �대���ㅻ� �ｌ�댁＜硫� ����.
-->

<!---->
<!----> 
<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../js/bootstrap.js"></script>	  
</body>
</html>