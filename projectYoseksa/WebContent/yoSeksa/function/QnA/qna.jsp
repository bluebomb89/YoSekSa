<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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



<!-- -------------------------------------------���� Ŭ���� �亯------------------------------------ -->

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
</head>
<body style="background-image:URL('yoSeksa/images/qna_background.jpg')">



<div id="qna_title">
<span>Q&A�� ���ؼ� �ñ����� �ذ��ϼ���.</span>
</div>

<div id="icon_zoom">
<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
</div>

<div id="qna_label1">
<div class="alert alert-info" role="alert">�����е��� ���ֹ��� ����!</div>
</div>



<div id="qna_div">
	<h5 onClick="expandcontent('sc1')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;�伽��� ����ΰ���?</span></h5>
	<div id="sc1" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	�伽��</span>
	</div>
	
	<h5 onClick="expandcontent('sc2')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;���̵� ���� �� �� �ֳ���?</span></h5>
	<div id="sc2" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	���̵�� ������ �Ұ��� �մϴ�.
	</span>
	</div>
	
	<h5 onClick="expandcontent('sc3')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;ȸ���� �ƴ� ��� ���񽺸� �̿� �� �� ������?</span></h5>
	<div id="sc3" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	�伽���� ���� ���񽺴� ȸ���� ������� �����ǰ� �ֽ��ϴ�.
	</span>
	</div>
	
	<h5 onClick="expandcontent('sc4')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;�˻��� ��� �ϳ���?</span></h5>
	<div id="sc4" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	�˻��ϼ���
	</span>
	</div>
	
	<h5 onClick="expandcontent('sc5')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;������ �߰��� ��� �ϳ���?</span></h5>
	<div id="sc5" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	�߰��ϼ���
	</span>
	</div>
	
	<h5 onClick="expandcontent('sc6')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;ȸ�� ������ �ٲܼ� �ֳ���?</span></h5>
	<div id="sc6" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	��
	</span>
	</div>
	
	<h5 onClick="expandcontent('sc7')" style="cursor:hand; cursor:pointer"><span><span class="label label-warning">Q</span>&nbsp;�����?</span></h5>
	<div id="sc7" class="switchcontent">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span>
	�伽��
	</span>
	</div>
</div>

<div id="qna_label2">
<div class="alert alert-success" role="alert">1:1����</div>
</div>

<div id="email_form_div">
	<div id="email_form">
		<input type="text" class="form-control" placeholder="email">
	</div>
	<div id="contenet_form">
		<textarea class="form-control" rows="5" col="4" placeholder="content"></textarea>
	</div>
	<div id="button_form">
		<button type="button" class="btn btn-success">Success</button>
	</div>
</div>

<br><br><br>



<!-- -------------------------------------------���� Ŭ���� �亯 ��------------------------------------ -->

</body>
</html>