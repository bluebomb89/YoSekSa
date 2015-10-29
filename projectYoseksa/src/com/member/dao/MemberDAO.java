package com.member.dao;
import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.member.dao.MemberDTO;

import java.util.*;

public class MemberDAO {
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
	public List<MemberDTO> memberAllData()
	{
		return ssf.openSession().selectList("memberAllData");
	}
	public void memberInsert(MemberDTO dto){
		ssf.openSession(true).insert("memberInsert",dto); //true ���� �ָ� �ڵ����� commit;(auto commit)
		// true�� ���� �ʴ´ٸ� ssf.openSession().commit();
	}
}
