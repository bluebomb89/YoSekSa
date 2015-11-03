package com.recipedao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class RecipeDAO {
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
	public static void recipeInsert(RecipeDTO d)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(true);
			   session.insert("recipeInsert",d);
			   //session.commit();
		   }catch(Exception ex)
		   {
			   //session.rollback();
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			  if(session!=null)
				  session.close();
		   }
	   }
}
