package com.memberdao;
import java.io.Reader;
import java.sql.*;
import javax.sql.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.memberdao.MemberDTO;

import oracle.jdbc.OracleTypes;

import javax.naming.*;
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
		ssf.openSession(true).insert("memberInsert",dto); //true 값을 주면 자동으로 commit;(auto commit)
		// true를 주지 않는다면 ssf.openSession().commit();
	}
}
