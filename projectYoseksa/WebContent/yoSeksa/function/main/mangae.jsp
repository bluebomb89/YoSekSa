<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<!-- 마우스 오버 이미지 확대 -->

<script type="text/javascript">
            $(document).ready(function() {
                  
                var xOffset = 10;
                var yOffset = 30;
 
                $(document).on("mouseover",".thumbna",function(e){ //마우스 오버시
                     
                    $("body").append("<p id='preview'><img src='"+ $(this).attr("src") +"' width='400px' /></p>"); //보여줄 이미지를 선언                       
                    $("#preview")
                        .css("top",(e.pageY - xOffset) + "px")
                        .css("left",(e.pageX + yOffset) + "px")
                        .fadeIn("fast"); //미리보기 화면 설정 셋팅
                });
                 
                $(document).on("mousemove",".thumbna",function(e){ //마우스 이동시
                    $("#preview")
                        .css("top",(e.pageY - xOffset) + "px")
                        .css("left",(e.pageX + yOffset) + "px");
                });
                 
                $(document).on("mouseout",".thumbna",function(){ //마우스 아웃시
                    $("#preview").remove();
                });
                  
            });
        </script>

<!-- 이미지 확대 끝 -->

<script>
function btnUp(){
	/* > 버튼 클릭시 자동번호 증가 */
	for(var i=1; i<6; i++){
		var btn=$('#btn'+i).text();
		var b=parseInt(btn);
		b=b+1
		$('#btn'+i).text(b);
	}
}
function btnDown(){
	/* > 버튼 클릭시 자동번호 감소 */
	if($('#btn1').text()!=1){
		for(var i=1; i<6; i++){
			var btn=$('#btn'+i).text();
			var b=parseInt(btn);
			b=b-1
			$('#btn'+i).text(b);
		}	
	}
	
}
</script>

<!-- 마우스오버 스타일 -->

<style>
	       /* 미리보기 스타일 셋팅 */
            #preview{
                z-index: 9999;
                position:absolute;
                border:0px solid #ccc;
                background:#333;
                padding:1px;
                display:none;
                color:#fff;
            }
</style>

<!-- 마우스오버 스타일 -->

</head>

<body>
<!-- container -->
<div id="mangae-recipe">
		<div class="service-info" style="margin-bottom: 20px;">
			<h3>Recipe Search</h3>
		</div>
		<div class="recipe-search">
			<%-- ${imglist } 리스트 배열에있는 0번째부터 9번까지. 변수 2개넣으려면 status줘서 index = 루프 번호 --%>
			<c:if test="${nconfirm==0 }">
				<c:forEach begin="0" var="img" items="${imglist }" end="9"  varStatus="status" >
				<a id="link" href="recipeview.sek?link=${linklist[status.index] }&img=${img}&title=${titlelist[status.index]}">
				<div class="item col-sm-3 col-md-3 mangae" >
	   				<div class="thumbnail" style=" width: 232px; height: 280px; padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;">
						
						<img src="${img}" " style="height: 200px;width: 250px;" class="thumbna">
						<div class="caption">
							<strong>${titlelist[status.index]}</strong>
		               </div>
					</div>
				</div>
				</a>
				</c:forEach>
			</c:if>
			<c:if test="${nconfirm!=0 }">
				<c:forEach begin="10" var="img" items="${imglist }" end="19"  varStatus="status" >
				<a id="link" href="recipeview.sek?link=${linklist[status.index] }&img=${img}&title=${titlelist[status.index]}">
				<div class="item col-sm-3 col-md-3 mangae">
	   				<div class="thumbnail" style=" width: 232px; height: 280px; padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;">
						<img src="${img}" " style="height: 200px;width: 250px;" class="thumbna">
						<div class="caption">
							<strong>${titlelist[status.index]}</strong>
		               </div>
					</div>
				</div>
				</a>
				</c:forEach>
			</c:if>
	</div>
			    <!-- 버튼 -->
	    <div class="recipe_btn_group" align="center" >
			<div class="recipe_btn" role="group" aria-label="First group">
				<button type="button" class="btn btn-default" onclick="btnDown()">＜</button>
				<button type="button" class="btn btn-default" id="btn1" onclick="idcheck1()">${mspage }</button>
				<button type="button" class="btn btn-default" id="btn2" onclick="idcheck2()">${mspage+1 }</button>
				<button type="button" class="btn btn-default" id="btn3" onclick="idcheck3()">${mspage+2}</button>
				<button type="button" class="btn btn-default" id="btn4" onclick="idcheck4()">${mspage+3 }</button>
				<button type="button" class="btn btn-default" id="btn5" onclick="idcheck5()">${mspage+4 }</button>
				<button type="button" class="btn btn-default" onclick="btnUp()">＞</button>
			</div>
		</div>
</div>

</body>
</html>