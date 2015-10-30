package com.noticedao;

import java.io.*;
import java.util.*;

import org.apache.ibatis.*;
import org.apache.ibatis.io.*;
import org.apache.ibatis.session.*;

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
	
	   // 데이터 가지고 오기 
	public static List<NoticeDTO> noticeListData(Map map){
		List<NoticeDTO> list=new ArrayList<NoticeDTO>();
		SqlSession session=null;
		try{
			session=ssf.openSession();
			list=session.selectList("boardListData",map);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}finally{
			if(session!=null)
				session.close();
		}
		return list;
		   //return ssf.openSession().selectList("boardListData",map);
	   }
}
