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
}









