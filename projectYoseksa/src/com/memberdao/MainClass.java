package com.memberdao;

import java.util.*;

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MemberDAO dao=new MemberDAO();
		List<MemberDTO> list=dao.memberAllData();
		for(MemberDTO d:list)
		{
			System.out.println(d.getMember_no()+" "+d.getMember_id()+" "+d.getMember_pw()+" "+d.getNickname()+" "+d.getMember_pic());
		}
	}
}