<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!--/script-->
<script>
	var curListType = '';
	var curAllSel = false;

	$(document).ready(function() {
		doChangeListType('thumb')
	});

	function doChangeListType(types) {
		if (curListType == types)
			return;

		$("#listTypeSel_" + curListType).removeClass('active');
		$("#listTypeSel_" + types).addClass('active');
		$("#list_" + curListType).hide();
		$("#list_" + types).show();
		$("[id^=selRecipe_" + curListType + "]").each(function() {
			var target = $(this).attr('id').replace(curListType, types);
			$("#" + target).prop("checked", $(this).prop('checked'));
		});
		curListType = types;
	}

	function doAllSelect() {
		if (curAllSel) {
			txts = '전체선택';
			colors = '#666666';
			curAllSel = false;
		} else {
			txts = '전체해제';
			colors = '#FFFFFF';
			curAllSel = true;
		}
		$("#allSelectToggle").html(txts);
		$("#allSelectToggle").css("color", colors)
		$("#allSelectToggle").toggleClass("active");
		$("[id^=selRecipe]").each(function() {
			$(this).prop("checked", curAllSel);
		});
	}

	function checkSelectedRecipe() {
		var sel = '';
		$("[id^=selRecipe_" + curListType + "]").each(function() {
			if ($(this).prop('checked'))
				sel += $(this).val() + '|';
		});
		$("#selectedRecipes").val(sel.substring(0, sel.length - 1));
		if (!sel) {
			alert('레시피를 선택해 주세요.');
			return false;
		}
		return true;
	}

	function selectScrapFolder(folderSeq) {
		if (!checkSelectedRecipe())
			return;
		var selRecipe = $("#selectedRecipes").val();

		if (folderSeq == 243294) {
			alert('같은 폴더로 이동할 수 없습니다.');
			return;
		}

		$.ajax({
			type : "POST",
			url : "/scrap/ajax.html",
			data : "q_mode=moveScrap&oriFolderSeq=243294&seq=" + selRecipe
					+ "&folderSeq=" + folderSeq,
			success : function(result) {
				if (result == 'SUCCESS') {
					alert('이동되었습니다.');
					$("#selectScrapFolderModal").modal('hide');
					self.location.reload();
				} else if (result == 'NOT_FOUND') {
					alert('폴더가 없습니다. 다시 확인해 주세요.');
				} else {
					alert('등록 실패. 잠시후 다시 시도해 주세요.');
				}
			}
		});
	}

	function doScrap() {
		if (checkSelectedRecipe())
			selectScrapFolderOpen();
	}

	function doDelete() {
		if (!checkSelectedRecipe())
			return;
		var selRecipe = $("#selectedRecipes").val();

		if (confirm('선택된 레시피를 삭제하시겠습니까?')) {
			$.ajax({
				type : "POST",
				url : "/scrap/ajax.html",
				data : "q_mode=deleteScrap&seq=" + selRecipe,
				success : function(result) {
					if (result == 'SUCCESS') {
						self.location.reload();
					} else if (result == 'NOT_FOUND') {
						alert('레시피가 없습니다. 다시 확인해 주세요.');
					} else {
						alert('삭제실패. 잠시후 다시 시도해 주세요.');
					}
				}
			});
		}
	}
</script>
<link href="yoSeksa/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/component.css" rel="stylesheet" type="text/css"  />
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<!-- <link href="yoSeksa/css/style.css" type="text/css" rel="stylesheet" media="all"> -->
<link href="yoSeksa/css/bootstrapTheme.css" rel="stylesheet">
<link href="yoSeksa/css/style1.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/custom.css" rel="stylesheet">
<link href="yoSeksa/css/owl.carousel.css" rel="stylesheet">
<link href="yoSeksa/css/owl.theme.css" rel="stylesheet">
<link href="yoSeksa/css/index.css" rel="stylesheet">
<link href="yoSeksa/css/style3.css" type="text/css" rel="stylesheet" media="all">
<!--script-->

<script src="yoSeksa/js/saved_resource"></script>
<script src="yoSeksa/js/jquery.min.js"></script>
<script src="yoSeksa/js/bootstrap.min.js"></script>
<script src="yoSeksa/js/modernizr.custom.js"></script>
<script src="yoSeksa/js/jquery-1.11.1.min.js"></script>
<script src="yoSeksa/js/responsiveslides.min.js"></script>
<script src="yoSeksa/js/jquery.cycle.all.js"></script>
<script src="yoSeksa/js/owl.carousel.js"></script>
<script src="yoSeksa/js/owl.carousel.min.js"></script>
<!--/animated-css-->
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
</head>
<body class="cbp-spmenu-push">


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

	<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->



	
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<!-- <link href="yoSeksa/css/style.css" type="text/css" rel="stylesheet" media="all"> -->

<!-- Custom Theme files -->
<!-- //footer -->

<!--script------------------------------------------------------------------------------------------------------->
	<div class="container"
		style="margin-top: 60px; margin-left: 30px; padding-top: 40px;">
		<div class="top_title"
			style="padding-bottom: 11px; padding-top: 10px; border-top-width: 1px; width: 1120px;">
			<h3 style="margin-bottom: 0px; margin-top: 0px; width: 200px;">My
				Recipe</h3>
			<div class="top_title_r" style="padding-top: 0px;">
				<div class="btn-group" role="group" aria-label="Basic example">
					<button type="button" id="listTypeSel_thumb"
						class="btn btn-default btn-lg active"
						onclick="doChangeListType('thumb')">
						<span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
					</button>
					<button type="button" id="listTypeSel_list"
						class="btn btn-default btn-lg" onclick="doChangeListType('list')">
						<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
					</button>
				</div>
				<div class="btn-group" role="group">
					<button id="allSelectToggle" type="button" class="btn btn-default"
						onclick="doAllSelect()"
						style="color: rgb(102, 102, 102); margin-right: 6px;">전체선택</button>
					<button type="button" class="btn btn-default" onclick="doDelete()"
						style="margin-right: 6px;">
						<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
					</button>

					<a href="recipe_enroll.sek"><button type="button"
							class="btn btn-default" onclick="" style="margin-right: 6px;">
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
						</button></a>
				</div>
			</div>
		</div>
<!----------------------------------------------------------------------------------------------------------------------->

<!-- 검색 창 -------------------------------------------------------------------------------------------- ------------------>
		<div class="col-md-12" style="padding-top: 15px;">
			<!-- <div class="row">
				<div class="col-lg-4">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search for..." style="height: 30px;"> <span class="input-group-btn">
							<button class="btn btn-default" type="button">Go!</button>
						</span>
					</div>
					/input-group
				</div> -->
			<!-- /.col-lg-6 -->
		</div>
<!---------------------------------------------------------------------------------------------------- ------------------>

	<!-- /.row -->
		<div class="col-md-12" style="margin-top: 20px;">
			<c:forEach var='dto' items="${list}">
			<div class="col-sm-3 col-md-3.5">
				<div class="thumbnail" style="margin-bottom: 5px;">
					<img src="yoSeksa/images/"${dto.recipe_img } alt="">
					<div class="caption">
						<h3>${dto.recipe_sub }</h3>
						<div align="center" style="margin-top: 10px;">
							<a href="#" class="btn btn-primary" role="button"><span
								class="glyphicon glyphicon-heart" aria-hidden="true"></span></a> <a
								href="#" class="btn btn-default" role="button"><span
								class="glyphicon glyphicon-calendar" aria-hidden="true"></span></a>
						</div>
					</div>
				</div>
				<div class="list_check" align="center">
					<input type="checkbox" id="selRecipe_thumb_6836049" value="3770820"
						style="margin-bottom: 10px;">
				</div>
			</div>
			</c:forEach>
			
		</div>
		
		<nav align="center">
			<li class="pagination" style="margin-top: 80px;">
				<a href="board_list.do?page=${curpage>1?curpage-1:curpage }"><img src="../images/prev_icon.gif"></a> &nbsp;
       		    <a href="board_list.do?page=${curpage<totalpage?curpage+1:curpage }"><img src="../images/next_icon.gif"></a>&nbsp;&nbsp;
     		    ${curpage } page / ${totalpage } pages
			</li>
		</nav>


	</div>
</body>
</html>