package com.memberdao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.memberdao.MemberDTO;

public class MemberDAO {
	private static SqlSessionFactory ssf;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	public static int memberIdCount(String id)
	{
		int count=0;
		SqlSession session=ssf.openSession();
		count=session.selectOne("memberIdCount",id);
		session.close();
		return count;
	}
	/*
	 * 
	 */
	public static MemberDTO memberGetInfo(String id)
	{
		MemberDTO d=new MemberDTO();
		SqlSession session=ssf.openSession();
		d=session.selectOne("memberGetInfo",id);
		session.close();
		return d;
	}

	public static void memberInsert(MemberDTO d) 
	{
		SqlSession session = null;
		try 
		{
			session = ssf.openSession(true);
			session.insert("memberInsert", d);
			// session.commit();
		} 
		catch (Exception ex) 
		{
			// session.rollback();
			System.out.println(ex.getMessage());
		} 
		finally 
		{
			if (session != null)
				session.close();
		}
	}
}
