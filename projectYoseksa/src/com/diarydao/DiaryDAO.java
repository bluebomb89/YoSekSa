package com.diarydao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.recipedao.RecipeDTO;

public class DiaryDAO {
	private static SqlSessionFactory ssf;
	static{
		try {
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			// TODO: handle exception
			System.out.println(ex.getMessage());
		}
	}
///////////////////////////////////////////////////////////////////	
	//검색내용 가지고 오기
	public static List<RecipeDTO> searchListData(Map map){
	List<RecipeDTO> list=new ArrayList<RecipeDTO>();
	SqlSession session=null;
	try{
		session=ssf.openSession();
		list=session.selectList("searchListData",map);
	}catch(Exception ex){
		System.out.println(ex.getMessage());
	}finally{
		if(session!=null)
			session.close();
	}
	return list;
   }
	
///////////////////////////////////////////////////////////////////		
	//검색한 총 페이직 가지고 오기
	public static int searchTotalPage(Map map){
		int total=0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			int count=session.selectOne("searchRowCount",map);
			total=(int)(Math.ceil(count/10.0));
		} catch (Exception ex) {
			// TODO: handle exception
			System.out.println(ex.getMessage());
		}
		finally{
			if(session!=null)
				session.close();
		}
		return total;
	}
///////////////////////////////////////////////////////		
	//다이어리에 insert
	public static void diaryInsert(DiaryDTO d)
	{
		SqlSession session=null;
		try {
			session=ssf.openSession(true);			
			session.insert("diaryInsert",d);
			System.out.println("2");
		} catch (Exception ex) {
			// TODO: handle exception
			System.out.println(ex.getMessage());
		}
		finally{
			if(session!=null)
				session.close();
		}
	}
	///////////////////////////////////////////////////////
		//다이어리에 출력
	public static List<DiaryDTO> diaryListData()
	{
		List<DiaryDTO> list=new ArrayList<DiaryDTO>();
		SqlSession session=null;
		try{
			session=ssf.openSession();
			list=session.selectList("diaryListData");
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}finally{
			if(session!=null)
				session.close();
		}
		return list;		
	}

	
	
	
}
