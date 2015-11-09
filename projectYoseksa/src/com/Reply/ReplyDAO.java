package com.Reply;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.common.CreateSqlSessionFactory;

public class ReplyDAO {
	private  SqlSessionFactory ssf;
	private  SqlSession session;
	private  Recipe_replyMapper mapper;
	private  static ReplyDAO dao;
	public ReplyDAO(){
		ssf=CreateSqlSessionFactory.getSsf();
	}
	public static ReplyDAO newInstance(){
		if(dao==null)
			dao=new ReplyDAO();
		return dao;
	}
	//댓글 입력
	public void replyNewInsert(ReplylDTO d){
		try{
			session=ssf.openSession(true);
			mapper=(Recipe_replyMapper)session.getMapper(Recipe_replyMapper.class);
			mapper.replyNewInsert(d);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}finally {
		   if(session!=null)
			   session.close();
		}

	}
	// 댓글 목록 출력
	public List<ReplylDTO> replyView(int recipe_no){
		List<ReplylDTO> list=new ArrayList<ReplylDTO>();
		try{
			session=ssf.openSession();
			mapper=(Recipe_replyMapper)session.getMapper(Recipe_replyMapper.class);
			list=mapper.replyView(recipe_no);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}finally{
		   if(session!=null)
			   session.close();
		}
		return list;
	}
	public int replyTotal(int recipe_no){
		int rtotal=0;
		try{
			session=ssf.openSession();
			mapper=(Recipe_replyMapper)session.getMapper(Recipe_replyMapper.class);
			rtotal=mapper.replyTotal(recipe_no);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}finally{
		   if(session!=null)
			   session.close();
		}
		return rtotal;
	}
	// 댓글에 댓글
	public ReplylDTO replyParentInfo(int reply_no){
		ReplylDTO d=new ReplylDTO();
		try{
			session=ssf.openSession();
			mapper=(Recipe_replyMapper)session.getMapper(Recipe_replyMapper.class);
			d=mapper.replyParentInfo(reply_no);
			
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}finally{
		   if(session!=null)
			   session.close();
		}
		return d;
	}
	public void replyStepIncrement(ReplylDTO d){
		try{
			session=ssf.openSession(true);
			mapper=(Recipe_replyMapper)session.getMapper(Recipe_replyMapper.class);
			mapper.replyStepIncrement(d);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}finally{
		   if(session!=null)
			   session.close();
		}
	}
	public void replyReInsert(ReplylDTO d){
		try{
			session=ssf.openSession(true);
			mapper=(Recipe_replyMapper)session.getMapper(Recipe_replyMapper.class);
			mapper.replyReInsert(d);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}finally{
		   if(session!=null)
			   session.close();
		}
	}
	public void replyDepthIncrement(int recipe_no){
		try{
			session=ssf.openSession(true);
			mapper=(Recipe_replyMapper)session.getMapper(Recipe_replyMapper.class);
			mapper.replyDepthIncrement(recipe_no);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}finally{
		   if(session!=null)
			   session.close();
		}
	}
	
}






























