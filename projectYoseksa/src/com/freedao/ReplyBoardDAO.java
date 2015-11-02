package com.freedao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/*
 *   class A
 *   {
 *       int a=10;
 *       
 *       {
 *          a=20;
 *       }
 *       
 *       public A()
 *       {
 *          a=30;
 *       }
 *   }
 *   A aa=new A();  => 30
 */
import java.util.*;
import java.io.*;
public class ReplyBoardDAO {
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
   public static List<ReplyBoardDTO> boardListData(Map map)
   {
	   List<ReplyBoardDTO> list=
			   new ArrayList<ReplyBoardDTO>();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   list=session.selectList("boardListData",map);
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
   public static int boardTotalPage()
   {
	   int total=0;
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   int count=session.selectOne("boardRowCount");
		   total=(int)(Math.ceil(count/10.0));
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
   public static void boardInsert(ReplyBoardDTO d)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession(true);
		   session.insert("boardInsert",d);
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
   
   public static ReplyBoardDTO boardContentData(int no)
   {
	   SqlSession session=null;
	   ReplyBoardDTO d=new ReplyBoardDTO();
	   try
	   {
		   session=ssf.openSession(true);
		   session.update("boardHitIncrement",no);
		   //session.commit();
		   d=session.selectOne("boardContentData", no);
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
   
   public static ReplyBoardDTO boardUpdateData(int no)
   {
	   SqlSession session=null;
	   ReplyBoardDTO d=new ReplyBoardDTO();
	   try
	   {
		   session=ssf.openSession(true);
		   //session.update("boardHitIncrement",no);
		   //session.commit();
		   d=session.selectOne("boardContentData", no);
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
   
   public static String boardGetPwd(int no)
   {
	   SqlSession session=null;
	   String d="";
	   try
	   {
		   session=ssf.openSession(true);
		   //session.update("boardHitIncrement",no);
		   //session.commit();
		   d=session.selectOne("boardGetPwd", no);
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
   public static void boardUpdate(ReplyBoardDTO d)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession(true);
		   session.insert("boardUpdate",d);
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
   public static void boardDelete(int no)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   session.delete("boardReplyDelete",no);
		   session.delete("boardDelete",no);
		   session.commit();
	   }catch(Exception ex)
	   {
		   session.rollback();
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   if(session!=null) session.close();
	   }
   }
   public static int boardReplyCount(int bno)
   {
	   SqlSession session=ssf.openSession();
	   int count=session.selectOne("boardReplyCount",bno);
	   session.close();
	   return count;
   }
   public static List<ReplyDTO> replyListData(int bno)
   {
	   SqlSession session=ssf.openSession();
	   List<ReplyDTO> list=
			   session.selectList("replyListData",bno);
	   session.close();
	   return list;
   }
   public static void replyNewInsert(ReplyDTO d)
   {
	   SqlSession session=ssf.openSession(true);
	   session.insert("replyNewInsert",d);
	   session.close();
   }
   
}






