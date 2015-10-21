<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
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
});
</script>
<body>
		 <div class="container">
			<div class="service-info" id="serviceyo">
				<h3>Notice</h3>
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
				
	 </div>

</body>
</html>