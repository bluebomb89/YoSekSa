<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	$('#notice-write').click(function(){
		('#noticeForm').submit();
	});
});
</script>
<script type="text/javascript">
var i=0;
$(function(){
	$('#notice-write').click(function(){
		var sub=$('notice_suv').val();
		var cont=$('notice_cont').val();
		$('#noticeForm').submit();
	});
});
</script>
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
								<input type="hidden" name="notice_page" value="">
								<!-- 게시판 번호 -->
								<input type="hidden" name="board_number" value="3">
								<!-- 공지사항 번호 -->
								<input type="hidden" name="notice_number" value="">
								<!-- 회원 번호 -->
								<input type="hidden" name="notice_member" value="">
								<!-- 제목 -->
								<input type="text" placeholder="제목" id="notice_sub" name="notice_sub"><br>
								<!-- 내용 -->
								<textarea name="notice_cont" id="novice_cont" class="form-control" placeholder="내용" style="min-height:300px;width: 100%; margin-top: 20px;"></textarea>
								<!-- 날짜 -->								
								<input type="hidden" name="notice_" value="">
								<!-- 등록일 -->
								<input type="hidden" name="" value="">
						    </form>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					        <a id="notice-write"><button type="button" class="btn btn-primary" data-dismiss="modal">등록</button></a>
					      </div>
					    </div>
					  </div>
					</div>
			</div>
			<div class="showmenu" id="menu1">
				<div class="noticesub">제목</div>
				<div class="noticehire"> 작성일 </div>
				<div class="noticeday"> 조회수</div>
				<div id="menu1-cont" style="display: none;">
						<pre>
							내용이 길어
							내용이 엄청긴데?
							이러면 어떻게 출력되?
						</pre>
				</div>
			</div>
			<div class="showmenu" id="menu2">
				<div class="noticesub"> 제목</div>
				<div class="noticehire"> 작성일 </div>
				<div class="noticeday"> 조회수</div>
				<div id="menu2-cont" style="display: none;">
					<pre>
							내용이 길어
							내용이 엄청긴데?
							이러면 어떻게 출력되?
					</pre>
				</div>
			</div>
			<div class="showmenu" id="menu3">
				<div class="noticesub"> 제목</div>
				<div class="noticehire"> 작성일 </div>
				<div class="noticeday"> 조회수</div>
				<div id="menu3-cont" style="display: none;">
					<pre>
						내용이 길어
						내용이 엄청긴데?
						이러면 어떻게 출력되?
					</pre>
				</div>
			</div>
			<div class="showmenu" id="menu4">
				<div class="noticesub"> 제목</div>
				<div class="noticehire"> 작성일 </div>
				<div class="noticeday"> 조회수</div>
				<div id="menu4-cont" style="display: none;">
					<pre>
						내용이 길어
						내용이 엄청긴데?
						이러면 어떻게 출력되?
					</pre>
				</div>
			</div>
			<div class="showmenu" id="menu5">
				<div class="noticesub"> 제목</div>
				<div class="noticehire"> 작성일 </div>
				<div class="noticeday"> 조회수</div>
				<div id="menu5-cont" style="display: none;">
					<pre>
						내용이 길어
						내용이 엄청긴데?
						이러면 어떻게 출력되?
					</pre>
				</div>
			</div>
			<div class="showmenu" id="menu6">
				<div class="noticesub"> 제목</div>
				<div class="noticehire"> 작성일 </div>
				<div class="noticeday"> 조회수</div>
				<div id="menu6-cont" style="display: none;">
					<pre>
						내용이 길어
						내용이 엄청긴데?
						이러면 어떻게 출력되?
					</pre>
				</div>
			</div>
			<div class="showmenu" id="menu7">
				<div class="noticesub"> 제목</div>
				<div class="noticehire"> 작성일 </div>
				<div class="noticeday"> 조회수</div>
				<div id="menu7-cont" style="display: none;">
					<pre>
						내용이 길어
						내용이 엄청긴데?
						이러면 어떻게 출력되?
					</pre>
				</div>
			</div>
			<div class="showmenu" id="menu8">
				<div class="noticesub"> 제목</div>
				<div class="noticehire"> 작성일 </div>
				<div class="noticeday"> 조회수</div>
				<div id="menu8-cont" style="display: none;">
					<pre>
						내용이 길어
						내용이 엄청긴데?
						이러면 어떻게 출력되?
					</pre>
				</div>
			</div>
			<div class="showmenu" id="menu9">
				<div class="noticesub"> 제목</div>
				<div class="noticehire"> 작성일 </div>
				<div class="noticeday"> 조회수</div>
				<div id="menu9-cont" style="display: none;">
					<pre>
						내용이 길어
						내용이 엄청긴데?
						이러면 어떻게 출력되?
					</pre>
				</div>
			</div>
			<div class="showmenu" id="menu10">
				<div class="noticesub"> 제목</div>
				<div class="noticehire"> 작성일 </div>
				<div class="noticeday"> 조회수</div>
				<div id="menu10-cont" style="display: none;">
					<pre>
						내용이 길어
						내용이 엄청긴데?
						이러면 어떻게 출력되?
					</pre>
				</div>
			</div>
			<!-- Modal -->

	 </div>
</body>
</html>