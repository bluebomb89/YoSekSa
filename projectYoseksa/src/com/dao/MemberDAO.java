package com.dao;
import java.sql.*;
import javax.sql.*;

import oracle.jdbc.OracleTypes;

import javax.naming.*;
import java.util.*;

public class MemberDAO {
	 private Connection conn;// ����Ŭ ���� 
     private PreparedStatement ps;// SQL����
     private final String URL="jdbc:oracle:thin:@localhost:1523:ORCL";
     // ����̹� ���
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
     // ����
     public void getConnection()
     {
    	 try
    	 {
    		 conn=DriverManager.getConnection(URL,"scott","tiger");
    	 }catch(Exception ex){}
     }
     // ����
     public void disConnection()
     {
    	 try
    	 {
    		 if(ps!=null) ps.close();
    		 if(conn!=null) conn.close();
    		 // exit
    	 }catch(Exception ex){}
     }
	   
	// �α���
	     public String isLogin(String id,String pwd)
	     {
	    	 String result="";
	    	 try
	    	 {
	    		 // ���� 
	    		 getConnection();
	    		 // SQL���� �ۼ�
	    		 String sql="SELECT COUNT(*) FROM yoseksa_member "
	    				   +"WHERE member_id=?";

	    		 ps=conn.prepareStatement(sql);
	    		 ps.setString(2, id);
	    		 // SQL������ ����Ŭ ����
	    		 ResultSet rs=ps.executeQuery();
	    		 // ����� �ޱ�
	    		 rs.next(); // first()
	    		 int count=rs.getInt(1);
	    		 rs.close();
	    		 ps.close();
	    		 /*
	    		  *   COUNT(*)
	    		  *   ========
	    		  *          0 (1) name pwd
	    		  */
	    		 // Ŀ���� ��ġ ����  next() ==> first()
	    		 //             previous() ==> last()
	    		 if(count==0) // ID�� ���� ���
	    		 {
	    			 result="NOID";
	    		 }
	    		 else // ID�� �ִ� ���
	    		 {
	    			 // ��й�ȣ�� üũ 
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
	    		 // ������,�������� ���� 
	    		 
	    	 }catch(Exception ex)
	    	 {
	    		 System.out.println(ex.getMessage());
	    	 }
	    	 finally
	    	 {
	    		 disConnection();// �����ͺ��̽� ����
	    	 }
	    	 return result;
	     }
	     // ȸ������
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
	     // IDüũ
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
