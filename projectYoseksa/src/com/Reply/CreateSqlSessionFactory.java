package com.Reply;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.util.*;
import java.io.*;
public class CreateSqlSessionFactory {
	private static SqlSessionFactory ssf;
	static{
		try{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
			reader.close();
			Class[] mappers={Recipe_replyMapper.class};
			for(Class m:mappers){
				ssf.getConfiguration().addMapper(m);
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
	public static SqlSessionFactory getSsf() {
		return ssf;
	}
	
}
