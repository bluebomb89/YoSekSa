package com.freedao;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.util.*;
import java.io.*;
public class FreeBoardDAO {
<<<<<<< HEAD
	private static SqlSessionFactory ssf;
	   static
	   {
		   try
		   {
			   Reader reader=Resources.getResourceAsReader("Config.xml");
			   ssf=new SqlSessionFactoryBuilder().build(reader);
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
	   }
	   // 汽戚斗 亜走壱 神奄 
	   public static List<FreeBoardDTO> boardInsert(Map map)
	   {
		   List<FreeBoardDTO> list=
				   new ArrayList<FreeBoardDTO>();
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   list=session.selectList("boardInsert",map);
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();
		   }
		   return list;
		   //return ssf.openSession().selectList("boardListData",map);
	   }
//	<!-- 酔縦 -->
//	<!-- けけ -->
//	<!-- 慎映 -->
//	<!-- けけ -->
//	<!-- 殿遭 -->
//	<!-- けけ -->
//	<!-- 渋薄 -->
//	<!-- けけ -->
//	<!-- 畠税 -->
//	<!-- けけ -->
//	<!-- 肯慎 -->
//	<!-- けけ -->
}
