<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	a:LINK {color: yellowgreen; font-size: 11pt; text-decoration: none;}
    a:VISITED {color: yellowgreen; text-decoration: none;}
    a:ACTIVE {color: #fff; text-decoration: none;}
    a:HOVER {color: #fff; text-decoration: none;}
</style>
<link href="yoSeksa/css/calendar.css" type="text/css" rel="stylesheet" media="all">

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
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



function diary_Insert(recipe_no,recipe_sub,bld,date){
	var recipe_no=recipe_no;
	var recipe_sub=recipe_sub;
	var bld=bld;
	var date=date;
	var param="?reno="+recipe_no+"&resub="+recipe_sub+"&bld="+bld+"&date="+date;
	sendMessage('GET', param, "diary_insert.sek", diary_result);
}
function diary_result(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var res=httpRequest.responseText;
			//alert(res);
			alert("다이어리에 등록 하였습니다");	
			$('#diary_main_body',parent.parent.document).html(res);
			parent.parent.Shadowbox.close();// 부모의 부모창 닫기
			
		}		
	}
}

</script>
<!-- <script type="text/javascript">
var xkeyword="";
$(function(){
	xkeyword=$('#keyword', parent.document).val();
	alert(xkeyword);
});
</script> -->
</head>
<body>
<font color=white>
	<div id="search_div">	
<%-- 	총페이지 : ${recipe_search_totalpage }<br>	
	bld : ${bld }<br>
	date : ${date }<br> --%>
			<table id="searchReTable" style="border-collapse: collapse;" cellpadding="2">
				<tr>
<!-- 					<td>번호</td> -->
					<td style="border-bottom: solid 1px;border-bottom-color: #00ff40;">레시피 검색결과</td>
				</tr>
				<c:forEach var="rs" items="${recipe_search_list }">
				<tr>
<%-- 					<td>${rs.recipe_no }</td> --%>
					<td>
						<a href="#" onclick="diary_Insert('${rs.recipe_no }','${rs.recipe_sub }','${bld }','${date }')">${rs.recipe_sub }</a>						
						<%-- <a href="diary_search_ok.sek?reno=${rs.recipe_no }&resub=${rs.recipe_sub }&bld=${bld }&date=${date }">${rs.recipe_sub }</a> --%>	
					</td>
				</tr>
				</c:forEach>
			</table>			
	</div>
</font>
</body>
</html>