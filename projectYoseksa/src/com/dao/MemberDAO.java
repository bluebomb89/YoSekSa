package com.dao;
import java.sql.*;
import javax.sql.*;

import oracle.jdbc.OracleTypes;

import javax.naming.*;
import java.util.*;

public class MemberDAO {
	 private Connection conn;// 오라클 연결 
     private PreparedStatement ps;// SQL전송
     private final String URL="jdbc:oracle:thin:@localhost:1523:ORCL";
     // 드라이버 등록
     public MemberDAO()
     {
    	 try
    	 {
    		 Class.forName("oracle.jdbc.driver.OracleDriver");
    	 }catch(Exception ex)
    	 {
    		 System.out.println(ex.getMessage());
    	 }
     }
     // 연결
     public void getConnection()
     {
    	 try
    	 {
    		 conn=DriverManager.getConnection(URL,"scott","tiger");
    	 }catch(Exception ex){}
     }
     // 해제
     public void disConnection()
     {
    	 try
    	 {
    		 if(ps!=null) ps.close();
    		 if(conn!=null) conn.close();
    		 // exit
    	 }catch(Exception ex){}
     }
	   
	// 로그인
	     public String isLogin(String id,String pwd)
	     {
	    	 String result="";
	    	 try
	    	 {
	    		 // 연결 
	    		 getConnection();
	    		 // SQL문장 작성
	    		 String sql="SELECT COUNT(*) FROM yoseksa_member "
	    				   +"WHERE member_id=?";

	    		 ps=conn.prepareStatement(sql);
	    		 ps.setString(2, id);
	    		 // SQL문장을 오라클 전송
	    		 ResultSet rs=ps.executeQuery();
	    		 // 결과값 받기
	    		 rs.next(); // first()
	    		 int count=rs.getInt(1);
	    		 rs.close();
	    		 ps.close();
	    		 /*
	    		  *   COUNT(*)
	    		  *   ========
	    		  *          0 (1) name pwd
	    		  */
	    		 // 커서의 위치 변경  next() ==> first()
	    		 //             previous() ==> last()
	    		 if(count==0) // ID가 없는 경우
	    		 {
	    			 result="NOID";
	    		 }
	    		 else // ID가 있는 경우
	    		 {
	    			 // 비밀번호가 체크 
	    			 sql="SELECT member_pw,nickname FROM yoseksa_member "
	    			    +"WHERE member_id=?";
	    			 
	    			 ps=conn.prepareStatement(sql);
	    			 ps.setString(2, id);
	    			 //===============================
	    			 rs=ps.executeQuery();
	    			 rs.next();
	    			 String db_pwd=rs.getString(2);
	    			 String nickname=rs.getString(4);
	    			 rs.close();
	    			 if(db_pwd.equals(pwd))
	    			 {
	    				 result=nickname;
	    			 }
	    			 else
	    			 {
	    				 result="NOPWD";
	    			 }
	    		 }
	    		 // 윈도우,브라우저에 전송 
	    		 
	    	 }catch(Exception ex)
	    	 {
	    		 System.out.println(ex.getMessage());
	    	 }
	    	 finally
	    	 {
	    		 disConnection();// 데이터베이스 종료
	    	 }
	    	 return result;
	     }
	     // 회원가입
	     public void memberInsert(MemberDTO m)
	     {
	    	  try
	    	  {
	    		  getConnection();
	    		  String sql="INSERT INTO yoseksa_member VALUES("
	    				    +"?,?,?,?,?,?,?)";
	    		  // "'"+m.getId()+"','"
	    		  ps=conn.prepareStatement(sql);
	    		  ps.setInt(1, m.getMember_no());
	    		  ps.setString(2, m.getMember_id());
	    		  ps.setString(3, m.getMember_pw());
	    		  ps.setString(4, m.getNickname());
	    		  //ps.setString(5, m.getBirth());
	    		  ps.setString(5, m.getEmail());
	    		  ps.setString(6, m.getMember_pic());
	    		  ps.executeUpdate();// UPDATE,INSERT,DELETE
	    		  // ==> COMMIT
	    	  }catch(Exception ex)
	    	  {
	    		  System.out.println(ex.getMessage());
	    	  }
	    	  finally
	    	  {
	    		  disConnection();
	    	  }
	     }
	     // ID체크
	     public boolean isIdCheck(String id)
	     {
	    	 boolean bCheck=false;
	    	 try
	    	 {
	    		 getConnection();
	    		 String sql="SELECT COUNT(*) FROM yoseksa_member "
	    				   +"WHERE member_id=?";
	    		 ps=conn.prepareStatement(sql);
	    		 ps.setString(2, id);
	    		 ResultSet rs=ps.executeQuery();
	    		 rs.next();
	    		 int count=rs.getInt(1);
	    		 rs.close();
	    		 if(count==0)
	    		 {
	    			 bCheck=true;
	    		 }
	    	 }catch(Exception ex)
	    	 {
	    		 System.out.println(ex.getMessage());
	    	 }
	    	 finally
	    	 {
	    		 disConnection();
	    	 }
	    	 return bCheck;
	     }
}
