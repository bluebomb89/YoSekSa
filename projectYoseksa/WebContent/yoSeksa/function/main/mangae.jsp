<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
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
				<div class="item col-sm-3 col-md-3 mangae">
	   				<div class="thumbnail">
						<img src="${img}">
						<div class="caption">
							<h5>${titlelist[status.index]}</h5>
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
	   				<div class="thumbnail">
						<img src="${img}">
						<div class="caption">
							<h5>${titlelist[status.index]}</h5>
		               </div>
					</div>
				</div>
				</a>
				</c:forEach>
			</c:if>
	    <!-- 버튼 -->
	    <div class="recipe_btn_group" style="margin: 0 auto;">
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
</div>
</body>
</html>