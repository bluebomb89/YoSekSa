<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>��������</title>
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
    <div class="view_pic"><img src="../recipe/zxcvvxzcvcxv_files/2e201b2ed039e2d25a4a5961d50283ed1_m.jpg"></div>
    <div class="view_info">
      
      <div class="info_title">������/���� �� �ϻ� �� ���̱� �� ä�ҷ�      <p>��������</p></div>
      <div class="info_cont">
        <span class="info_cont_1">�з�(�κ�) : 2�κ�</span>        <span class="info_cont_2">�����ð� : 15�� �̳�</span>        <span class="info_cont_3">���̵� : �ʱ�</span>      </div>
      <div class="info_share">
          <p class="info_share_in">����� : 15.10.22<span>/</span>��ȸ�� : 1,235<span>/</span>��ũ�� : 46<span>/</span>���ƿ� : 6</p>
          
      </div>
      
    </div>
  </div><!--/recipe_view -->
  <div class="blank_bottom2"></div>
    <div id="contents_area" class="col-xs-9">
    <div class="view_cont">
    	                <div class="cont_intro">
            �ܿ��� �Ǹ� ȣȣ �Ҹ� ��Դ� ������ �ְ��� �����ε���! ������ ������ �Բ� �־� ����� ���������� �Ұ��ҰԿ�. ���������� �ε巴�� ����Ͽ� ��ħ�Ļ� ������� ������ �������� �԰� ���� ������ �̿��� �� �־ ���� ����ϴ�. <br>
         </div>
              <div class="cont_ingre">
                <dl>
          <dt>[�����]</dt>
          <dd>���� �߰� ũ�� 2��, ���� 2��, �� 1��, ���� ���� 2ū��</dd>
        </dl>
                        <dl>
          <dt>[��� �� �ҽ����]</dt>
          <dd>�ĸ���ġ�� 2ū��, �ø����� ���緮, �ұ� �ణ</dd>
        </dl>
              </div>
    </div><!--/view_cont -->
    <div class="blank_bottom"></div>
<div class="view_step"><div class="view_step_cont step1">������ ��Ƽ� ������ ���� �� ������ �Բ� ������ ���� �����ּ���.<br><img src="../recipe/zxcvvxzcvcxv_files/5c20bf5aef1fa753a034d3fb7443ad081.jpg"></div><div class="view_step_cont"><img src="../recipe/zxcvvxzcvcxv_files/aba861433433bcbae312a95883267a961.jpg"></div>            <dl class="view_step_tip">
        <dt><img src="../recipe/zxcvvxzcvcxv_files/tit_tip.gif" alt="��-���ǻ���"></dt>
        <dd> ����Ĩ�� ����ż� ������� ����ּŵ� ���ƿ�~ </dd>
      </dl>
            

      
    </div><!--/view_step -->
    <div class="blank_bottom"></div>


    
    <div class="blank_bottom"></div><!-- ��important�� -->
    <div class="view_reply">
        <div class="reply_tit">�ǰ� <span id="recipeCommentListCount">3</span></div>
        <div id="recipeCommentList_1"><div class="media reply_list"><div class="media-left"><a href="http://www.10000recipe.com/profile/index.html?uid=28393124"><img class="media-object" src="../recipe/zxcvvxzcvcxv_files/63a6f87567ba070ea8de595e04851b011.jpg" data-holder-rendered="true"></a></div><div class="media-body"><h4 class="media-heading"><b class="info_name_f">������</b>2015-10-24 01:49</h4>��ġ��־���ϳ���</div></div><div class="media reply_list"><div class="media-left"><a href="http://www.10000recipe.com/profile/index.html?uid=bluecool2"><img class="media-object" src="../recipe/zxcvvxzcvcxv_files/489a92ef9ecf868e0f27db9bdafe8e201.71a41a100d6c04d04152a6458c52b736" data-holder-rendered="true"></a></div><div class="media-body"><h4 class="media-heading"><b class="info_name_f">�����Ǹ���</b>2015-10-26 09:48</h4>ġ� �����ø� �����Ͻð� ����� �ּŵ� �ż���~ �ٸ�, ġ� �־� ������ ���� �����ְ� ����� ���� �����ش�ϴ�^^</div></div><div class="media reply_list"><div class="media-left"><a href="http://www.10000recipe.com/profile/index.html?uid=cartenoire00"><img class="media-object" src="../recipe/zxcvvxzcvcxv_files/d60b194ef7fb8af7199209aad0c2f6991.jpg" data-holder-rendered="true"></a></div><div class="media-body"><h4 class="media-heading"><b class="info_name_f">�����ǻ����ʱ�</b>2015-10-26 09:48</h4> <br>
�����̴� ġ� ������ ���� ����� ¬������ ���� ǳ�̸� ���� �� �־� �־��ִµ���, �����ôٸ� �ұݰ��� �����ؼ� �� �־��ֽø� ���� �� �����ſ���~ </div></div></div>

      <div class="reply_write">
      <form id="insCmtFrm" method="post">
      <input type="hidden" name="q_mode" value="insertRecipeComment">
      <input type="hidden" name="frm[cmt_sq_board]" value="6836699">
      <input type="hidden" name="frm[cmt_id_user]" value="">
      <input type="hidden" name="frm[cmt_nm_user]" value="">
      <input type="hidden" name="frm[cok_reg_id]" value="wifetable">
        <div class="info_pic"><img class="media-object" src="../recipe/zxcvvxzcvcxv_files/pf_100_100.png" data-holder-rendered="true"></div>
        <div class="input-group">
          <textarea id="cmtTextarea" onclick="EZ.ATLogin(); return false;" name="frm[cmt_tx_content]" class="form-control" placeholder="�ڽŸ��� ����� �����Ű���?" style="height:100px; width:100%; resize:none;"></textarea>
          <span class="input-group-btn"><button class="btn btn-default" type="button" onclick="doCommentSubmit()" style="height:100px; width:100px;">���</button></span>
        </div>
      </form>
      </div>
    </div><!-- /view_reply -->

  </div><!-- /contents_area -->

  
    <div class="col-xs-12 sub_bg_btm"></div>
</div><!-- /container -->

</body></html>