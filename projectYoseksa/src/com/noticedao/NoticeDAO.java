package com.noticedao;

import java.io.*;
import java.util.*;

import org.apache.ibatis.*;
import org.apache.ibatis.io.*;
import org.apache.ibatis.session.*;

import com.noticedao.NoticeDTO;

public class NoticeDAO {
	private static SqlSessionFactory ssf;
	static{
		try{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
//	홍의 작성

	public static void noticeInsert(NoticeDTO d)
	{
		SqlSession session=null;
		try{
			session=ssf.openSession(true);
			session.insert("noticeInsert",d);
			//session.commit();
		}catch(Exception ex){
				//session.rollback();
				System.out.println(ex.getMessage());
				}
		finally
		{
			if(session!=null)
				session.close();
			}
		}
	public List<NoticeDTO> empAllData(){
		return ssf.openSession().selectList("empAllData");
	}
//	영권 작성
	   // 데이터 가지고 오기 
		public static List<NoticeDTO> noticeListData(Map map){
		List<NoticeDTO> list=new ArrayList<NoticeDTO>();
		SqlSession session=null;
		try{
			session=ssf.openSession();
			list=session.selectList("noticeListData",map);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}finally{
			if(session!=null)
				session.close();
		}
		return list;
		   //return ssf.openSession().selectList("boardListData",map);
	   }
	   // 총페이지
	   public static int noticeTotalPage()
	   {
		   int total=0;
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession();
			   int count=session.selectOne("noticeRowCount");
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

}
