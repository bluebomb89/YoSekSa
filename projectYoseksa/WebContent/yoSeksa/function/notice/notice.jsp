<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      var a= id+"-cont";
      $('#'+a).slideToggle("fast");
      });
   $('.showmenu').click(function() {
      var a= id+"-cont";
      $('#'+a).slideToggle("fast");
      });
   $('.notice_list').click(function(){
	  $(this).attr(id); 
   });
	   
});
</script>
<script>
function nbtnUp(){
	/* > 버튼 클릭시 자동번호 증가 */
	for(var i=1; i<6; i++){
		var btn=$('#nbtn'+i).text();
		var b=parseInt(btn);
		b=b+1
		$('#nbtn'+i).text(b);
	}
}
function nbtnDown(){
	/* > 버튼 클릭시 자동번호 감소 */
	if($('#nbtn1').text()!=1){
		for(var i=1; i<6; i++){
			var btn=$('#nbtn'+i).text();
			var b=parseInt(btn);
			b=b-1
			$('#nbtn'+i).text(b);
		}	
	}
	
}
</script>
<script type="text/javascript">
var httpRequest=null;
function createHttpRequest(){
	if(window.ActiveXObject){ //IE 6.0 이상
		return new ActiveXObject("Msxml2.XMLHTTP");
		//Microsoft.XMLHTTP 6.0이하일때
	}else if(window.XMLHttpRequest){ // 크롬 , ff
		return new XMLHttpRequest();
	}else{ // 호환이 안될때
		return null; //지원하지 않는 브라우저
	}
}
function sendMessage(method,param,url,callback){
	// 서버 연결 DWR,DOJO
	httpRequest=createHttpRequest();
	httpRequest.open(method,url+param,true);
	// true: 비동기 false:동기
	httpRequest.onreadystatechange=callback;
	httpRequest.send(null);
}
function nidcheck_result(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var res=httpRequest.responseText;
			$('#noticeboard').html(res);
			// 보여주면서 div에 값저장
			//alert(res);
		}		
	}
}
function nidcheck1(){
	var mspage=$('#nbtn1').text();
	param="?page="+mspage;
	sendMessage('GET', param, "notice_list.sek", nidcheck_result);
}
function nidcheck2(){
	var mspage=$('#nbtn2').text();
	param="?page="+mspage;
	sendMessage('GET', param, "notice_list.sek", nidcheck_result);
}
function nidcheck3(){
	var mspage=$('#nbtn3').text();
	param="?page="+mspage;
	sendMessage('GET', param, "notice_list.sek", nidcheck_result);
}
function nidcheck4(){
	var mspage=$('#nbtn4').text();
	param="?page="+mspage;
	sendMessage('GET', param, "notice_list.sek", nidcheck_result);
}
function nidcheck5(){
	var mspage=$('#nbtn5').text();
	param="?page="+mspage;
	sendMessage('GET', param, "notice_list.sek", nidcheck_result);
}
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
       <div class="container" id="noticeboard">
         <div class="service-info" id="serviceyo" style="height: 47px;">
			<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="float: left;">
               	등록
        	</button>
            <h3 style="padding: 0;margin: 0;margin-right: 44px;">Notice</h3>
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                 <div class="modal-dialog">
                   <div class="modal-content">
                     <div class="modal-header">
                       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                       <h4 class="modal-title" id="myModalLabel" >공지 사항</h4>
                     </div>
                     <div class="modal-body">
                       <!-- 데이터 입력 -->
                     <form id="noticeForm" name="notice_frm" method="post" action="notice_insert.sek">
                        <!-- 페이지 -->
                        <!-- <input type="hidden" name="notice_page" value=""> -->
                        <!-- 공지사항 번호 -->
                        <!-- <input type="hidden" name="notice_no" value=""> -->
<!--                         게시판 번호
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
         <div >
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
         </div>
        <!-- 버튼 -->
	    <div class="recipe_btn_group" align="center" >
			<div class="recipe_btn" role="group" aria-label="First group" style="padding-top: 20px;">
				<button type="button" class="btn btn-default" onclick="nbtnDown()">＜</button>
				<button type="button" class="btn btn-default" id="nbtn1" onclick="nidcheck1()">${npage }</button>
				<button type="button" class="btn btn-default" id="nbtn2" onclick="nidcheck2()">${npage+1 }</button>
				<button type="button" class="btn btn-default" id="nbtn3" onclick="nidcheck3()">${npage+2}</button>
				<button type="button" class="btn btn-default" id="nbtn4" onclick="nidcheck4()">${npage+3 }</button>
				<button type="button" class="btn btn-default" id="nbtn5" onclick="nidcheck5()">${npage+4 }</button>
				<button type="button" class="btn btn-default" onclick="nbtnUp()">＞</button>
			</div>
		</div>

    </div>
</body>
</html>