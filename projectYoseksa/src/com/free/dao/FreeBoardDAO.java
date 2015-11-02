package com.free.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import java.util.*;
import java.io.*;
import com.yoseksa.*;

public class FreeBoardDAO {
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
   public static List<FreeBoardDTO> freeboardListData(Map map)
   {
	   List<FreeBoardDTO> list=
			   new ArrayList<FreeBoardDTO>();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   list=session.selectList("freeboardListData",map);
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
   public static int freeboardTotalPage()
   {
	   int total=0;
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   int count=session.selectOne("freeboardRowCount");
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
   public static void freeboardInsert(FreeBoardDTO d)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession(true);
		   session.insert("freeboardInsert",d);
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
   
   public static FreeBoardDTO freeboardContentData(int no,int type)
   {
	   SqlSession session=null;
	   FreeBoardDTO d=new FreeBoardDTO();
	   try
	   {
		   session=ssf.openSession(true);
		   //session.commit();
		   d=session.selectOne("freeboardContentData", no);
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
   
   public static FreeBoardDTO freeboardUpdateData(int no)
   {
	   SqlSession session=null;
	   FreeBoardDTO d=new FreeBoardDTO();
	   try
	   {
		   session=ssf.openSession(true);
		   //session.update("boardHitIncrement",no);
		   //session.commit();
		   d=session.selectOne("freeboardContentData", no);
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
   
   public static String freeboardGetPwd(int no)
   {
	   SqlSession session=null;
	   String d="";
	   try
	   {
		   session=ssf.openSession(true);
		   //session.update("boardHitIncrement",no);
		   //session.commit();
		   d=session.selectOne("freeboardGetPwd", no);
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
   public static void freeboardUpdate(FreeBoardDTO d)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession(true);
		   session.insert("freeboardUpdate",d);
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
   public static void freeboardDelete(int no)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   session.delete("freeboardReplyDelete",no);
		   session.delete("freeboardDelete",no);
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
   public static int freeboardReplyCount(int bno)
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
   
   public static ReplyDTO replyParentInfo(int bno)
   {
	   SqlSession session=ssf.openSession();
	   ReplyDTO list=
			   session.selectOne("replyParentInfo",bno);
	   session.close();
	   return list;
   }
   public static void replyStepIncrement(ReplyDTO d)
   {
	   SqlSession session=ssf.openSession(true);
	   session.update("replyStepIncrement",d);
	   session.close();
   }
   public static void replyDepthIncrement(int no)
   {
	   SqlSession session=ssf.openSession(true);
	   session.update("replyDepthIncrement",no);
	   session.close();
   }
   public static void replyReInsert(ReplyDTO d)
   {
	   SqlSession session=ssf.openSession(true);
	   session.insert("replyReInsert",d);
	   session.close();
   }
   public static void replyReUpdate(ReplyDTO d)
   {
	   SqlSession session=ssf.openSession(true);
	   session.update("replyReUpdate",d);
	   session.close();
   }
   
   public static ReplyDTO replyGetDepthRoot(int no)
   {
	   SqlSession session=ssf.openSession();
	   ReplyDTO list=
			   session.selectOne("replyGetDepthRoot",no);
	   session.close();
	   return list;
   }
   public static void replyDepthDecrement(int no)
   {
	   SqlSession session=ssf.openSession(true);
	   session.update("replyDepthDecrement",no);
	   session.close();
   }
   public static void replyMsgUpdate(int no)
   {
	   SqlSession session=ssf.openSession(true);
	   session.update("replyMsgUpdate",no);
	   session.close();
   }
   public static void replyDelete(int no)
   {
	   SqlSession session=ssf.openSession(true);
	   session.delete("replyDelete",no);
	   session.close();
   }
   public static int replyPageTotalpage(int bno)
   {
	   SqlSession session=ssf.openSession();
	   int count=session.selectOne("replyPageRowCount",bno);
	   session.close();
	   return (int)(Math.ceil(count/5.0));
   }
}






