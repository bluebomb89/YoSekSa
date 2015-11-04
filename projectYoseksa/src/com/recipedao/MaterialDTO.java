package com.recipedao;

public class MaterialDTO {
	private int recipe_no;
	private int material_no;
	private String material_content;
	private String material_gram;
	public int getRecipe_no() {
		return recipe_no;
	}
	public void setRecipe_no(int recipe_no) {
		this.recipe_no = recipe_no;
	}
	public int getMaterial_no() {
		return material_no;
	}
	public void setMaterial_no(int material_no) {
		this.material_no = material_no;
	}
	public String getMaterial_content() {
		return material_content;
	}
	public void setMaterial_content(String material_content) {
		this.material_content = material_content;
	}
	public String getMaterial_gram() {
		return material_gram;
	}
	public void setMaterial_gram(String material_gram) {
		this.material_gram = material_gram;
	}
}
