<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		<div id="h2_title">
			<h2>�丮�� �߰��ϼ���!</h2>
		</div>
	</center>
	
	<div id="icon_title">
		<span class="glyphicon glyphicon-plus" aria-hidden="true">
	</div>
	
	

	<hr id="title_underline">
	
	
	<br>

      <div id="food_date">
       <label>��¥</label>
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
	   <input type="radio" name="bld" value="">&nbsp;��ħ&nbsp;&nbsp;<span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span><br><br>
	   <input type="radio" name="bld" value="Lunch" checked>&nbsp;����&nbsp;&nbsp;<span class="glyphicon glyphicon-glass" aria-hidden="true"></span><br><br>
	   <input type="radio" name="bld" value="Dinner">&nbsp;����&nbsp;&nbsp;<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
      </div>
      

       
       <div id="food_search">
       	<label>�丮��</label>
      	<input type="text" name="recipe" class="form_input_recipe"><br>
        <input type="submit" value="�˻�" class="form_input_recipe">
       </div>
        
        
       <div id="food_search_result">
       
       </div> 
        
        
        
        
</div>




















</body>
</html>