<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	int year=Integer.parseInt(request.getParameter("year"));
	int month=Integer.parseInt(request.getParameter("month"));
	int day=Integer.parseInt(request.getParameter("day"));
	
	DecimalFormat df=new DecimalFormat("00");
%>

<c:set var="year" value="<%=year %>"/>
<c:set var="month" value="<%=df.format(month) %>"/>
<c:set var="day" value="<%=df.format(day) %>"/>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../../css/add_recipe_popup.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<title>Add Recipe</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>       
<script type="text/javascript">
var date="";
var bld="";
var keyword="";
$(function(){
	$('#searchBtn').click(function(){
		
		date=$('#date').val();
		bld=$("input[name='bld']:checked").val();
		keyword=$('#keyword').val();
		if(keyword==""){
			alert("키워드를 입력하세요");
			$('#keyword').focus();
			return;
		}
		else{
			$('#schResult').attr("src", "../../function/calendar/add_recipe_popup_search_result.jsp?keyword="+keyword+"&bld="+bld+"&date="+date);
			return;
		}
	});//searchBtn.click-end
});

</script>  
       
       

</head>
<body style="background-color: rgba( 255, 255, 255, 0 );">


<div id="addRecipeOnTable">	
	<center>
		<div id="h2_title">
			<h2>요리를 추가하세요!${year }-${month }-${day }</h2>
		</div>
	</center>
	
	<div id="icon_title">
		<span class="glyphicon glyphicon-plus" aria-hidden="true">
	</div>	

	<hr id="title_underline">
		
	<br>

      <div id="food_date">
       <label>날짜</label>
       <input type="date" id="date" name="date" class="form_input_recipe" value="${year }-${month }-${day }">
      </div>
      
<!--       <div id="icon_morning">
      <span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span>
      </div>
      
      <div id="icon_lunch">
      <span class="glyphicon glyphicon-glass" aria-hidden="true"></span>
      </div>
      
      <div id="icon_dinner">
      <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
      </div>      
       -->
      
	
	<form name="search">
	  <div id="bld">
	   <input type="radio" name="bld" value="Breakfast">&nbsp;아침&nbsp;&nbsp;<span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span><br><br>
	   <input type="radio" name="bld" value="Lunch" checked>&nbsp;점심&nbsp;&nbsp;<span class="glyphicon glyphicon-glass" aria-hidden="true"></span><br><br>
	   <input type="radio" name="bld" value="Dinner">&nbsp;저녁&nbsp;&nbsp;<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
      </div>
      
      
       <div id="food_search">
       	<label>요리명</label>
      	<input type="text" id="keyword" name="keyword" class="form_input_recipe"><br>
        <input type="button" id="searchBtn" value="검색" class="form_input_recipe">
       </div>
       </form>       
        
       <div id="food_search_result">
              
       		<iframe name="food_search_result_iframe" id="schResult" src="" width="100%" height="100%" frameborder="3" scrolling="yes"></iframe>
       
       </div> 
        
        
        
        
</div>



</body>
</html>