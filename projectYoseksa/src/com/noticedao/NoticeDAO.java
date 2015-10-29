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
}
