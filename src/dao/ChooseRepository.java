package dao;

import java.util.ArrayList;
import dto.Order;

public class ChooseRepository {

	private ArrayList<Order> listOfSelectedSandwiches = new ArrayList<Order>();
	private static ChooseRepository instance = new ChooseRepository();
	
	public static ChooseRepository getInstance() {
		return instance;
	}
	public void addSandwich(Order sandwich) {
		listOfSelectedSandwiches.add(sandwich);
	}

	
	public ArrayList<Order> getAllSandwiches(){
		return listOfSelectedSandwiches;
	}
	
	public Order getSandwichById(String sandwichId) {
		Order sandwichById = null;
		for(int i=0;i<listOfSelectedSandwiches.size();i++) {
			Order sandwich = listOfSelectedSandwiches.get(i);
			if(sandwich != null && sandwich.getSandwichId() != null && 
					sandwich.getSandwichId().contentEquals(sandwichId)) {
				sandwichById = sandwich;
				break;
			}
		}
		return sandwichById;
	}
}
