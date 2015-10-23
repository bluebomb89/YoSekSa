package com.recipedao;
import java.util.*;

public class RecipeDTO {
	private int recipe_no;
	private String recipe_sub;
	private String recipe_img;
	private String recipe_content;
	private String recipe_tip;
	private Date recipe_date;
	private int hit;
	public int getRecipe_no() {
		return recipe_no;
	}
	public void setRecipe_no(int recipe_no) {
		this.recipe_no = recipe_no;
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
	public String getRecipe_content() {
		return recipe_content;
	}
	public void setRecipe_content(String recipe_content) {
		this.recipe_content = recipe_content;
	}
	public String getRecipe_tip() {
		return recipe_tip;
	}
	public void setRecipe_tip(String recipe_tip) {
		this.recipe_tip = recipe_tip;
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
