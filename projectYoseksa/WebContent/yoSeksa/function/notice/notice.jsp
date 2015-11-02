<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="yoSeksa/css/notice.css" rel="stylesheet">
</head> 
<style type="text/css">
.showmenu{
width: 80%;
padding-top: 10px;
margin: 0 auto;
border-bottom: 1px solid #eaeaea;
}
.noticea{
	list-style-type: none;
}
.noticesub{
display: inline;
width: 50%;
float: left;
text-align: left;
}
.noticehire{
display: inline;
width: 25%;
float: left;
text-align: center;
}
.noticeday{
display: inline;
width: 15%;
text-align: center;
}

div ul li{
	list-style-type: none;
}
#serviceyo{
border-bottom: 2px solid #757575;
padding-bottom: 5px;
width: 80%;
margin: 0 auto;
}
body.modal-open {
  overflow: inherit;
  padding-right: 0 !important;
}
body.cbp-spmenu-push{
  overflow: inherit;
  padding-right: 0 !important;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	var id;
	$('.showmenu').mouseover(function() {
		id = $(this).attr('id');
		return(id);
		});
	$('.showmenu').click(function() {
		var a= id+"-cont";
		$('#'+a).slideToggle("fast");
		});
	$('#myModal').on('shown.bs.modal', function () {
		  $('#myInput').focus()
		});
});
</script>
<!-- <script type="text/javascript">
$(function(){
	$('#notice-write').click(function(){
		var notice_sub=$('notice_sub').val();
		var notice_content=$('notice_content').val();
		$('#noticeForm').submit();
		document.getElementById("sevices").focus();
	});
	
});
</script> -->
<body>
		 <div class="container">
			<div class="service-info" id="serviceyo">
				<h3>Notice</h3>
				<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
					등록
				</button>
					 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title" id="myModalLabel">공지 사항</h4>
					      </div>
					      <div class="modal-body">
					        <!-- 데이터 입력 -->
							<form id="noticeForm" name="notice_frm" method="post" action="notice_insert.sek">
								<!-- 페이지 -->
								<!-- <input type="hidden" name="notice_page" value=""> -->
								<!-- 공지사항 번호 -->
								<!-- <input type="hidden" name="notice_no" value=""> -->
<!-- 								게시판 번호
								<input type="hidden" name="board_no" value="3">
								회원 번호
								<input type="hidden" name="member_no" value="3"> -->
								<!-- 제목 -->
								<input type="text" placeholder="제목" id="notice_sub" name="notice_sub"><br>
								<!-- 내용 -->
								<textarea name="notice_content" id="notice_content" class="form-control" placeholder="내용" style="min-height:300px;width: 100%; margin-top: 20px;"></textarea>
						    </form>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="notice_Insert()">등록</button>
					      </div>
					    </div>
					  </div>
					</div>
			</div>
			
			 <c:forEach var="ndto" items="${notice_list }">
				<div class="showmenu" id="menu${ndto.notice_no }">
					<div class="noticesub">제목 ${ndto.notice_sub }</div>
					<div class="noticehire"> 작성일 ${ndto.notice_dbday }</div>
					<div class="noticeday"> 조회수 ${ndto.notice_hit }</div>
					<div id="menu${ndto.notice_no }-cont" style="display: none;">
							<pre>${ndto.notice_content }</pre>
					</div>
				</div>
			</c:forEach>
			<div>
		        <a href="board_list.do?page=${curpage>1?curpage-1:curpage }"><img src="image/prev_icon.gif"></a>
		        &nbsp;
		        <a href="board_list.do?page=${curpage<totalpage?curpage+1:curpage }"><img src="image/next_icon.gif"></a>
		        &nbsp;&nbsp;
		        ${notice_curpage } page / ${notice_totalpage } pages
		    </div>
		    
			<!-- Modal -->

	 </div>
</body>
</html>