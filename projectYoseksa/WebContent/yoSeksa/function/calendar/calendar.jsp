<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.diarydao.DiaryDAO"%>
<%@page import="com.diarydao.DiaryDTO"%>
<%@page session="true" import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%-- <c:if test="${sessionScope.nickname == null}">
	<c:redirect url="diary_loginPlz.sek"/>
</c:if>
------------${sessionScope.member_id }
 --%>
<%
		HttpSession session2=request.getSession();
		int member_no=(int) session.getAttribute("member_no");		
		String nickname=(String)session.getAttribute("nickname");
	
		String id=(String)session.getAttribute("member_id");
		
		if(nickname==null || nickname=="")
		{
%>
			<script language="javascript">
				location.replace("diary_loginPlz.sek"); 
			</script>
<%
		}

%>
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


<link href="yoSeksa/css/meal_table.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css" href="yoSeksa/shadow_calendar/css/shadowbox.css"/>
<link href="yoSeksa/css/calendar.css" type="text/css" rel="stylesheet" media="all">
<script type="text/javascript" src="yoSeksa/shadow_calendar/js/shadowbox.js"></script>


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

<!-- script 매인 매뉴 스크팁트-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			    $('.slideshow').cycle({
					fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
				});
			    
			});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		/* affix the navbar after scroll below header */
		$('#nav').affix({
			offset: {top: $('header').height()-$('#nav').height()}
		});
		
		/* affix-top 에서 affix로 수정될대 이벤트 발생*/
		$('#nav').on("affix.bs.affix",function(){
			$("#startmain").text("haa!");
		});
		/* affix에서 affix-top으로 전환될때 이벤트 발생*/
		$('#nav').on("affix-top.bs.affix",function(){
			$("#startmain").text("Search");
		});
	});        
</script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
</script>

<!--script-->
<script type="text/javascript">
Shadowbox.init({
	players:["iframe"]
});
function addRecipeOnTable(year,month,day)
{
	Shadowbox.open({
		content:'yoSeksa/function/calendar/add_recipe_popup.jsp?year='+year+'&month='+month+'&day='+day,
		player:'iframe',
		title:'다이어리에 레시피를 추가해보세요!',
		width:800,
		height:600
	});
}
</script>


<!-- 마우스 오버 이미지 확대 -->

<script type="text/javascript">
            $(document).ready(function() {
                  
                var xOffset = 10;
                var yOffset = 30;
 
                $(document).on("mouseover",".thumbna",function(e){ //마우스 오버시
                     
                    $("body").append("<p id='preview'><img src='"+ $(this).attr("src") +"' width='400px' /></p>"); //보여줄 이미지를 선언                       
                    $("#preview")
                        .css("top",(e.pageY - xOffset) + "px")
                        .css("left",(e.pageX + yOffset) + "px")
                        .fadeIn("fast"); //미리보기 화면 설정 셋팅
                });
                 
                $(document).on("mousemove",".thumbna",function(e){ //마우스 이동시
                    $("#preview")
                        .css("top",(e.pageY - xOffset) + "px")
                        .css("left",(e.pageX + yOffset) + "px");
                });
                 
                $(document).on("mouseout",".thumbna",function(){ //마우스 아웃시
                    $("#preview").remove();
                });
                  
            });
        </script>
        
        <style>
	       /* 미리보기 스타일 셋팅 */
            #preview{
                z-index: 9999;
                position:absolute;
                border:0px solid #ccc;
                background:#333;
                padding:1px;
                display:none;
                color:#fff;
            }
</style>
        

<!-- 이미지 확대 끝 -->
</head>
<body id="diary_main_body" style="background-image: url('yoSeksa/images/calendar_background.jpg')">


<div id="embed-container">

		<table border='0' width='100%' height="10%" celpadding='0' cellspacing='0'>
		  <tr>
		   <td width='33%' align='right' valign='middle'><a href="diary.sek?month=<%=currMonth%>&year=<%=currYear%>&action=0"><font size="4" color="#592424">◀</font></a></td>
		   <td width='33%' align='center' valign='middle'><b><font size="4" color="#592424"><%=getDateName (cal.get(cal.MONTH)) + " " + cal.get(cal.YEAR)%></font></b></td>
		   <td width='33%' align='left' valign='middle'><a href="diary.sek?month=<%=currMonth%>&year=<%=currYear%>&action=1"><font size="4" color="#592424">▶</font></a></td>
		  </tr>
		</table>
		<table border="0" width="100%" height="90%" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0">
		  <td width="100%" height="90%">
		    <table id="mealtable" border="0" width=100% height="90%" style="border-collapse: collapse;background-color: rgba( 255, 255, 255, 0 )" bordercolor="#f4f4f4" cellpadding="10" cellspacing="0" >
		     <tr style="border-bottom: solid 1px;border-bottom-color: rgba( 255, 255, 255, 0.2)">
		          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
		          <font color="#B30000" size="5"><b>Sun</b></font></td>
		          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
		          <font color="#592424" size="5"><b>Mon</b></font></td>
		          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
		          <font color="#7d3333" size="5"><b>Tues</b></font></td>
		          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
		         <font color="#592424" size="5"><b>Wed</b></font></td>
		          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
		          <font color="#7d3333" size="5"><b>Thurs</b></font></td>
		          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
		          <font color="#592424" size="5"><b>Fri</b></font></td>
		          <td width="14%" align="center" nowrap bordercolor="#666666" style="background-color: rgba( 255, 255, 255, 0 )">
		          <font color="#000099" size="5"><b>Sat</b></font></td>
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
		      <td style="<%=bgStyle %>" align="left" valign="top">&nbsp;<a href="#" onclick="addRecipeOnTable(<%=currYear %>,<%=currMonth+1 %>,<%=dispDay %>)"><%=dispDay%></a><br>
<%

			
			Map map=new HashMap();
			map.put("member_no", member_no);
			List<DiaryDTO> dlist=DiaryDAO.diaryListData(map);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			DecimalFormat df=new DecimalFormat("00");
			String dlDate;
			String calDate=currYear+"-"+df.format((currMonth+1))+"-"+df.format(dispDay);			
			String dlBld;			
			for(DiaryDTO dl:dlist)
			{
				dlDate=sdf.format(dl.getDiary_date());//2010-1-1  => 2010-01-01 형으로 변환
				dlBld=dl.getDiary_bld();
				if(dlBld.equals("Breakfast"))
				{
					dlBld="B";
				}
				else if(dlBld.equals("Lunch"))
				{
					dlBld="L";
				}
				else
				{
					dlBld="D";
				}
				
				if(dlDate.equals(calDate.trim()))//사용자가 클릭한 날짜와 켈린더의 날짜가 서로 일치하면
				{
%>					<!-- 아점저 출력 --><!-- 레시피 제목 출력 -->
					&nbsp;&nbsp;<a href="recipe_content.sek?rno=<%=dl.getRecipe_no() %>" id="dateDisplay">
					<b><%=dlBld %></b>&nbsp;<%=dl.getRecipe_sub() %>
<%
						if(!dl.getRecipe_img().equals("image"))//이미지 파일이 등록돼있으면 출력
						{
%>
								<img src="yoSeksa/contentImg/<%=dl.getRecipe_img() %>" class="thumbna" height="40px" width="40px">
<%
						}
%>
						</a>									
					<br>												
<%
				}				
				
			}
%>		
		
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
</div>
</body>
</html>
