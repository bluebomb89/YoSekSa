package com.recipedao;

public class SourceDTO {
	private int recipe_no;
	private int source_no;
	private String source_content;
	private String source_gram;
	public int getRecipe_no() {
		return recipe_no;
	}
	public void setRecipe_no(int recipe_no) {
		this.recipe_no = recipe_no;
	}
	public int getSource_no() {
		return source_no;
	}
	public void setSource_no(int source_no) {
		this.source_no = source_no;
	}
	public String getSource_content() {
		return source_content;
	}
	public void setSource_content(String source_content) {
		this.source_content = source_content;
	}
	public String getSource_gram() {
		return source_gram;
	}
	public void setSource_gram(String source_gram) {
		this.source_gram = source_gram;
	}
	
}
