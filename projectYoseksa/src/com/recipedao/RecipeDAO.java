package com.recipedao;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.util.*;
import java.io.*;
public class RecipeDAO {
//	<!-- 우식 -->
//	<!-- ㅁㅁ -->
//	<!-- 영권 -->
//	<!-- ㅁㅁ -->
//	<!-- 태진 -->
//	<!-- ㅁㅁ -->
//	<!-- 승현 -->
//	<!-- ㅁㅁ -->
//	<!-- 홍의 -->
//	<!-- ㅁㅁ -->
//	<!-- 민영 -->
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
		   // 데이터 가지고 오기 
		   public static List<RecipeDTO> recipeListData(Map map)
		   {
			   List<RecipeDTO> list=
					   new ArrayList<RecipeDTO>();
			   SqlSession session=null;
			   try
			   {
				   session=ssf.openSession();
				   list=session.selectList("recipeContentData",map);
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
		   // 총페이지
		   public static int recipeTotalPage()
		   {
			   int total=0;
			   SqlSession session=null;
			   try
			   {
				   session=ssf.openSession();
				   int count=session.selectOne("recipeRowCount");
				   total=(int)(Math.ceil(count/12.0));
			   }catch(Exception ex)
			   {
				   System.out.println(ex.getMessage());
			   }
			   finally
			   {
				   if(session!=null)
					   session.close();
			   }
			   return total;
		   }
//	<!-- ㅁㅁ -->
}
