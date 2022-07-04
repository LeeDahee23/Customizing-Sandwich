package dto;

import java.util.ArrayList;
import java.io.Serializable;

public class Order implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;

	private String sandwichName;
	private String sandwichId;
	private String menu;
	private String bread;
	private String cheese;
	private String vegetable;
	private String sauce;
	private String set;
	private Integer unitPrice;
	private String filename;
	private int quantity;
	
	public Order() { // ������
		super();
	}
	
	public Order(String sandwichId) {
		this.sandwichId = sandwichId;
	}
	//������ġ�̸�(�޴� + "������ġ" + ��Ʈ����)
	public String getSandwichName() {
		return sandwichName;
	}
	public void setSandwichName(String sandwichName) {
		this.sandwichName = sandwichName;
	}
	//������ġ id
	public String getSandwichId() {
		return sandwichId;
	}
	public void setSandwichId(String sandwichId) {
		this.sandwichId = sandwichId;
	}
	//����
	public Integer getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(String menu, String set) {
		if(menu == "menu_veggie")
			this.unitPrice = 3000;
		if(menu == "menu_eggmayo")
			this.unitPrice = 3500;
		if(menu == "menu_turkey")
			this.unitPrice = 4000;
		if(menu == "menu_shrimp")
			this.unitPrice = 4500;
		if(menu == "menu_bmt")
			this.unitPrice = 5000;
		if(set == "set_set")
			this.unitPrice += 1900;
	}
	//�޴�
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	//��
	public String getBread() {
		return bread;
	}
	public void setBread(String bread) {
		this.bread = bread;
	}
	//ġ��
	public String getCheese() {
		return cheese;
	}
	public void setCheese(String cheese) {
		this.cheese = cheese;
	}
	//��ä########
	public String getVegetable() {
		return vegetable;
	}
	public void setVegetable(String vegetable) {
		this.vegetable = vegetable;
	}
	//�ҽ�############
	public String getSauce() {
		return sauce;
	}
	public void setSauce(String sauce) {
		this.sauce = sauce;
	}
	//��Ʈ ����
	public String getSet() {
		return set;
	}
	public void setSet(String set) {
		this.set = set;
	}
	//����
	public String getFilename() {
		return filename;
	}
	
	public void setFilename(String filename) {
		this.filename = filename;
	}
	//��ٱ��� ���� ����
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
