<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Flooring a Interior category Flat Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="../../css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/component.css" rel="stylesheet" type="text/css"  />
<!-- jQuery (necessary JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="../../css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/style1.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/meal_table.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/bootstrapTheme.css" rel="stylesheet">
<link href="../../css/custom.css" rel="stylesheet">
<link href="../../css/owl.carousel.css" rel="stylesheet">
<link href="../../css/owl.theme.css" rel="stylesheet">
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Flooring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //footer -->
<script type="text/javascript" src="../../js/saved_resource"></script>
<script type="text/javascript" src="../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
<script src="../../js/modernizr.custom.js"></script>
<script src="../../js/jquery-1.11.1.min.js"></script>
<script src="../../js/responsiveslides.min.js"></script>
<script type="text/javascript" src="../../js/jquery.cycle.all.js"></script>
<script src="../../js/owl.carousel.js"></script>
<script src="../../js/owl.carousel.min.js"></script>
<!--/animated-css-->
<script type="text/javascript" src="../../js/move-top.js"></script>
<script type="text/javascript" src="../../js/easing.js"></script>
<script src="../../js/bootstrap.js"></script>	  

<!------------------------------------ 테이블 css----------------------------------------------->
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!------------------------------------ 테이블  css----------------------------------------------->

</head>


<body>











<script type="text/javascript">

/***********************************************
* Contractible Headers script- © Dynamic Drive (www.dynamicdrive.com)
* This notice must stay intact for legal use. Last updated Oct 21st, 2003.
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

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

</script>

<h3 onClick="expandcontent('sc1')" style="cursor:hand; cursor:pointer"><span class="style34">Q</span>&nbsp;<span class="style33">개인정보는 안전하게 보호받고 있나요?</span></h3>
<div id="sc1" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style15">
네</span>
</div>

<h3 onClick="expandcontent('sc2')" style="cursor:hand; cursor:pointer"><span class="style34">Q</span>&nbsp;<span class="style33">아이디를 변경 할 수 있나요?</span></h3>
<div id="sc2" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style15">
아이디는 변경이 불가능 합니다.
</span></div>

<h3 onClick="expandcontent('sc3')" style="cursor:hand; cursor:pointer"><span class="style34">Q</span>&nbsp;
<span class="style33">회원이 아닐 경우 서비스를 이용 할 수 없나요?</span></h3>
<div id="sc3" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style15">
오팔의 오든 서비스는 회원을 기반으로 제공되고 있습니다.
</span></div>

<h3 onClick="expandcontent('sc4')" style="cursor:hand; cursor:pointer"><span class="style34">Q</span>&nbsp;<span class="style33">주문 결제는 안전한가요?</span></h3>
<div id="sc4" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style15">
오팔은 최신의 보안시스템을 적용하여 안전합니다.
</span></div>

<h3 onClick="expandcontent('sc5')" style="cursor:hand; cursor:pointer"><span class="style34">Q</span>&nbsp;<span class="style33">실시간 계좌이체가 무엇인가요?</span></h3>
<div id="sc5" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style15">
실시간으로 계좌를 이체하는 것 입니다.
</span></div>

<h3 onClick="expandcontent('sc6')" style="cursor:hand; cursor:pointer"><span class="style34">Q</span>&nbsp;<span class="style33">어떤 경우에 상품의 교환/반품이 되지 않나요?</span></h3>
<div id="sc6" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style15">
파손 / 단순변심 일 경우는 불가능 합니다.
</span></div>

<h3 onClick="expandcontent('sc7')" style="cursor:hand; cursor:pointer"><span class="style34">Q</span>&nbsp;<span class="style33">제작상품은 언제쯤 받아 볼 수 있나요?</span></h3>
<div id="sc7" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style15">
운영자가 바쁘지 않을때 보내드립니다.
</span></div>

<h3 onClick="expandcontent('sc8')" style="cursor:hand; cursor:pointer"><span class="style34">Q</span>&nbsp;<span class="style33">일기 컨셉은 어떤것이 있나요?</span></h3>
<div id="sc8" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style15">
오직 오팔스타일 1개만 적용 가능합니다.
</span></div>



<div class="container">
  <h2>Hover Rows</h2>
  <p>The .table-hover class enables a hover state on table rows:</p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th onClick="expandcontent('test')" style="cursor:hand; cursor:pointer">Firstname</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td id="test">josdfsdfsdfsdfsdfsdfsdfsdfsdsdfhn@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
      </tr>
      <tr>
        <td>July</td>
      </tr>
    </tbody>
  </table>
</div>




</body>
</html>






































