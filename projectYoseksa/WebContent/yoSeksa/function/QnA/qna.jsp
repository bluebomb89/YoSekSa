<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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



<!-- -------------------------------------------질문 클릭시 답변------------------------------------ -->

<script type="text/javascript">

/***********************************************
* Contractible Headers script- 짤 Dynamic Drive (www.dynamicdrive.com)
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
</head>
<body>


<div id="qna_div">
	<h5 onClick="expandcontent('sc1')" style="cursor:hand; cursor:pointer"><span>Q&nbsp;요섹사는 어떤곳인가요?</span></h5>
	<div id="sc1" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	요섹사</span>
	</div>
	
	<h5 onClick="expandcontent('sc2')" style="cursor:hand; cursor:pointer"><span>Q&nbsp;아이디를 변경 할 수 있나요?</span></h5>
	<div id="sc2" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	아이디는 변경이 불가능 합니다.
	</span>
	</div>
	
	<h5 onClick="expandcontent('sc3')" style="cursor:hand; cursor:pointer"><span>Q&nbsp;회원이 아닐 경우 서비스를 이용 할 수 없나요?</span></h5>
	<div id="sc3" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	요섹사의 오든 서비스는 회원을 기반으로 제공되고 있습니다.
	</span>
	</div>
	
	<h5 onClick="expandcontent('sc4')" style="cursor:hand; cursor:pointer"><span>Q&nbsp;검색은 어떻게 하나요?</span></h5>
	<div id="sc4" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	검색하세요
	</span>
	</div>
	
	<h5 onClick="expandcontent('sc5')" style="cursor:hand; cursor:pointer"><span>Q&nbsp;레시피 추가는 어디서 하나요?</span></h5>
	<div id="sc5" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	추가하세요
	</span>
	</div>
	
	<h5 onClick="expandcontent('sc6')" style="cursor:hand; cursor:pointer"><span>Q&nbsp;회원 정보를 바꿀수 있나요?</span></h5>
	<div id="sc6" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	네
	</span>
	</div>
	
	<h5 onClick="expandcontent('sc7')" style="cursor:hand; cursor:pointer"><span>Q&nbsp;여기는?</span></h5>
	<div id="sc7" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	요섹사
	</span>
	</div>
</div>

<!-- -------------------------------------------질문 클릭시 답변 끝------------------------------------ -->

</body>
</html>