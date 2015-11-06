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
		session=ssf.openSession(true);
		mapper=(Recipe_replyMapper)session.getMapper(Recipe_replyMapper.class);
		mapper.replyNewInsert(d);
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
			
		}
		return list;
	}
}














