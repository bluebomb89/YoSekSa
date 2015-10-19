<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="css/add_recipe_popup.css" type="text/css" rel="stylesheet" media="all">
<title>Add Recipe</title>
</head>
<body>


<div id="addRecipeOnTable">	
<center>
<h2>요리를 추가하세요!</h3>
</center>
<br>
     &nbsp;<input type="radio" name="bld" value="">Breakfast
     <input type="radio" name="bld" value="Lunch" checked>Lunch
     <input type="radio" name="bld" value="Dinner">Dinner
     <br><br>
        &nbsp;날짜 : <input type="date" name="date"><br><br>
        &nbsp;요리명 : <input type="text" name="recipe">&nbsp;<input type="submit" value="추가">
</div>

</body>
</html>