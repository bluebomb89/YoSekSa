<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
 <div class="view_reply">
        <div class="reply_tit">의견 <span id="recipeCommentListCount">3</span></div>
        <c:forEach var="i" items="rdto">
	        <div id="recipeCommentList_1">
	        	<div class="media reply_list">
	        		<!-- 회원 이미지 등록 -->
	        		<div class="media-left">
	        		aaaaaaa
	        			<img class="media-object" src="../recipe/zxcvvxzcvcxv_files/63a6f87567ba070ea8de595e04851b011.jpg" data-holder-rendered="true">
	        		</div>
	    		 	<div class="media-body">
	        			<h4 class="media-heading">
	       			<%-- <b class="info_name_f">${i.reply_nickname }</b>${i.reply_date }</h4>${i.reply_content } --%>
	       			</div>
	     		</div>
	      	</div>
      	</c:forEach>
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
    </div><!-- /view_reply -->