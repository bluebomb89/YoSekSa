<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<script src="yoSeksa/js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.btn-n').click(function(){
		var a=$(this).attr('id');
		var rpage=$('#'+a).text();
		var recipe_no=$('#recipe_no').val();
		var param="recipe_no="+recipe_no+"&rpage="+rpage;
		sendMessage("GET", "reply_view.sek", param, reply_view);
	});
	$('#re').click(function(){
		alert("댓글 클릭");
	});
});
function reply_reBtn(){
	var re_recipe_no=$('#re_recipe_no').val();
	var re_reply_no=$('#re_reply_no').val();
	var re_reply_content=$('#re_reply_content').val();
	var param="re_recipe_no="+re_recipe_no+"&re_reply_no="+re_reply_no+"&re_reply_content="+re_reply_content;
	sendMessage("GET", "recipe_reply.sek", param, re_reply_coment);
}
function re_reply_coment(){
	
}
</script>
 <div class="view_reply">
        <div class="reply_tit">의견 <span id="recipeCommentListCount">${rtotal }</span></div>
               <div class="reply_write">
      <form id="insCmtFrm" method="post">
        <div class="info_pic"><img class="media-object" src="../recipe/zxcvvxzcvcxv_files/pf_100_100.png" data-holder-rendered="true"></div>
        <div class="input-group">
          <textarea id="recipeReply" name="frm[cmt_tx_content]" class="form-control" placeholder="자신만의 비법이 있으신가요?" style="height:100px; width:100%; resize:none;"></textarea>
          <span class="input-group-btn">
          	<button onclick="replyBtn()" id="replyBtna" class="btn btn-default" type="button" style="height:100px; width:100px;"></button>
          </span>
        </div>
      </form>
      </div>
        <c:forEach var="i" items="${rvdto }">
	        <div id="recipeCommentList_1">
	        	<input type=hidden id="re_recipe_no" name=bno value="${ i.recipe_no}">
	        	<input type=hidden id="re_reply_no" name=rno value="${ i.reply_no}">
	        	<div class="media reply_list">
	        		<!-- 회원 이미지 등록 -->
	        		<div class="media-left">
	        			<img class="media-object" src="../recipe/zxcvvxzcvcxv_files/63a6f87567ba070ea8de595e04851b011.jpg" data-holder-rendered="true">
	        		</div>
	    		 	<div class="media-body">
	        			<h4 class="media-heading">
	       			<b class="info_name_f">${i.reply_nickname }</b><fmt:formatDate value="${i.reply_date}" pattern="yyyy년 MM월 dd일"/></h4>
	       			${i.reply_content } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="댓글">
	       			<!-- 댓글에 댓글 -->
					<form id="reply_re" method="post">
		       			<div id="reply_rv">
	 				        <div class="input-group">
					          <textarea id="re_reply_content" name="frm[cmt_tx_content]" class="form-control" placeholder="자신만의 비법이 있으신가요?" style="height:100px; width:100%; resize:none;"></textarea>
					          <span class="input-group-btn">
					          	<button onclick="reply_reBtn()" id="replyBtna" class="btn btn-default" type="button" style="height:100px; width:100px;"></button>
					          </span>
					        </div>
			       			<div class="media-left">
			        			<img class="media-object" src="../recipe/zxcvvxzcvcxv_files/63a6f87567ba070ea8de595e04851b011.jpg" data-holder-rendered="true">
			        		</div>
			    		 	<div class="media-body">
			        			<h4 class="media-heading">
			       			<b class="info_name_f">댓글 닉네임</b><%-- <fmt:formatDate value="${i.reply_date}" pattern="yyyy년 MM월 dd일"/> --%>댓글 날짜</h4>
			       			댓글내용 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="re" type="button" value="댓글">
			       			</div>
		       			</div>
					</form>
	       			</div>
	     		</div>
	      	</div>
      	</c:forEach>
      	<!-- 댓글 버튼 -->
	    <div class="recipe_btn_group" style="margin: 0 auto;">
			<div class="recipe_btn" role="group" aria-label="First group">
				<button type="button" class="btn btn-default" >＜</button>
				<button type="button" class="btn btn-n" id="btn1">${rcurpage }</button>
				<button type="button" class="btn btn-n" id="btn2">${rcurpage+1 }</button>
				<button type="button" class="btn btn-n" id="btn3">${rcurpage+2}</button>
				<button type="button" class="btn btn-n" id="btn4">${rcurpage+3 }</button>
				<button type="button" class="btn btn-n" id="btn5">${rcurpage+4 }</button>
				<button type="button" class="btn btn-default" >＞</button>
			</div>
		</div>
    </div><!-- /view_reply -->