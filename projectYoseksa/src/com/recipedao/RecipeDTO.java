package com.recipedao;
import java.util.*;

import com.memberdao.MemberDTO;
import com.recipedao.*;
public class RecipeDTO {
   public MemberDTO mdto=new MemberDTO();
   private int recipe_no;
   private int board_no;
   private int  kind_no;
   private int situ_no;
   private int how_no;
   private int jaeryo_no;
   private int member_no;
   private String recipe_sub;
   private String recipe_img;
   private Date recipe_date;
   private int hit;
   public int getRecipe_no() {
      return recipe_no;
   }
   public void setRecipe_no(int recipe_no) {
      this.recipe_no = recipe_no;
   }
   public int getBoard_no() {
      return board_no;
   }
   public void setBoard_no(int board_no) {
      this.board_no = board_no;
   }
   public int getKind_no() {
      return kind_no;
   }
   public void setKind_no(int kind_no) {
      this.kind_no = kind_no;
   }
   public int getSitu_no() {
      return situ_no;
   }
   public void setSitu_no(int situ_no) {
      this.situ_no = situ_no;
   }
   public int getHow_no() {
      return how_no;
   }
   public void setHow_no(int how_no) {
      this.how_no = how_no;
   }
   public int getJaeryo_no() {
      return jaeryo_no;
   }
   public void setJaeryo_no(int jaeryo_no) {
      this.jaeryo_no = jaeryo_no;
   }
   public int getMember_no() {
      return member_no;
   }
   public void setMember_no(int member_no) {
      this.member_no = member_no;
   }
   public String getRecipe_sub() {
      return recipe_sub;
   }
   public void setRecipe_sub(String recipe_sub) {
      this.recipe_sub = recipe_sub;
   }
   public String getRecipe_img() {
      return recipe_img;
   }
   public void setRecipe_img(String recipe_img) {
      this.recipe_img = recipe_img;
   }
   public Date getRecipe_date() {
      return recipe_date;
   }
   public void setRecipe_date(Date recipe_date) {
      this.recipe_date = recipe_date;
   }
   public int getHit() {
      return hit;
   }
   public void setHit(int hit) {
      this.hit = hit;
   }
   
   
}