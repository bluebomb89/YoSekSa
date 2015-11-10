<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
   request.setCharacterEncoding("EUC-KR");
%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Flooring a Interior category Flat Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="yoSeksa/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/component.css" rel="stylesheet" type="text/css"  />
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="yoSeksa/css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/style1.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/meal_table.css" type="text/css" rel="stylesheet" media="all">
<link href="yoSeksa/css/bootstrapTheme.css" rel="stylesheet">
<link href="yoSeksa/css/custom.css" rel="stylesheet">
<link href="yoSeksa/css/owl.carousel.css" rel="stylesheet">
<link href="yoSeksa/css/owl.theme.css" rel="stylesheet">

    
    
<link href="yoSeksa/css/qna.css" rel="stylesheet">

<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Flooring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />


<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //footer -->
<script type="text/javascript" src="yoSeksa/js/saved_resource"></script>
<script type="text/javascript" src="yoSeksa/js/jquery.min.js"></script>
<script type="text/javascript" src="yoSeksa/js/bootstrap.min.js"></script>
<script src="yoSeksa/js/modernizr.custom.js"></script>
<script src="yoSeksa/js/jquery-1.11.1.min.js"></script>
<script src="yoSeksa/js/responsiveslides.min.js"></script>
<script type="text/javascript" src="yoSeksa/js/jquery.cycle.all.js"></script>
<script src="yoSeksa/js/owl.carousel.js"></script>
<script src="yoSeksa/js/owl.carousel.min.js"></script>
<!--/animated-css-->
<script type="text/javascript" src="yoSeksa/js/move-top.js"></script>
<script type="text/javascript" src="yoSeksa/js/easing.js"></script>
<script src="yoSeksa/js/bootstrap.js"></script>

<!-- 플러그인 참조 -->
<!-- <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.js"></script>
<script src="http://cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script> -->



<!-- -------------------------------------------질문 클릭시 답변------------------------------------ -->

<style type="text/css">
      @media (min-width: 980px) {
        body {
          padding-top: 60px;
          padding-bottom: 40px;
        }
      }
    </style>


<script type="text/javascript">

function change1(obj){
    obj.style.background = '#f3f3f3';
    obj.style.color = '#634343';
}
function change2(obj){
    obj.style.background = '#634343';
    obj.style.color = '#f3f3f3';
}


/***********************************************
* Contractible Headers script- 짤 Dynamic Drive (www.dynamicdrive.com)
* This notice must stay intact for legal use. Last updated Oct 21st, 2003.
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

function LayerBody_onresize() {

    //LayerLeft 의 height 를 변경된 LayerBody의 height의 값을 대입

   document.getElementById("LayerLeft").style.height = document.getElementById("LayerBody").style.height;

    //LayerRight 의 height 를 변경된 LayerBody의 height의 값을 대입

   document.getElementById("LayerRight").style.height = document.getElementById("LayerBody").style.height;

   //LayerBottom의 top 을 LayerBody의 (top + height)을 대입하여 LayerBody의

   //끝부분에 위치하게 한다.


  document.getElementById("LayerBottom").style.top = document.getElementById("LayerBody").offsetTop + document.getElementById("LayerBody").offsetHeight;



}



function window_onload() {  //테스트를 위해 window객체의 onload 이벤트에서 LayerBody의 height를 1000px로 변경 하였다.

 document.getElementById("LayerBody").style.height = "0px";

}



   var enablepersist="on" //Enable saving state of content structure using session cookies? (on/off)
   var collapseprevious="yes" //Collapse previously open content when opening present? (yes/no)
   
   if (document.getElementById){
      document.write('<style type="text/css">')
      document.write('.switchcontent{display:none;}')
      document.write('</style>')
   }
   
   function getElementbyClass(classname){
      ccollect=new Array()
      var inc=0
      var alltags=document.all? document.all : document.getElementsByTagName("*")
      for (i=0; i<alltags.length; i++){
      if (alltags[i].className==classname)
      ccollect[inc++]=alltags[i]
      }
   }
   
   function contractcontent(omit){
   var inc=0
   while (ccollect[inc]){
      if (ccollect[inc].id!=omit)
      ccollect[inc].style.display="none"
      inc++
      }
   }
   
   function expandcontent(cid){
   if (typeof ccollect!="undefined"){
      if (collapseprevious=="yes")
      contractcontent(cid)
      document.getElementById(cid).style.display=(document.getElementById(cid).style.display!="block")? "block" : "none"
      }
   }
   
   function revivecontent(){
   contractcontent("omitnothing")
   selectedItem=getselectedItem()
   selectedComponents=selectedItem.split("|")
   for (i=0; i<selectedComponents.length-1; i++)
   document.getElementById(selectedComponents[i]).style.display="block"
   }
   
   function get_cookie(Name) { 
   var search = Name + "="
   var returnvalue = "";
   if (document.cookie.length > 0) {
      offset = document.cookie.indexOf(search)
   if (offset != -1) { 
      offset += search.length
      end = document.cookie.indexOf(";", offset);
      if (end == -1) end = document.cookie.length;
         returnvalue=unescape(document.cookie.substring(offset, end))
      }
   }
   return returnvalue;
   }
   
   function getselectedItem(){
   if (get_cookie(window.location.pathname) != ""){
      selectedItem=get_cookie(window.location.pathname)
      return selectedItem
   }
   else
   return ""
   }
   
   function saveswitchstate(){
   var inc=0, selectedItem=""
   while (ccollect[inc]){
      if (ccollect[inc].style.display=="block")
      selectedItem+=ccollect[inc].id+"|"
      inc++
   }
   
   document.cookie=window.location.pathname+"="+selectedItem
   }
   
   function do_onload(){
      getElementbyClass("switchcontent")
      if (enablepersist=="on" && typeof ccollect!="undefined")
         revivecontent()
   }
   
   
   if (window.addEventListener)
      window.addEventListener("load", do_onload, false)
   else if (window.attachEvent)
      window.attachEvent("onload", do_onload)
   else if (document.getElementById)
      window.onload=do_onload
   
   if (enablepersist=="on" && document.getElementById)
      window.onunload=saveswitchstate
      
      $(function() {
           // submit 될 때, 유효성 검사 기능 수행
           $("#join_form").validate({
             // 유효성 검사 규칙
             rules : {
               sender : "required",
               receiver : "required",
               subject : "required",
               content : "required"
             },
             // 사용자에게 보여질 메시지
             messages : {
               sender : "보내는 분의 메일 주소를 입력하세요.",
               receiver : "받는 분의 메일 주소를 입력하세요.",
               subject : "제목을 입력하세요.",
               content : "내용을 입력하세요."
             }
           });
         });
</script>
</head>
<body onload="return window_onload()" style="background-image:URL('yoSeksa/images/qna_background.jpg')">

<div id="LayerLeft" class=Layer style="width:133px; height:55px; z-index:1"></div>

<div id="LayerBody" class=Layer style="width:301px; height:55px; z-index:2; left: 145px; top: 15px;" onresize="return LayerBody_onresize()"></div>

<div id="LayerRight" class=Layer style="width:188px; height:55px; z-index:3; left: 448px;"></div>

<div id="LayerBottom" class=Layer style="width:629px; height:105px; z-index:4; left: 9px; top: 341px;"></div>


<div id="qna_title">
<span>Q&A를 통해서 궁금증을 해결하세요.</span>
</div>

<div id="icon_zoom">
<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
</div>

<div id="qna_label1">
<div class="alert alert-info" role="alert">여러분들이 자주묻는 질문!</div>
</div>



<div id="qna_div">
   <h5 onClick="expandcontent('sc1')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;요섹사는 어떤곳인가요?</span></h5>
   <div id="sc1" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <span>
   요섹사</span>
   </div>
   
   <h5 onClick="expandcontent('sc2')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;아이디를 변경 할 수 있나요?</span></h5>
   <div id="sc2" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <span>
   아이디는 변경이 불가능 합니다.
   </span>
   </div>
   
   <h5 onClick="expandcontent('sc3')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;회원이 아닐 경우 서비스를 이용 할 수 없나요?</span></h5>
   <div id="sc3" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <span>
   요섹사의 오든 서비스는 회원을 기반으로 제공되고 있습니다.
   </span>
   </div>
   
   <h5 onClick="expandcontent('sc4')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;검색은 어떻게 하나요?</span></h5>
   <div id="sc4" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <span>
   검색하세요
   </span>
   </div>
   
   <h5 onClick="expandcontent('sc5')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;레시피 추가는 어디서 하나요?</span></h5>
   <div id="sc5" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <span>
   추가하세요
   </span>
   </div>
   
   <h5 onClick="expandcontent('sc6')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;회원 정보를 바꿀수 있나요?</span></h5>
   <div id="sc6" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <span>
   네
   </span>
   </div>
   
   <h5 onClick="expandcontent('sc7')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;여기는?</span></h5>
   <div id="sc7" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <span>
   요섹사
   </span>
   </div>
   <h5 onClick="expandcontent('sc8')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;E-mail보내기</span></h5>
   <div id="sc8" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   <form class="form-horizontal" method="post" action="yoSeksa/function/QnA/SendMail.jsp">
        <fieldset style="margin-left: 0px; margin-top: 0px;">
	      <div class="form-group">
            <label class="control-label col-sm-2" for="sender" style=" width: 130px;">관리자주소 <font color='red'>*</font></label>
            <div class="col-sm-10">
              <input type="text" name="sender" id="sender" class="form-control" value="iqee9932@naver.com" readonly="readonly"/>
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2" for="receiver" style=" width: 130px;">보내는주소 <font color='red'>*</font></label>
            <div class="col-sm-10">
              <input type="text" name="receiver" id="receiver" class="form-control" placeholder="받는 분의 이메일 주소를 입력하세요." />
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2" for="subject" style=" width: 130px;">메일제목<font color='red'> *</font></label>
            <div class="col-sm-10">
              <input type="text" name="subject" id="subject" class="form-control" placeholder="이메일의 제목을 입력하세요." />
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2" for="content" style=" width: 130px;">내용입력<font color='red'> *</font></label>
            <div class="col-sm-10">
              <textarea name="content" id="content" class="ckeditor" style="width:320px; height:150px;"></textarea>
            </div>
          </div>
          <div class="form-action text-right">
            <input type="submit" class="btn btn-primary" value="메일보내기" onmouseout="change2(this)" onmouseover="change1(this)" style="background-color:#634343;" />
            <input type="reset" class="btn" value="다시작성" />
          </div>
          </fieldset>
      </form>
   </div>
</div>

<!-- <div id="qna_label2">
<div class="alert alert-success" role="alert">1:1문의</div>
</div> -->

<!-- <div id="email_form_div">
   <div id="email_form">
      <input type="text" class="form-control" placeholder="email">
   </div>
   <div id="contenet_form">
      <textarea class="form-control" rows="5" col="4" placeholder="content"></textarea>
   </div>
   <div id="button_form">
      <button type="button" class="btn btn-success">Success</button>
   </div>
</div> -->
<div class="container" style="position: initial;">

      <form class="form-horizontal" method="post" action="yoSeksa/function/QnA/SendMail.jsp">
        <fieldset style="margin-left: 500px; margin-top: 550px;">
          <!-- <div class="form-group">
            <label class="control-label col-sm-2" for="sender">보내는주소 <font color='red'>*</font></label>
            <div class="col-sm-10">
              <input type="text" name="sender" id="sender" class="form-control" value="iqee9932@naver.com" readonly="readonly"/>
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2" for="receiver">받는주소 <font color='red'>*</font></label>
            <div class="col-sm-10">
              <input type="text" name="receiver" id="receiver" class="form-control" placeholder="받는 분의 이메일 주소를 입력하세요." />
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2" for="subject">메일제목<font color='red'>*</font></label>
            <div class="col-sm-10">
              <input type="text" name="subject" id="subject" class="form-control" placeholder="이메일의 제목을 입력하세요." />
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-sm-2" for="content">내용입력</label>
            <div class="col-sm-10">
              <textarea name="content" id="content" class="ckeditor" style="width:320px; height:150px;"></textarea>
            </div>
          </div>

          버튼영역­
          <div class="form-actions text-right" style="margin-right: 140px; margin-top: 0px; padding-top: 0px; padding-bottom: 0px;
margin-bottom: 0px;">
            <input type="submit" class="btn btn-primary" value="메일보내기" />
            <input type="reset" class="btn" value="다시작성" />
          </div> -->

        </fieldset>
      </form>

    </div>

<br><br><br>



<!-- -------------------------------------------질문 클릭시 답변 끝------------------------------------ -->

</body>
</html>