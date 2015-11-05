package com.Reply;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class ReplyDAO {
	   private SqlSessionFactory ssf;
	   private SqlSession session;
	   public ReplyDAO()
	   {
		   try
		   {
			   ssf=CreateSqlSessionFactory.getSsf();
			   //session=ssf.openSession();
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
	   }
//	   public static int replySequnece(int recipe_no){	
//		   session=ssf.openSession(true);
//		   Recipe_replyMapper mapper=(Recipe_replyMapper)session.getMapper(Recipe_replyMapper.class);
//		   int reply_no=mapper.replySequnece(recipe_no);
//		   System.out.println("dao no="+reply_no);
//		   return reply_no ;
//		   
//	   }
	   public void replyNewInsert(ReplyDTO d){
		   session=ssf.openSession();
		   Recipe_replyMapper mapper=(Recipe_replyMapper)session.getMapper(Recipe_replyMapper.class);
		   System.out.println("aaaaa");
		   mapper.replyNewInsert(d);
		   System.out.println("bbb");
		   
	   }

}
