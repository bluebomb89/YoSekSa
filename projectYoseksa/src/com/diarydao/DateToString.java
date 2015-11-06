package com.diarydao;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateToString {
	
	public static Date toDate(String strDate)
	{
		Date date = null;
		  try {
			   SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");	
			   date = format.parse(strDate);			   
			  } catch (java.text.ParseException ex) {
			   ex.printStackTrace();
			  }
		  return date;
	}

}
