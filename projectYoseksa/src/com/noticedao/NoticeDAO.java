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
	public static List<NoticeDTO> noticeListData()
	{
		List<NoticeDTO> list=new ArrayList<NoticeDTO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession();
			list=session.selectList("NoticeDTO");
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
	
	/*public List<NoticeDTO> empAllData(){
		return ssf.openSession().selectList("empAllData");
	}*/
}
