<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../../css/add_recipe_popup.css" type="text/css" rel="stylesheet" media="all">
<link href="../../css/bootstrap.css" type="text/css" rel="stylesheet" media="all">

<title>Add Recipe</title>
</head>
<body style="background-color: rgba( 255, 255, 255, 0 );">




<div id="addRecipeOnTable">	
<center>
<h2>요리를 추가하세요!</h3>
</center>

<hr id="title_underline">


<br>

      <div id="food_date">
       <label>날짜</label>
       <input type="date" name="date" class="form_input_recipe">
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
      

	  <div id="bld">
	   <input type="radio" name="bld" value="">&nbsp;아침&nbsp;&nbsp;<span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span><br><br>
	   <input type="radio" name="bld" value="Lunch" checked&nbsp;>&nbsp;점심&nbsp;&nbsp;<span class="glyphicon glyphicon-glass" aria-hidden="true"></span><br><br>
	   <input type="radio" name="bld" value="Dinner">&nbsp;저녁&nbsp;&nbsp;<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
      </div>
      

       
       <div id="food_search">
       	<label>요리명</label>
      	<input type="text" name="recipe" class="form_input_recipe"><br>
        <input type="submit" value="검색" class="form_input_recipe">
       </div>
        
        
       <div id="food_search_result">
       
       </div> 
        
        
        
        
</div>




















</body>
</html>