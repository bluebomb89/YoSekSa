<%@page session="true" import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// Global Vars
int action = 0;  // incoming request for moving calendar up(1) down(0) for month
int currYear = 0; // if it is not retrieved from incoming URL (month=) then it is set to current year
int currMonth = 0; // same as year
//String boxSize = "70";  // how big to make the box for the calendar

//build 2 calendars

Calendar c = Calendar.getInstance();
Calendar cal = Calendar.getInstance();

   if (request.getParameter("action") == null) // Check to see if we should set the year and month to the current
   {
      currMonth = c.get(c.MONTH);
      currYear = c.get(c.YEAR);
      cal.set(currYear, currMonth,1);
   }

   else
   {
      if (!(request.getParameter("action") == null)) // Hove the calendar up or down in this if block
      {
         currMonth = Integer.parseInt(request.getParameter("month"));
         currYear = Integer.parseInt(request.getParameter("year"));

            if (Integer.parseInt( request.getParameter("action")) == 1 )
            {
               cal.set(currYear, currMonth, 1);
               cal.add(cal.MONTH, 1);
               currMonth = cal.get(cal.MONTH);
               currYear = cal.get(cal.YEAR);
            }
            else
            {
               cal.set(currYear, currMonth ,1);
               cal.add(cal.MONTH, -1);
               currMonth = cal.get(cal.MONTH);
               currYear = cal.get(cal.YEAR);
            }
      }
   } 
%>

<%!
    public boolean isDate(int m, int d, int y) // This method is used to check for a VALID date
    {
        m -= 1;
        Calendar c = Calendar.getInstance();
        c.setLenient(false);

        try
        {
                c.set(y,m,d);
                Date dt = c.getTime();
        }
          catch (IllegalArgumentException e)
        {
                return false;

        }
                return true;
    }
%>
<%!
   public String getDateName (int monthNumber) // This method is used to quickly return the proper name of a month
   {
      String strReturn = "";
      switch (monthNumber)
      { 
   case 0:
      strReturn = "January";
      break;
   case 1:
      strReturn = "February";
      break;
   case 2:
      strReturn = "March";
      break;
   case 3:
      strReturn = "April";
      break;
   case 4:
      strReturn = "May";
      break;
   case 5:
      strReturn = "June";
      break;
   case 6:
      strReturn = "July";
      break;
   case 7:
      strReturn = "August";
      break;
   case 8:
      strReturn = "September";
      break;
   case 9:
      strReturn = "October";
      break;
   case 10:
      strReturn = "November";
      break;
   case 11:
      strReturn = "December";
      break;
   }
   return strReturn;
    }
%>

<html>
<head>

<style>
	a:LINK {color: #fff; font-size: 15pt; text-decoration: none;}
    a:VISITED {color: #fff; text-decoration: none;}
    a:ACTIVE {color: #fff; text-decoration: none;}
    a:HOVER {color: #000000; text-decoration: none;}
</style>


<link href="../../css/meal_table.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css" href="../../shadow_calendar/css/shadowbox.css"/>
<link href="../../css/calendar.css" type="text/css" rel="stylesheet" media="all">
<script type="text/javascript" src="../../shadow_calendar/js/shadowbox.js"></script>

<script type="text/javascript">
Shadowbox.init({
	players:["iframe"]
});
function addRecipeOnTable()
{
	Shadowbox.open({
		content:'add_recipe_popup.jsp',
		player:'iframe',
		title:'ADD NEW RECIPE',
		width:800,
		height:600
	});
}
</script>

</head>
<body style="background-image: url('../../images/calendar_background.jpg')">

<table border='0' width='100%' height="10%" celpadding='0' cellspacing='0'>
  <tr>
   <td width='33%' align='right' valign='middle'><a href="../../function/calendar/calendar.jsp?month=<%=currMonth%>&year=<%=currYear%>&action=0"><font size="4">◀</font></a></td>
   <td width='33%' align='center' valign='middle'><b><font size="4" color="white"><%=getDateName (cal.get(cal.MONTH)) + " " + cal.get(cal.YEAR)%></font></b></td>
   <td width='33%' align='left' valign='middle'><a href="../../function/calendar/calendar.jsp?month=<%=currMonth%>&year=<%=currYear%>&action=1"><font size="4">▶</font></a></td>
  </tr>
</table>
<table border="0" width="100%" height="90%" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0">
  <td width="100%" height="90%">
    <table id="mealtable" border="0" width=100% height="90%" style="border-collapse: collapse;background-color: rgba( 255, 255, 255, 0 )" bordercolor="#f4f4f4" cellpadding="10" cellspacing="0" >
     <tr style="border-bottom: solid 1px;border-bottom-color: rgba( 255, 255, 255, 0.2">
          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
          <font color="#FFFFFF"><b>Sun</b></font></td>
          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
          <font color="#FFFFFF"><b>Mon</b></font></td>
          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
          <font color="#FFFFFF"><b>Tues</b></font></td>
          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
         <font color="#FFFFFF"><b>Wed</b></font></td>
          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
          <font color="#FFFFFF"><b>Thurs</b></font></td>
          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
          <font color="#FFFFFF"><b>Fri</b></font></td>
          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
          <font color="#FFFFFF"><b>Sat</b></font></td>
     </tr>
<%

//'Calendar loop


   int currDay;
   String todayColor;
   String bgStyle;
   int count = 1;
   int dispDay = 1;


   for (int w = 1; w < 7; w++)
   {
%>
     <tr>
<% 
        for (int d = 1; d < 8; d++)
      {
         if (! (count >= cal.get(c.DAY_OF_WEEK)))
         { 

%>
      <td valign="top" align="left">&nbsp;</td>
<%
            count += 1;
         } 
         else
         {

            if (isDate ( currMonth + 1, dispDay, currYear) ) // use the isDate method
            { 

               if ( dispDay == c.get(c.DAY_OF_MONTH) && c.get(c.MONTH) == cal.get(cal.MONTH) && c.get(c.YEAR) == cal.get(cal.YEAR)) // Here we check to see if the current day is today
                    {
                     todayColor = "#ffe17b";
                     bgStyle="background-color: rgba( 255, 255, 255, 0.2 )";
                  }
                  else
                  {
                     todayColor = "#ffffff";
                     bgStyle="background-color: rgba( 255, 255, 255, 0 );color:#FFFFFF";
                  }
%> 
      <td style="<%=bgStyle %>" align="left" valign="top">&nbsp;<a href="#" onclick="addRecipeOnTable()"><%=dispDay%></a><br>
      </td>
<%
               count += 1;
               dispDay += 1;
            }
            else
            {
%>
      <td align="left" valign="top">&nbsp;</td>
<%
            } 
         }

       } 
%>
     </tr> 
<% 
}
%>
</table>
</td>
</table>

</body>
</html>