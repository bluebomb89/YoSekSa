package com.recipedao;

import java.io.Reader;
import java.util.*;


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
      // ������ ������ ���� 
       public static List<RecipeDTO> recipeListData(Map map)
       {
          List<RecipeDTO> list=
                new ArrayList<RecipeDTO>();
          SqlSession session=null;
          try
          {
             session=ssf.openSession();
             list=session.selectList("recipeListData",map);
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
       // ��������
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
   public static int sequnece(){
      int sequence=0;
         SqlSession session=null;
         try
         {
            session=ssf.openSession();
            sequence=session.selectOne("sequence");
         }catch(Exception ex)
         {
            System.out.println(ex.getMessage());
         }
         finally
         {
            if(session!=null)
               session.close();
         }
         return sequence;
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
   public static void materialInsert(MaterialDTO d)
      {
         SqlSession session=null;
         try
         {
            session=ssf.openSession(true);
            session.insert("materialInsert",d);
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
   public static void soueceInsert(SourceDTO d)
      {
         SqlSession session=null;
         try
         {
            session=ssf.openSession(true);
            session.insert("soueceInsert",d);
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
   public static void recipeContentInsert(RecipeContentDTO d){
	         SqlSession session=null;
	         try
	         {
	            session=ssf.openSession(true);
	            session.insert("recipeContentInsert",d);
	            //session.commit();
	         }catch(Exception ex)
	         {
	            //session.rollback();
	            System.out.println(ex.getMessage());
	         }
	         finally
	         {
	           if(session!=null){
	              session.close();
	           }
	         }
	      }
   public static RecipeDTO recipeContentData(int recipe_no,int type)
   {
	   SqlSession session=null;
	   RecipeDTO d=new RecipeDTO();
	   try
	   {
		   session=ssf.openSession(true);
		   if(type==1)
		   {
		     session.update("yoseksaHitIncrement",recipe_no);
		   }
		   //session.commit();
		   d=session.selectOne("yoseksaContentData", recipe_no);
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
	   return d;
   }
   public static List<MaterialDTO> materialData(int recipe_no)
   {
	   SqlSession session=ssf.openSession();
	   List<MaterialDTO> list=
			   session.selectList("materialData",recipe_no);
	   session.close();
	   return list;
   }
   public static List<SourceDTO> sourceData(int recipe_no)
   {
	   SqlSession session=ssf.openSession();
	   List<SourceDTO> list=
	   session.selectList("sourceData",recipe_no);
	   session.close();
	   return list;
   }
   public static List<RecipeContentDTO> contentData(int recipe_no)
   {
	   SqlSession session=ssf.openSession();
	   List<RecipeContentDTO> list=
	   session.selectList("contentData",recipe_no);
	   session.close();
	   return list;
   }

}









