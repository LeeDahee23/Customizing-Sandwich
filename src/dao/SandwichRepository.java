package dao;

import java.util.ArrayList;
import dto.Order;

public class SandwichRepository {
	
	private ArrayList<Order> listOfSandwiches = new ArrayList<Order>();
	private static SandwichRepository instance = new SandwichRepository();
	
	public static SandwichRepository getInstance() {
		return instance;
	}
	public void addSandwich(Order sandwich) {
		listOfSandwiches.add(sandwich);
	}
	
	public SandwichRepository() {
		
	}
	
	public ArrayList<Order> getAllSandwiches(){
		return listOfSandwiches;
	}
	
	public Order getSandwichById(String sandwichId) {
		Order sandwichById = null;
		for(int i=0;i<listOfSandwiches.size();i++) {
			Order sandwich = listOfSandwiches.get(i);
			if(sandwich != null && sandwich.getSandwichId() != null && 
					sandwich.getSandwichId().contentEquals(sandwichId)) {
				sandwichById = sandwich;
				break;
			}
		}
		return sandwichById;
	}
}
