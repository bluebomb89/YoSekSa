<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
function ok()
{
	//페이지 이동하여 DB처리한다
	location.replace("../../function/calendar/add_recipe_popup_search_result_ok.jsp");
}
</script>



<!----------------------------------------------------------------------- ajax 코딩 -------------------------------------------------------------------->
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


/* function diary_search(){
	
	var keyword=$('#keyword').val();
	
	var param="?keyword="+keyword;
	sendMessage('GET', param, "diary_search.sek", diary_search_result);
} */



function diary_search_result(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var res=httpRequest.responseText;
			$('#search_div').html(res);
			// 보여주면서 div에 값저장
		}		
	}
}
</script>
 <!----------------------------------------------------------------------- ajax 코딩 -------------------------------------------------------------------->      
     



</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String keyword=request.getParameter("keyword");
	String bld=request.getParameter("bld");
	String date=request.getParameter("date");
%>
<input type="hidden" id="keyword" value="<%=keyword %>">


<script type="text/javascript">	

	var keyword=$('#keyword').val();	
	alert(keyword);	
	var param="?keyword="+keyword;
	sendMessage('GET', param, "diary_search.sek", diary_search_result);
	
</script>





keyword :<a href="#" onclick="ok()"> <%=keyword %></a><br>
bld : <%=bld %><br>
date : <%=date %>

<font color=white>

<div id="search_div">
	<table bgcolor="white" style="color:black">
		<tr>
			<td>recipe_no</td>
			<td>요리명</td>
		</tr>
			<c:forEach var="rdto" items="${recipe_search_list }">
		<tr>
			<td>${rdto.recipe_no }</td>
			<td>${rdto.recipe_sub }</td>
		</tr>
			</c:forEach>
	</table>
</div>



</font>















</body>
</html>